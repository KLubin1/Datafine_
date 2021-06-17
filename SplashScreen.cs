using Android.App;
using Android.Content;
using Android.OS;
using System.Threading;

namespace Datafine
{
    [Activity(Theme = "@style/SplashTheme", MainLauncher = true, NoHistory = true, Icon = "@drawable/ic_datafine")]
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
            //TODO: Release Changes
            //if (isLoggedIn == false)
            //{
            //    StartActivity(typeof(LoginScreen));

            //}
            //else
            //    StartActivity(typeof(MainActivity));

            StartActivity(typeof(MainActivity));

        }
    }
}