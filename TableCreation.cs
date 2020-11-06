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
using Android.Views.InputMethods;
using Android.Widget;
using Xamarin.Essentials;

namespace Datafine
{
    [Activity(Label = "TableCreation")]
    public class TableCreation : AppCompatActivity
    {

        EditText tableName, tableDescription;
        ImageButton doneButton;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_creation_page);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = "Create New Table";
            //SupportActionBar.SetDisplayShowHomeEnabled(true);
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            //once the data is collected from here, put extra the entries, move on to the next activity page 2, get that info and retrieve this info, then evaluate
            tableName = FindViewById<EditText>(Resource.Id.tableCreate_Name);
            tableDescription = FindViewById<EditText>(Resource.Id.tableCreate_Description);
            doneButton = FindViewById<ImageButton>(Resource.Id.addTable_btnSave);


            doneButton.Click += DoneButton_Click;
            Preferences.Set("table_name", tableName.Text);




        }

        private void DoneButton_Click(object sender, EventArgs e)
        {
            //put the names into the preference and retrieve them
            if (tableName.Text.Length != 0 || tableDescription.Text.Length != 0)
            {
                SetPrefs("table_name", tableName.Text);
                SetPrefs("table_description", tableDescription.Text);
            }
            else
            {
                Toast.MakeText(this, "Table Name and Description can't be empty!", ToastLength.Short).Show();
            }

            Intent intent = new Intent(this, typeof(TableCreation2));
            StartActivity(intent);

            /*string getTableName = GetPrefs("table_name");
            string getTableDescription = GetPrefs("table_description");


            //affirm it's working
            Toast.MakeText(this, "TableName: " + getTableName + "\nTableDescription: " + getTableDescription, ToastLength.Long).Show();
*/

        }


        //set the prefrence
        private void SetPrefs(string name, string value)
        {
            Preferences.Set(name, value);
        }

        //get the preference
        private string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
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