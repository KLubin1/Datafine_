using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Database;
using Android.OS;
using Android.Preferences;
using Android.Runtime;
using Android.Support.V4.Content;
using Android.Views;
using Android.Widget;
using Android.Support.V7.App;
using Android.Support.Design.Widget;
using Google.Android.Material.TextField;
using TextInputEditText = Google.Android.Material.TextField.TextInputEditText;
using Android.Views.InputMethods;
using AndroidX.AppCompat.Widget;
using Android.Support.V7.Widget;
using Toolbar = Android.Support.V7.Widget.Toolbar;
using Xamarin.Essentials;
using Android.Database.Sqlite;

namespace Datafine
{
    [Activity(Label = "DatabaseCreation")]
    public class EntryCreation : AppCompatActivity
    {
        //EditText nameEditText, numberEditText, locationEditText, ageEditText;
        TextInputEditText column1EditText, column2EditText, column3EditText, column4EditText;
        ImageButton saveButton;
        LinearLayout view;


        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.entry_creation_page);


            //set the toolbar
           Toolbar toolbar = FindViewById<Toolbar>(Resource.Id.toolbar);
           SetSupportActionBar(toolbar);

            SupportActionBar.Title = "Create New Entry";
            //SupportActionBar.SetDisplayShowHomeEnabled(true);
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            // Create your application here
            column1EditText = FindViewById<TextInputEditText>(Resource.Id.addEdit_Name);
            column2EditText = FindViewById<TextInputEditText>(Resource.Id.addEdit_Number);
            column3EditText = FindViewById<TextInputEditText>(Resource.Id.addEdit_Location);
            column4EditText = FindViewById<TextInputEditText>(Resource.Id.addEdit_Age);
            saveButton = FindViewById<ImageButton>(Resource.Id.addEdit_btnSave);

            // for view used for snackbar reference
            view = FindViewById<LinearLayout>(Resource.Id.entryCreation_view);



            saveButton.Click += saveButtonOnClick;
            string editId = Intent.GetStringExtra("EntryId") ?? string.Empty;

            if (editId.Trim().Length > 0)
            {
                // idEditText.Text = editId;
                LoadDataForEdit(editId);
            }

            //get the UpgradeFlag 
            //set the upgrade flag by default to false here so that it wont crash on null when the table is first made
            ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
            var editor = sharedPreferences.Edit();
            editor.PutBoolean("UpgradeFlag", false);
            bool upgrade = sharedPreferences.GetBoolean("UpgradeFlag", false);

            if (upgrade == true) //why is this getting set to true??
            {
                string theId = Intent.Extras.GetString("Id");

                LoadDataForEdit(theId);
                
            }

