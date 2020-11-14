using System;
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

            //button for table launch simulation
            tableButton = FindViewById<Button>(Resource.Id.tableButton);
            //launch the table view page
            tableButton.Click += TableButtonLaunch;
            tableButton.LongClick += TableButtonDetails;


            //listView = FindViewById<ListView>(Resource.Id.databaseListView);
            //populate with dummy data
            //itemList = new List<DatabaseInfo>();
            //DatabaseInfo dummy = new DatabaseInfo("Dummy Database", now.ToString(),"This is a test database.");
            //itemList.Add(dummy);

            //list databases
            //listView.Adapter = new TableListAdapter(this, itemList);
            //execute on click; launch the entries OnClick and start new activity that shows database entries
            //listView.ItemClick += delegate (object sender, AdapterView.ItemClickEventArgs args)
            //{
            // Toast.MakeText(this, "To be Databased", ToastLength.Short).Show();
            //};


            tableButton.Text = GetPrefs("table_name");
        }

        public override void OnBackPressed()
        {
            //just additional code to close the nav drawer if its open 
            DrawerLayout drawer = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);
            if(drawer.IsDrawerOpen(GravityCompat.Start))
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
                return true;
            }
            if (id == Resource.Id.action_logout)
            {
                editor.PutBoolean("loggedIn", false);
                editor.Commit();
                Finish();
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

            }
            else if (id == Resource.Id.nav_upload)
            {
                //handle the upload action
            }
            else if (id == Resource.Id.nav_download)
            {
                //handle the download action
            }
            else if (id == Resource.Id.nav_share)
            {
                //handle the share action
            }
            else if (id == Resource.Id.nav_export)
            {
                //handle the export action
            }
            else if (id == Resource.Id.nav_setting)
            {
                //handle the settings
            }

            DrawerLayout drawer = FindViewById<DrawerLayout>(Resource.Id.drawer_layout);
            drawer.CloseDrawer(GravityCompat.Start);
            return true;
        }

        public void TableButtonLaunch(object sender, EventArgs eventArgs)
        {
            //if the modififiable password flag is true
            //ask for password first
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
    }
}

