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

namespace Datafine
{
    [Activity(Label = "DatabaseCreation")]
    public class TableCreation : AppCompatActivity
    {
        EditText nameEditText, numberEditText, locationEditText, ageEditText;
        ImageButton saveButton;


        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_creation_page);


            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = "Create New Entry";
            //SupportActionBar.SetDisplayShowHomeEnabled(true);
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            // Create your application here
            nameEditText = FindViewById<EditText>(Resource.Id.addEdit_Name);
            numberEditText = FindViewById<EditText>(Resource.Id.addEdit_Number);
            locationEditText = FindViewById<EditText>(Resource.Id.addEdit_Location);
            ageEditText = FindViewById<EditText>(Resource.Id.addEdit_Age);
            saveButton = FindViewById<ImageButton>(Resource.Id.addEdit_btnSave);


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
                ICursor cData = db.getContactById(int.Parse(contactId));
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

                //get the UpgradeFlag 
                ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
                var editor = sharedPreferences.Edit();
                bool upgrade = sharedPreferences.GetBoolean("UpgradeFlag", false);

            //if no data was entered, call error
            if (nameEditText.Text.Trim().Length < 1)
                {
                    Toast.MakeText(this, "Enter Name.", ToastLength.Short).Show();
                    return;
                }


                if (numberEditText.Text.Trim().Length < 1)
                {
                    Toast.MakeText(this, "Enter Phone Number.", ToastLength.Short).Show();
                    return;
                }

                if (nameEditText.Text.Trim().Length < 1)
                {
                    Toast.MakeText(this, "Enter Location.", ToastLength.Short).Show();
                    return;
                }


                if (numberEditText.Text.Trim().Length < 1)
                {
                    Toast.MakeText(this, "Enter Age.", ToastLength.Short).Show();
                    return;
                }

                TableInfo pb = new TableInfo();

               
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
                        Toast.MakeText(this, "Contact Updated Successfully.", ToastLength.Short).Show();

                        editor.PutBoolean("UpgradeFlag", false);
                        editor.Apply();

                    }

                    else
                    {
                        //add the entry to 
                        db.AddContact(pb);
                        Toast.MakeText(this, "New Contact Created", ToastLength.Short).Show();
                    }

                        // and return to main page
                        Finish();
                    
                    var intent = new Intent(this, typeof(TableViewPage));
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
    }
}