            //Set the hint for text edits depending on the custom columns
            SetField();
        }
            //Load the data when its under editing
            private void LoadDataForEdit(string contactId)
            {
                //get instance of dbhelper to get contact
                DBHelper db = new DBHelper(this);
                //get instance of the db helper database
                SQLiteOpenHelper sq = new DBHelper(this);
                SQLiteDatabase column = sq.ReadableDatabase;
                //query the selected table
                string table = GetPrefs("SelectedTable");
                ICursor c = column.Query(table, null, null, null, null, null, null);
            
                
                ICursor cData = db.GetContactById(int.Parse(contactId));
                if (cData.MoveToFirst())
                {
                    //with the queried table and corresponding name returned by the column index, get column's info
                    column1EditText.Text = cData.GetString(cData.GetColumnIndex(c.GetColumnName(1)));
                    column2EditText.Text = cData.GetString(cData.GetColumnIndex(c.GetColumnName(2)));
                    column3EditText.Text = cData.GetString(cData.GetColumnIndex(c.GetColumnName(3)));
                    column4EditText.Text = cData.GetString(cData.GetColumnIndex(c.GetColumnName(4)));

                }     
            }

            //save the data on click, load and set the entered values
            void saveButtonOnClick(object sender, EventArgs e)
            {
                //get the time captured when entry was made for DateAdded
                DateTime now = DateTime.Now;
                DBHelper db = new DBHelper(this);

                CloseKeyboard();

                //get the UpgradeFlag 
                ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
                var editor = sharedPreferences.Edit();
                bool upgrade = sharedPreferences.GetBoolean("UpgradeFlag", false);

            //if no data was entered, call error
            if (column1EditText.Text.Trim().Length < 1)
                {
                    //Toast.MakeText(this, "Enter Name.", ToastLength.Short).Show();
                    Snackbar snackbar = Snackbar.Make(view, "Name field cannot be empty (NOT NULL)", Snackbar.LengthIndefinite);
                    snackbar.Show();
                    return;
                }


                if (column2EditText.Text.Trim().Length < 1)
                {
                    //Toast.MakeText(this, "Enter Phone Number.", ToastLength.Short).Show();
                    Snackbar snackbar = Snackbar.Make(view, "Phone Number field cannot be empty (NOT NULL)", Snackbar.LengthIndefinite);
                    snackbar.Show();
                    return;
                }

                if (column3EditText.Text.Trim().Length < 1)
                {
                    //Toast.MakeText(this, "Enter Location.", ToastLength.Short).Show();
                    Snackbar snackbar = Snackbar.Make(view, "Location field cannot be empty (NOT NULL)", Snackbar.LengthIndefinite);
                    snackbar.Show();
                    return;
                }

                if (column4EditText.Text.Trim().Length < 1)
                {
                    //Toast.MakeText(this, "Enter Age.", ToastLength.Short).Show();
                    Snackbar snackbar = Snackbar.Make(view, "Age field cannot be empty (NOT NULL)", Snackbar.LengthIndefinite);
                    snackbar.Show();
                    return;
                }

                EntryInfo pb = new EntryInfo();

               
                    //enter in text and timestamp
                    if(upgrade == true)
                    {
                        pb.id = int.Parse(Intent.Extras.GetString("Id"));
                    }   
                    
                    pb.column1 = column1EditText.Text;
                    pb.column2 = column2EditText.Text;
                    pb.column3 = column3EditText.Text;
                    pb.column4 = column4EditText.Text;
                    pb.dateAdded = "Date Created: " + now.ToString();

                try
                    {
                    if (upgrade == true)
                    {
                        //upgrade contact
                        db.UpdateContact(pb);
                        Toast.MakeText(this, "Entry Updated Successfully!", ToastLength.Long).Show();

                        editor.PutBoolean("UpgradeFlag", false);
                        editor.Apply();

                    }

                    else
                    {
                        //add the entry to 
                        db.AddContact(pb);
                        Toast.MakeText(this, "New Entry Created!", ToastLength.Long).Show();
                    }
                        
                        // and return to main page
                        Finish();
                    
                    var intent = new Intent(this, typeof(EntryViewPage));
                    StartActivity(intent);
                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }

            }

        //for the back button toolbar
        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            switch (item.ItemId)
            {
                case Android.Resource.Id.Home:
                    //
                    Finish();
                    StartActivity(typeof(EntryViewPage));
                    return true;

                default:
                    return base.OnOptionsItemSelected(item);
            }
        }


        public void CloseKeyboard()
        {
            View view = this.CurrentFocus;
            if (view != null)
            {
                InputMethodManager imm = (InputMethodManager)GetSystemService(Context.InputMethodService);
                imm.HideSoftInputFromWindow(view.WindowToken, 0);
            }
        }

        private void SetField()
        {
            //get instance of the db helper database
            SQLiteOpenHelper sq = new DBHelper(this);
            SQLiteDatabase column = sq.ReadableDatabase;
            //query the selected table
            string table = GetPrefs("SelectedTable");
            ICursor c = column.Query(table, null, null, null, null, null, null);

            column1EditText.Hint = c.GetColumnName(1);
            column2EditText.Hint = c.GetColumnName(2);
            column3EditText.Hint = c.GetColumnName(3);
            column4EditText.Hint = c.GetColumnName(4);
        }

        //get the preference
        private static string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
        }
    }
}