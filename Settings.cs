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
using AndroidX.Preference;
using AndroidX.Fragment;
using Preference = Android.Preferences;
using Android.Preferences;

namespace Datafine
{
    [Activity(Label = "Settings")]
    public class Settings : AppCompatActivity
    {

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.settings_layout);
            //AddPreferencesFromResource(Resource.Xml.settings_screen);


            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);
            SupportActionBar.Title = "Settings";
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            //Create your application here
            SettingsFragment sf = new SettingsFragment();
            FragmentTransaction fm = FragmentManager.BeginTransaction();
            fm.Replace(Resource.Id.pref_container, sf).Commit();



            //test out search term change effect
           /* string searchTerm = GetSetting("search_type");

            switch (searchTerm)
            {
                case "2":
                    Toast.MakeText(this, "Search Term is set to Location", ToastLength.Short).Show();
                    break;
                case "3":
                    Toast.MakeText(this, "Search Term is set to Age", ToastLength.Short).Show();
                    break;
                case "4":
                    Toast.MakeText(this, "Search Term is set to Id", ToastLength.Short).Show();
                    break;

                default:
                    Toast.MakeText(this, "Search Term is set to Name", ToastLength.Short).Show();
                    break;


            }*/
            //createPassword = FindPreference("create_password");

            //createPassword.PreferenceClick += CreatePassword_PreferenceClick;
        }

        private void CreatePassword_PreferenceClick(object sender, Preference.Preference.PreferenceClickEventArgs e)
        {
            Toast.MakeText(this, "Create Password", ToastLength.Short);
        }

        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            switch (item.ItemId)
            {
                case Android.Resource.Id.Home:
                    StartActivity(typeof(MainActivity));
                    return true;

                default:
                    return base.OnOptionsItemSelected(item);
            }
        }

        //get string-based settings
        public string GetSetting(string key)
        {
            ISharedPreferences prefs = Application.Context.GetSharedPreferences(key, FileCreationMode.Private);
            return prefs.GetString(key, null);
        }
        public void SetSetting(string key, string value)
        {  
            ISharedPreferences prefs = Application.Context.GetSharedPreferences( key, FileCreationMode.Private);
            ISharedPreferencesEditor editor = prefs.Edit();
            editor.PutString(key, value);
            editor.Commit();
        }

        //get bool-based settings
        public bool GetBoolSetting(string key, Context context)
        {
            ISharedPreferences preferences = Android.Preferences.PreferenceManager.GetDefaultSharedPreferences(context);
            return preferences.GetBoolean(key, false);
        }
        public void SetBoolSetting(string key, bool value, Context context)
        {
            ISharedPreferences prefs = Android.Preferences.PreferenceManager.GetDefaultSharedPreferences(context);
            ISharedPreferencesEditor editor = prefs.Edit();
            editor.PutBoolean(key, value);
            editor.Commit();
        }

        public override void OnBackPressed()
        {
            //Finish();
            StartActivity(typeof(MainActivity));
        }

    }

    public class SettingsFragment : AndroidX.Preference.PreferenceFragment
    {

        public override void OnCreatePreferences(Bundle savedInstanceState, string rootKey)
        {
            AddPreferencesFromResource(Resource.Xml.settings_screen);
        }

    }
}