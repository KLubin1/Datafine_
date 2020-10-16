using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Preferences;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Views;
using Android.Widget;
using Android.Support.V7.App;
using AlertDialog = Android.App.AlertDialog;

namespace Datafine
{
    [Activity(Label = "TableViewPage")]
    public class TableViewPage : AppCompatActivity
    {
        ListView listView;
        IList<TableInfo> itemList = null;
        TextView suchEmpty;
        SearchView search;
        
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_view_layout);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = "TableOne";
            SupportActionBar.SetDisplayShowHomeEnabled(true);
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);
            
            

            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.addEntryFab);
            listView = FindViewById<ListView>(Resource.Id.tableListView);
            suchEmpty = FindViewById<TextView>(Resource.Id.suchEmptyEntry);

            //search bar
            search = FindViewById<SearchView>(Resource.Id.entrySearchView);
            search.SetQueryHint("Search Entries");
            search.QueryTextChange += Search;

            //load entries
            fab.Click += FabOnClick;
            LoadEntries();

        }

        //load entries unto the listview
        private void LoadEntries()
        {
            DBHelper dbVals = new DBHelper(this);
            //load data
            itemList = dbVals.GetAllContacts();

            if (itemList.Count == 0)
            {
                //add a message saying the database is empty; make a entry to start 
                suchEmpty.Visibility = ViewStates.Visible;

            }

            //set the lisy adapter
            listView.Adapter = new TableListAdapter(this, itemList);

            //long click event for items in list
            listView.ItemLongClick += listView_ItemLongClick;
        }


        //pulls up popup memu options for editing data in listview on long click
        
        private void listView_ItemLongClick(object sender, AdapterView.ItemLongClickEventArgs e)
        {
            var selectedItem = itemList[e.Position];
            DBHelper db = new DBHelper(this);

            //shared preferences to make a flag to direct the upgrade functionality in TableCreation
            //ISharedPreferences sharedPreferences = PreferenceManager.GetDefaultSharedPreferences(this);
            ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
            ISharedPreferencesEditor editor = sharedPreferences.Edit();
            

            var commandControl = new Android.Widget.PopupMenu(this, (View)sender);
            commandControl.Inflate(Resource.Menu.command_control);
            commandControl.Show();

            commandControl.MenuItemClick += (s, a) =>
            {
                switch (a.Item.ItemId)
                {
                    case Resource.Id.cc_Edit:
                        var intent = new Intent(this, typeof(TableCreation));

                        //this is "saving" the id so to refer back to this entry in the table creation page on update
                        intent.PutExtra("Id", selectedItem.id.ToString());
                        //set the flag 
                        editor.PutBoolean("UpgradeFlag", true);
                        editor.Apply();
                        StartActivity(intent);
                        break;
                    case Resource.Id.cc_Delete:
                        DeleteEntry(e.Position);
                        break;
                }
            };


            //maybe have a toggle function instead?
            /*starButton.Enabled = true;
            editButton.Enabled = true;
            deleteButton.Enabled = true;
            moveButton.Enabled = true;*/

        }

        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            Intent intent = new Intent(this, typeof(TableCreation));
            StartActivity(intent);

        }

        public void DeleteEntry(int position)
        {
            var selectedItem = itemList[position];
            DBHelper db = new DBHelper(this);
            //alert dialog to confirm and execute deletion
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            AlertDialog confirm = builder.Create();
            confirm.SetTitle("Confirm Deletion");
            confirm.SetMessage("Delete Entry?");
            confirm.SetButton("OK", (sender, ev) =>
            {
                //get the position of the deletion was called and delete the view, then finally, delete the actual entry
                var poldel = sender;

                itemList.Remove(selectedItem);

                db.DeleteContact(selectedItem.id.ToString());
                // NotifyDataSetChanged();

                Toast.MakeText(this, "Contact Deleted", ToastLength.Short).Show();

                //Finish();
                this.Recreate();
            });
            confirm.SetButton2("Cancel", (sender, ev) =>
            {

            });

            confirm.Show();

        }

        private void Search(object s, SearchView.QueryTextChangeEventArgs e)
        {
            //same as code in LoadEntries, but for getting entries via search bar
            DBHelper dbVals = new DBHelper(this);
            string searchTerm = e.NewText.ToString();
            itemList = dbVals.GetContactsBySearchName(searchTerm);
            listView.Adapter = new TableListAdapter(this, itemList);
            listView.ItemLongClick += listView_ItemLongClick;


        }
    }
}