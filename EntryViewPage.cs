﻿using System;
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
    public class EntryViewPage : AppCompatActivity
    {
        ListView listView;
        IList<EntryInfo> itemList = null;
        TextView suchEmpty;
        SearchView search;
        
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.entry_view_layout);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = "TableOne";
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);
            
            //floating action bar to add new entries
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



            //test out search term change effect
            string searchTerm = GetSetting("search_type", Application.Context);

            //ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(Application.Context);
            //string searchTerm = prefs.GetString("search_type", "1");

            switch (searchTerm)
            {
                case "2":
                    //tSetting("search_type", "2");
                    Toast.MakeText(Application.Context, "Search Term is set to Location", ToastLength.Short).Show(); ;
                    break;
                case "3":
                    //tSetting("search_type", "3");
                    Toast.MakeText(this, "Search Term is set to Age", ToastLength.Short).Show(); ;
                    break;
                case "4":
                    //tSetting("search_type", "4");
                    Toast.MakeText(this, "Search Term is set to Id", ToastLength.Short).Show();
                    break;

                default:
                    Toast.MakeText(this, "Search Term is set to Name", ToastLength.Short).Show();
                    break;


            }

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
            listView.Adapter = new EntryListAdapter(this, itemList);

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
            editor.PutBoolean("UpgradeFlag", false);
            

            //set and launch the popup menu 
            var commandControl = new Android.Widget.PopupMenu(this, (View)sender);
            commandControl.Inflate(Resource.Menu.command_control);
            commandControl.Show();

            commandControl.MenuItemClick += (s, a) =>
            {
                switch (a.Item.ItemId)
                {
                    case Resource.Id.cc_Edit:
                        var intent = new Intent(this, typeof(EntryCreation));

                        //this is "saving" the id so to refer back to this entry in the table creation page on update
                        intent.PutExtra("Id", selectedItem.id.ToString());
                        //set the flag to true to activate update functionality in table creation
                        editor.PutBoolean("UpgradeFlag", true);
                        editor.Apply();
                        StartActivity(intent);
                        break;
                    case Resource.Id.cc_Delete:
                        //delete entry from position
                        DeleteEntry(e.Position);
                        break;
                }
            };

        }

        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            //launch the creation page
            Intent intent = new Intent(this, typeof(EntryCreation));
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

                this.Recreate();
                Toast.MakeText(this, "Contact Deleted Succesfully!", ToastLength.Long).Show();

            });
            confirm.SetButton2("Cancel", (sender, ev) =>
            {

            });

            confirm.Show();

        }

        private void Search(object s, SearchView.QueryTextChangeEventArgs e)
        {
            //same as code in LoadEntries, but for getting entries via search bar
            //just to keep in mind, search can only be done by the name as of now
            DBHelper dbVals = new DBHelper(this);
            string searchTerm = e.NewText.ToString();
            itemList = dbVals.GetContactsBySearchName(searchTerm);
            listView.Adapter = new EntryListAdapter(this, itemList);
            listView.ItemLongClick += listView_ItemLongClick;

        }

        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            //create options menu
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            return true;

        }

        //for the back button toolbar and the other toolbar options
        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            switch (item.ItemId)
            {
                case Android.Resource.Id.Home:
                    Finish();
                    return true;

                case Resource.Id.action_settings:
                    return true;

                case Resource.Id.action_about:
                    return true;

                case Resource.Id.action_home:
                    StartActivity(typeof(MainActivity));
                    return true;
                default:
                    return base.OnOptionsItemSelected(item);
            }
        }
       
        //for the back button function
        public override void OnBackPressed()
        {
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            
            base.OnBackPressed();
        }


        //get string-based settings
        public string GetSetting(string key, Context context)
        {
            ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(context);
            return prefs.GetString(key, null);
        }
        public void SetSetting(string key, string value, Context context)
        {
            ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(context);
            ISharedPreferencesEditor editor = prefs.Edit();
            editor.PutString(key, value);
            editor.Commit();
        }
    }
}