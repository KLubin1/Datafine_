
using Android.App;
using Android.Content;
using Android.OS;
using Android.Preferences;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;
using AlertDialog = Android.Support.V7.App.AlertDialog;

namespace Datafine
{
    [Activity(Label = "PasswordRequest", Theme = "Theme.AppCompat.Light")]
    public class PasswordRequest : AppCompatDialogFragment
    {
        EditText passwordField;
        public override Dialog OnCreateDialog(Bundle savedInstanceState)
        {
            //get the setting
            ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(Application.Context);
            string password_viewable = prefs.GetString("create_password", null);
            //build the dialog
            AlertDialog.Builder builder = new AlertDialog.Builder(Activity);
            LayoutInflater inflater = Activity.LayoutInflater;
            View view = inflater.Inflate(Resource.Layout.ask_password_dialog, null);

            passwordField = view.FindViewById<EditText>(Resource.Id.passwordField);

            builder.SetView(view)
                .SetTitle("Enter Password:")
                .SetPositiveButton("OK", (sender, e) =>
                {
                    //if the entered text is the password then launch the activity and let through to the view page
                    if (passwordField.Text == password_viewable)
                    {
                        Intent intent = new Intent(Activity, typeof(EntryViewPage));
                        StartActivity(intent);
                    }
                    //else let the user know the pass word is incorrect; done let them through.
                    else
                    {
                        Toast.MakeText(Activity, "Password Incorrect. Try Again", ToastLength.Long).Show();
                    }

                })
                .SetNegativeButton("Cancel", (sender, e) =>
                {

                });


            return builder.Create();
        }
    }
}