﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Database;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Datafine
{
    [Activity(Label = "DatabaseCreation")]
    public class TableCreation : Activity
    {
        EditText nameEditText, numberEditText, locationEditText, ageEditText;
        ImageButton saveButton;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_creation_page);

            // Create your application here
            //remember to throw error message for null entries 

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
            void saveButtonOnClick(object sender, EventArgs e) //important function
            {
                //get the time captured when entry was made for DateAdded
                DateTime now = DateTime.Now;
                DBHelper db = new DBHelper(this);

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
                pb.name = nameEditText.Text;
                pb.phoneNumber = numberEditText.Text;
                pb.location = locationEditText.Text;
                pb.age = ageEditText.Text;
                pb.dateAdded = now.ToString();

                try
                {

                    //add the data and return to main page
                    db.AddContact(pb);
                    Toast.MakeText(this, "New Contact Created", ToastLength.Short).Show();

                    Finish();

                    var intent = new Intent(this, typeof(TableViewPage));
                    StartActivity(intent); //Launch table view page; either this or backPressed()

                }
                catch (Exception ex)
                {
                    throw new Exception(ex.Message);
                }

            }
    }
}