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

namespace Datafine
{
    [Activity(Label = "DatabaseCreation")]
    public class EntryCreation : AppCompatActivity
    {
        //EditText nameEditText, numberEditText, locationEditText, ageEditText;
        TextInputEditText nameEditText, numberEditText, locationEditText, ageEditText;
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
            nameEditText = FindViewById<TextInputEditText>(Resource.Id.addEdit_Name);
            numberEditText = FindViewById<TextInputEditText>(Resource.Id.addEdit_Number);
            locationEditText = FindViewById<TextInputEditText>(Resource.Id.addEdit_Location);
            ageEditText = FindViewById<TextInputEditText>(Resource.Id.addEdit_Age);
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
            bool upgrade = sharedPreferences.GetBoolean("UpgradeFlag", false);

            if (upgrade == true)
            {
                string theId = Intent.Extras.GetString("Id");

                LoadDataForEdit(theId);
                
            }
        }
            //Load the data when its under editing
            private void LoadDataForEdit(string contactId)
            {
                DBHelper db = new DBHelper(this);
                ICursor cData = db.GetContactById(int.Parse(contactId));
                if (cData.MoveToFirst())
                {
                    nameEditText.Text = cData.GetString(cData.GetColumnIndex("Name"));
                    numberEditText.Text = cData.GetString(cData.GetColumnIndex("PhoneNumber"));
                    locationEditText.Text = cData.GetString(cData.GetColumnIndex("Location"));
                    ageEditText.Text = cData.GetString(cData.GetColumnIndex("Age"));

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
            if (nameEditText.Text.Trim().Length < 1)
                {
                    //Toast.MakeText(this, "Enter Name.", ToastLength.Short).Show();
                    Snackbar snackbar = Snackbar.Make(view, "Name field cannot be empty (NOT NULL)", Snackbar.LengthIndefinite);
                    snackbar.Show();
                    return;
                }


                if (numberEditText.Text.Trim().Length < 1)
                {
                    //Toast.MakeText(this, "Enter Phone Number.", ToastLength.Short).Show();
                    Snackbar snackbar = Snackbar.Make(view, "Phone Number field cannot be empty (NOT NULL)", Snackbar.LengthIndefinite);
                    snackbar.Show();
                    return;
                }

                if (locationEditText.Text.Trim().Length < 1)
                {
                    //Toast.MakeText(this, "Enter Location.", ToastLength.Short).Show();
                    Snackbar snackbar = Snackbar.Make(view, "Location field cannot be empty (NOT NULL)", Snackbar.LengthIndefinite);
                    snackbar.Show();
                    return;
                }

                if (ageEditText.Text.Trim().Length < 1)
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
                    
                    pb.name = nameEditText.Text;
                    pb.phoneNumber = numberEditText.Text;
                    pb.location = locationEditText.Text;
                    pb.age = ageEditText.Text;
                    pb.dateAdded = "Date Created: " + now.ToString();

                try
                    {
                    if (upgrade == true)
                    {
                        //upgrade contact
                        db.UpdateContact(pb);
                        Toast.MakeText(this, "Contact Updated Successfully!", ToastLength.Long).Show();

                        editor.PutBoolean("UpgradeFlag", false);
                        editor.Apply();

                    }

                    else
                    {
                        //add the entry to 
                        db.AddContact(pb);
                        Toast.MakeText(this, "New Contact Created!", ToastLength.Long).Show();
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
                    Finish();
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
    }
}