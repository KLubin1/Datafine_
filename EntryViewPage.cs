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
using Xamarin.Essentials;

namespace Datafine
{
    [Activity(Label = "TableViewPage")]
    public class EntryViewPage : AppCompatActivity
    {
        ListView listView;
        IList<EntryInfo> itemList = null;
        TextView suchEmpty;
        SearchView search;
        ImageButton cc;


        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.entry_view_layout);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = GetPrefs("SelectedTable");
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);
            
            //floating action bar to add new entries
            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.addEntryFab);
            listView = FindViewById<ListView>(Resource.Id.tableListView);
            suchEmpty = FindViewById<TextView>(Resource.Id.suchEmptyEntry);

            //for the image button for cc
            //TODO: for some reason this stays null. 
            //this is the reason for the id looping issue.
           // cc = FindViewById<ImageButton>(Resource.Id.lr_ccBtn);

            //search bar
            search = FindViewById<SearchView>(Resource.Id.entrySearchView);
            search.SetQueryHint("Search Entries");
            search.QueryTextChange += Search;

            //load entries
            fab.Click += FabOnClick;
            LoadEntries();

            //test out search term change effect
            string searchTerm = GetSetting("search_type", Application.Context);

            //set upgrade to false by default
            ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
            ISharedPreferencesEditor editor = sharedPreferences.Edit();
            editor.PutBoolean("UpgradeFlag", false);
            editor.Apply();

        }


        //load entries unto the listview
        private void LoadEntries()
        {
            DBHelper dbVals = new DBHelper(this);
            //load data
            itemList = dbVals.GetAllEntries();

            if (itemList.Count == 0)
            {
                //add a message saying the database is empty; make a entry to start 
                suchEmpty.Visibility = ViewStates.Visible;
            }

            //set the lisy adapter
            listView.Adapter = new EntryListAdapter(this, itemList);


            //long click event for items in list
            //listView.ItemLongClick += listView_ItemLongClick;
            listView.ItemClick += ListView_ItemClick;
            
        }

        private void ListView_ItemClick(object sender, AdapterView.ItemClickEventArgs e)
        {
            //set and launch the popup menu 
           

            var selectedItem = itemList[e.Position];

            Preferences.Set("CurPos", e.Position);


            DBHelper db = new DBHelper(this);

            //disable the pop-up menu if read-only is enabled

            ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(Application.Context);
            bool readOnly = prefs.GetBoolean("read_only", false);
            //if read-only is false, then execute code like normal...
            if (readOnly == false)
            {
                //shared preferences to make a flag to direct the upgrade functionality in TableCreation
                //ISharedPreferences sharedPreferences = PreferenceManager.GetDefaultSharedPreferences(this);
                ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
                ISharedPreferencesEditor editor = sharedPreferences.Edit();
                editor.PutBoolean("UpgradeFlag", false);

                var commandControl = new Android.Widget.PopupMenu(this, (View)sender);
                commandControl.Inflate(Resource.Menu.command_control);
                commandControl.Show();
                Console.WriteLine(e.Position);

                commandControl.MenuItemClick += (se, ee) =>
                {
                    switch (ee.Item.ItemId)
                    {
                        case Resource.Id.cc_Edit:
                            var intent = new Intent(this, typeof(EntryCreation));

                            //this is "saving" the id so to refer back to this entry in the table creation page on update
                            intent.PutExtra("Id", selectedItem.id.ToString());
                            //set the flag to true to activate update functionality in table creation
                            //testing with prefs
                            Preferences.Set("OnEdit", selectedItem.id.ToString());
                            editor.PutBoolean("UpgradeFlag", true);
                            editor.Apply();
                            StartActivity(intent);
                            break;
                        case Resource.Id.cc_Delete:
                            //delete entry from position
                            DeleteEntry(e.Position);
                            break;
                        case Resource.Id.cc_ViewInfo:
                            //handle full data of entry
                            StartActivity(typeof(TableDescriptionPage));
                            break;
                    }
                };
            }

            else
            {
                //...do nothing
                //include a banner that says something along the lines of "read-only is enabled"
                Toast.MakeText(this, "Read-Only is Enabled", ToastLength.Long).Show();
            }

        }

    

        //for cc testing
        private void Cc_Click(object sender, AdapterView.ItemClickEventArgs e)
        {
            var f = listView.SelectedItemPosition;
            Console.WriteLine(f);
        }


        //pulls up popup memu options for editing data in listview on long click

        private void listView_ItemLongClick(object sender, AdapterView.ItemLongClickEventArgs e)
        {
        }


        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            //launch the creation page
            ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(Application.Context);
            bool readOnly = prefs.GetBoolean("read_only", false);

            //if readonly isn't enabled execute like normal, otherwise let user know it's on readonly mode
            if(readOnly == false)
            {
                Intent intent = new Intent(this, typeof(EntryCreation));
                StartActivity(intent);
            }
            else
            {
                Toast.MakeText(this, "Read-Only is Enabled", ToastLength.Long).Show();
            }
            

        }

        public void DeleteEntry(int position)
        {
            var selectedItem = itemList[position];
            Console.WriteLine("Current position->" + itemList[position]);
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
                Toast.MakeText(this, "Entry Deleted Succesfully!", ToastLength.Long).Show();

            });
            confirm.SetButton2("Cancel", (sender, ev) =>
            {

            });

            confirm.Show();

        }

        private void Search(object s, SearchView.QueryTextChangeEventArgs e)
        {
            //same as code in LoadEntries, but for getting entries via search bar

            //get settings
            ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(Application.Context);
            string searchType = prefs.GetString("search_type", null);
            
            DBHelper dbVals = new DBHelper(this);
            string searchTerm = e.NewText.ToString();
            //switch between the columns searchTerm; by default it's based on column1
            switch (searchType)
            {
                case "1":
                    itemList = dbVals.GetContactsByColumn1(searchTerm);
                    break;
                case "2":
                    itemList = dbVals.GetContactsByColumn2(searchTerm);
                    break;
                case "3":
                    itemList = dbVals.GetContactsByColumn3(searchTerm);
                    break;
                case "4":
                    itemList = dbVals.GetContactsByColumn4(searchTerm);
                    break;
                default:
                    itemList = dbVals.GetContactsByColumn1(searchTerm);
                    break;
            }

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
            //clear all previous views so that MainActivity is the only open activity
            var intent = new Intent(this, typeof(MainActivity));
            intent.SetFlags(ActivityFlags.ClearTop);
            switch (item.ItemId)
            {
                case Android.Resource.Id.Home:
                    Finish();
                    StartActivity(intent);
                    return true;

                case Resource.Id.action_settings:
                    StartActivity(typeof(Settings));
                    return true;

                case Resource.Id.action_about:
                    StartActivity(typeof(About));
                    return true;

                case Resource.Id.action_home:
                    Finish();
                    StartActivity(intent);

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
            Finish();

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

        //get the preference
        private string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
        }
    }
}