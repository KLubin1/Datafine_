using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;
using Xamarin.Essentials;
using AlertDialog = Android.App.AlertDialog;

namespace Datafine
{
    [Activity(Label = "TableModifyPage")]
    public class TableModifyPage : AppCompatActivity
    {
        ListView listview;
        IList<TableInfo> tables = null;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_list_modify_layout);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);
            //the title will be set according to action key, which wil require an eval of action key
            SetToolbarTitle();
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            listview = FindViewById<ListView>(Resource.Id.tableModify_ListView);

            //inflate the tables
            DBHelper dbVals = new DBHelper(this);
            //load data
            tables = dbVals.GetAllTables();

            //set the list adapter
            listview.Adapter = new TableListAdapter(this, tables);

            //long click event for items in list
            listview.ItemClick += OnClickByActionKey;

        }

        private void OnClickByActionKey(object o, AdapterView.ItemClickEventArgs e)
        {

            //this will get the string key for a certain set of actions through this switch statement
            /*
             * Quick Reference for NavDrawers' ActionKey:
             * 1 - Delete
             * 2 - Upload
             * 3 - Download
             * 4 - Share
             * 5 - Export
             * Don't forget to reset the key after an item is clicked.
             */

            string actionKey = GetPrefs("action_key");

            switch (actionKey)
            {
                case "1":
                    //delete
                    var selectedItem = tables[e.Position];
                    DBHelper db = new DBHelper(this);
                    //alert dialog to confirm and execute deletion
                    AlertDialog.Builder builder = new AlertDialog.Builder(this);
                    AlertDialog confirm = builder.Create();
                    confirm.SetTitle("Confirm Deletion");
                    confirm.SetMessage("You are about to delete an entire table. Are you sure?");
                    confirm.SetButton("Yes", (sender, ev) =>
                    {
                        //get the position of the deletion was called and delete the view, then finally, delete the actual entry
                        var poldel = sender;

                        tables.Remove(selectedItem);

                        db.DeleteTable(selectedItem.tableName.ToString());
                        //delete also shared prefs info of that table
                        DeletePrefs(selectedItem.tableName.ToString());

                        StartActivity(typeof(MainActivity));
                        Toast.MakeText(this, "Table Deleted Succesfully!", ToastLength.Long).Show();

                    });
                    confirm.SetButton2("Nope", (sender, ev) =>
                    {

                    });

                    confirm.Show();
                    break;
                case "2":
                    break;
                case "3":
                    break;
                case "4":
                    break;
                case "5":
                    //TODO: export tables handler
                    break;
                default:
                    break;
            }


        }

        private void SetToolbarTitle()
        {
            string actionKey = GetPrefs("action_key");

            switch (actionKey)
            {
                case "1":
                    SupportActionBar.Title = "Delete Table";
                    break;
                case "2":
                    SupportActionBar.Title = "Upload Tables";
                    break;
                case "3":
                    SupportActionBar.Title = "Download Tables";
                    break;
                case "4":
                    SupportActionBar.Title = "Share Tables";
                    break;
                case "5":
                    SupportActionBar.Title = "Export Tables";
                    break;
                default:
                    SupportActionBar.Title = "View";
                    break;
            }
        }

        //get the preference
        private string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
        }

        //set the preference
        private void SetPrefs(string name, string value)
        {
            Preferences.Set(name, value);
        }

        private void DeletePrefs(string tableName)
        {
            //Delete table metadata via its name:
            // - table description
            // - table created
            // - table dom col

            Preferences.Remove(tableName + "_table_description");
            Preferences.Remove(tableName + "_table_created");
            Preferences.Remove(tableName + "_dom_col");
        }

        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            switch (item.ItemId)
            {
                case Android.Resource.Id.Home:
                    Finish();
                    return true;

                default:
                    return base.OnOptionsItemSelected(item);
            }
        }


    }

}