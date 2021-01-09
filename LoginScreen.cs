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
using Xamarin.Essentials;

namespace Datafine
{
    [Activity(Label = "LoginScreen", Theme ="@style/LoginTheme", NoHistory =true)]
    public class LoginScreen : Activity
    {
        EditText userName, password;
        Button googleButton, loginButton;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.login_screen);

            userName = FindViewById<EditText>(Resource.Id.login_userId);
            password = FindViewById<EditText>(Resource.Id.login_password);
            googleButton = FindViewById<Button>(Resource.Id.login_googleBtn);
            loginButton = FindViewById<Button>(Resource.Id.login_doneBtn);

            //temporarily disable password for demo purposes
            password.Clickable = false;
            password.Enabled = false;

            loginButton.Click += LoginButton_Click;
            googleButton.Click += GoogleButton_Click;
        }

        private void GoogleButton_Click(object sender, EventArgs e)
        {
            Toast.MakeText(this, "Under Construction, use Login instead", ToastLength.Short).Show();
        }

        private void LoginButton_Click(object sender, EventArgs e)
        {
            ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("loggingSession", FileCreationMode.Private);
            ISharedPreferencesEditor editor = sharedPreferences.Edit();

            editor.PutBoolean("firstStart", true);

            /*if (CredentialsAreValid())
            {
                Toast.MakeText(this, "Login Successful!", ToastLength.Short).Show();
                StartActivity(typeof(MainActivity));
                Thread.Sleep(2000);
                Toast.MakeText(this, Resource.String.hello_user, ToastLength.Long).Show();
                editor.PutBoolean("loggedIn", true);
                editor.Commit();
            }
            else
                Toast.MakeText(this, "Username or Password is incorrect. Try again.", ToastLength.Long).Show();*/


            //for demo, just takes in the user's name and sets that to hello user
            Preferences.Set("hello_user", userName.Text);
            Toast.MakeText(this, "Login Successful!", ToastLength.Short).Show();
            StartActivity(typeof(MainActivity));
            Thread.Sleep(2000);
            Toast.MakeText(this, "Hello, " + Preferences.Get("hello_user", null) + "!", ToastLength.Long).Show();
            editor.PutBoolean("loggedIn", true);
            editor.Commit();
        }

        //handle what are and aren't correct credentials
        private bool CredentialsAreValid()
        {
            string[] validUsernames = {"KSap20", "AtTina", "leroyjenkins", "TheNotoriousBIG" };
            string[] validPasswords = { "ThisIsMyPassword", "Lolz34", "4myez!sland", "dj2wg47q%?wifua1!" };
            bool validate = false; //this would be basically making it false no matter what if is doesnt meet the following code conditions
            //if finished looping through and a username wasn't found, then return false

            //loop through the usernames to find a valid one; first check if there is input
            for (int i = 0; i<validUsernames.Length; i++)
            {
                if(userName.Text.Length != 0)
                {
                    if (userName.Text == validUsernames[i] && password.Text == validPasswords[i])
                    {
                        validate = true;
                        break;
                    }
                    else
                        continue;
                }

                else
                {
                    Toast.MakeText(this, "Enter username and password", ToastLength.Long).Show();
                    continue;
                }
            }
            return validate;
        }

        private void DemoLogin()
        {

        }
    }
}