﻿using System;
using System.Collections.Generic;
using Android;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Preferences;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Support.V4.View;
using Android.Support.V4.Widget;
using Android.Support.V7.App;
using Android.Support.V7.Widget;
using Android.Views;
using Android.Widget;
using AlertDialog = Android.Support.V7.App.AlertDialog;
using Xamarin.Essentials;

namespace Datafine
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher =false)]
    public class MainActivity : AppCompatActivity, NavigationView.IOnNavigationItemSelectedListener
    {
        //list that holds the list of databases
        Button tableButton;
        TextView helloUser;
        TextView suchEmpty;
        IList<TableInfo> tableList = null;
        ListView tableListView;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);


            //launch create new table page
            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.fab);
            fab.Click += FabOnClick;

            //nav drawer for table manipulation
            DrawerLayout drawer = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);
            ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawer, toolbar, Resource.String.navigation_drawer_open, Resource.String.navigation_drawer_close);
            drawer.AddDrawerListener(toggle);
            toggle.SyncState();
            NavigationView navigationView = FindViewById<NavigationView>(Resource.Id.nav_view);
            navigationView.SetNavigationItemSelectedListener(this);

            //listView
            tableListView = FindViewById<ListView>(Resource.Id.tableListViewMain);

            //button for table launch simulation
            //tableButton = FindViewById<Button>(Resource.Id.tableButton);
            //launch the table view page
            //tableButton.Click += TableButtonLaunch;
            //tableButton.LongClick += TableButtonDetails;

            //such empty
            suchEmpty = FindViewById<TextView>(Resource.Id.suchEmptyTable);

            if (GetPrefs("table_name") == null)
            {
                //tableButton.Visibility = ViewStates.Invisible;
                suchEmpty.Visibility = ViewStates.Visible;
            }

            else
            {
                //tableButton.Visibility = ViewStates.Visible;
                suchEmpty.Visibility = ViewStates.Invisible;
            }


            //tableButton.Text = GetPrefs("table_name");

            LoadTables();

        }

        //should perform as LoadEntries, but for tables
        public void LoadTables()
        {
            DBHelper dbVals = new DBHelper(this);
            //load data
            tableList = dbVals.GetAllTables();

            if (tableList.Count == 0)
            {
                //add a message saying the database is empty; make a entry to start 
                suchEmpty.Visibility = ViewStates.Visible;
            }

            //set the list adapter
            tableListView.Adapter = new TableViewAdapter(this, tableList);

            //long click event for items in list
            tableListView.ItemClick += TableListView_ItemClick;
        }

        //same as what was for the table
        private void TableListView_ItemClick(object sender, AdapterView.ItemClickEventArgs e)
            {
                // if the tablename is null, its empty, dont go to entries, it will crash
                if (GetPrefs("table_name") != null)
                {
                    //if the modififiable password flag is true, ask for password first
                    ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(Application.Context);
                    string password_viewable = prefs.GetString("set_password", null);
                    if (password_viewable == "3" || password_viewable == "4")
                    {
                        //open dialog
                        PasswordRequest request = new PasswordRequest();
                        request.Show(SupportFragmentManager, "Password Request");
                    }
                    else
                    {
                        //launch the table entry's page
                        var intent = new Intent(this, typeof(EntryViewPage));
                        StartActivity(intent);
                    }
                }

                //get the table selected and save it in a prefs
            TableInfo table = tableList[e.Position];
            SetPrefs("SelectedTable", table.tableName.ToString());


            Toast.MakeText(this, "Table selected = " + table.tableName.ToString(), ToastLength.Short).Show();
            }

        public override void OnBackPressed()
        {
            //just additional code to close the nav drawer if its open 
            DrawerLayout drawer = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);

            if (drawer.IsDrawerOpen(GravityCompat.Start))
            {
                
                drawer.CloseDrawer(GravityCompat.Start);
            }
            else
            {
                base.OnBackPressed();
            }
        }

        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            //create options menu
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            helloUser = FindViewById<TextView>(Resource.Id.hello_user);
            helloUser.Text = "Hello, " + GetPrefs("hello_user");
            return true;
        }

        //handler for the options menu; to be addeed later
        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("loggingSession", FileCreationMode.Private);
            ISharedPreferencesEditor editor = sharedPreferences.Edit();

            int id = item.ItemId;
            if (id == Resource.Id.action_settings)
            {
                Intent intent = new Intent(this, typeof(Settings));
                StartActivity(intent);
            }

            if (id == Resource.Id.action_about)
            {
                StartActivity(typeof(About));
                return true;
            }
            if (id == Resource.Id.action_logout)
            {
                editor.PutBoolean("loggedIn", false);
                editor.Commit();
                Finish(); //*but will only finish last activity 
            }
            if (id == Resource.Id.action_home)
            {
                StartActivity(typeof(MainActivity));
            }

            return base.OnOptionsItemSelected(item);
        }

        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            /*View view = (View) sender;
            Snackbar.Make(view, "Add database", Snackbar.LengthLong)
                .SetAction("Action", (Android.Views.View.IOnClickListener)null).Show();*/

            //launch table creation page
            Intent intent = new Intent(this, typeof(TableCreation));
            StartActivity(intent);

            

        }

        public bool OnNavigationItemSelected(IMenuItem item)
        {
            

            int id = item.ItemId;


            if (id == Resource.Id.nav_add)
            {

                //launch table creation page
                Intent intent = new Intent(this, typeof(TableCreation));
                StartActivity(intent);
            }
            else if (id == Resource.Id.nav_delete)
            {
                //handle the delete action
                Toast.MakeText(this, "Under Construction", ToastLength.Short).Show();
            }
            else if (id == Resource.Id.nav_upload)
            {
                //handle the upload action
                Toast.MakeText(this, "Under Construction", ToastLength.Short).Show();
            }
            else if (id == Resource.Id.nav_download)
            {
                //handle the download action
                Toast.MakeText(this, "Under Construction", ToastLength.Short).Show();
            }
            else if (id == Resource.Id.nav_share)
            {
                //handle the share action
                Toast.MakeText(this, "Under Construction", ToastLength.Short).Show();
            }
            else if (id == Resource.Id.nav_export)
            {
                //handle the export action
                Toast.MakeText(this, "Under Construction", ToastLength.Short).Show();
            }
            else if (id == Resource.Id.nav_setting)
            {
                //handle the settings
                StartActivity(typeof(Settings));
            }

            DrawerLayout drawer = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);
            drawer.CloseDrawer(GravityCompat.Start);
            return true;
        }

        public void TableButtonLaunch(object sender, EventArgs eventArgs)
        {
            // if the tablename is null, its empty, dont go to entries, it will crash
            if(GetPrefs("table_name")  != null)
            {
                //if the modififiable password flag is true, ask for password first
                ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(Application.Context);
                string password_viewable = prefs.GetString("set_password", null);
                if (password_viewable == "3" || password_viewable == "4")
                {
                    //open dialog
                    PasswordRequest request = new PasswordRequest();
                    request.Show(SupportFragmentManager, "Password Request");
                }
                else
                {
                    //launch the table entry's page
                    var intent = new Intent(this, typeof(EntryViewPage));
                    StartActivity(intent);
                }
            }
                //do nothing, just let the user know table is empty

            
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        //launch description page
        private void TableButtonDetails(object o, View.LongClickEventArgs e)
        {
            var intent = new Intent(this, typeof(TableDescriptionPage));
            StartActivity(intent);
        }

        //get the preference
        private string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
        }

        //get the preference
        private void SetPrefs(string name, string value)
        {
            Preferences.Set(name, value);
        }
    }
}

