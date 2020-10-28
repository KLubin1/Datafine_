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

namespace Datafine
{
    [Activity(Label = "Settings")]
    public class Settings : AppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.settings_layout);

            // Create your application here
            SettingsFragment sf = new SettingsFragment();
            FragmentTransaction fm = FragmentManager.BeginTransaction();
            fm.Replace( Resource.Id.pref_container, sf).Commit();
        }
    }



    public class SettingsFragment : PreferenceFragment
    {

        public override void OnCreatePreferences(Bundle savedInstanceState, string rootKey)
        {
            AddPreferencesFromResource(Resource.Xml.settings_screen);
        }

    }
}