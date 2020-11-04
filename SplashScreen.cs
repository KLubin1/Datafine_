using System;
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
    [Activity(Theme ="@style/SplashTheme", MainLauncher =true, NoHistory =true)]
    public class SplashScreen : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            //It will show until the Main Activity is ready to show, so it works great for the first time, but quickly appear the subsequent times
            base.OnCreate(savedInstanceState);
            //Thread.Sleep(3000);
            StartActivity(typeof(LoginScreen));
            // Create your application here
        }
    }
}