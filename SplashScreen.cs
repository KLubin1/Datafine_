﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Datafine
{
    [Activity(Theme ="@style/SplashTheme", MainLauncher =true, NoHistory =true, Icon ="@drawable/ic_datafine")]
    public class SplashScreen : Activity
    {
        
        protected override void OnCreate(Bundle savedInstanceState)
        {

            ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("loggingSession", FileCreationMode.Private);
            ISharedPreferencesEditor editor = sharedPreferences.Edit();
            bool isLoggedIn = sharedPreferences.GetBoolean("loggedIn", false);

            //It will show until the Main Activity is ready to show, so it works great for the first time, but quickly appear the subsequent times
            base.OnCreate(savedInstanceState);
            Thread.Sleep(2000);
            if (isLoggedIn == false)
            {
                StartActivity(typeof(LoginScreen));

            }
            else
                StartActivity(typeof(MainActivity));

        }
    }
}