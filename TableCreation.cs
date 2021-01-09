using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.V7.App;
using Android.Views;
using Android.Views.InputMethods;
using Android.Widget;
using Xamarin.Essentials;

namespace Datafine
{
    [Activity(Label = "TableCreation")]
    public class TableCreation : AppCompatActivity
    {

        EditText tableName, tableDescription;
        ImageButton doneButton;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_creation_page);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = "Create New Table";
            //SupportActionBar.SetDisplayShowHomeEnabled(true);
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            //once the data is collected from here, put extra the entries, move on to the next activity page 2, get that info and retrieve this info, then evaluate
            tableName = FindViewById<EditText>(Resource.Id.tableCreate_Name);
            tableDescription = FindViewById<EditText>(Resource.Id.tableCreate_Description);
            doneButton = FindViewById<ImageButton>(Resource.Id.addTable_btnSave);


            doneButton.Click += DoneButton_Click;

        }

        private void DoneButton_Click(object sender, EventArgs e)
        {
            //put the names into the preference and retrieve them
            if (tableName.Text.Length != 0)
            {
                FixInput();
                SetPrefs("table_name", tableName.Text);
               
            }
            else
            {
                Toast.MakeText(this, "Table name can't be empty!", ToastLength.Short).Show();
            }

            if(tableDescription.Text.Length != 0)
            {
                //set the description according to table name
                SetPrefs(tableName.Text + "_table_description", tableDescription.Text);
            }
            else
            {
                //set to default "no description"
                SetPrefs(tableName.Text + "_table_description", "No description added");
            }

            Intent intent = new Intent(this, typeof(TableCreation2));
            StartActivity(intent);

        }


        //set the prefrence
        private void SetPrefs(string name, string value)
        {
            Preferences.Set(name, value);
        }

        //get the preference
        private string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
        }
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

        public void FixInput()
        {
            //remove special characters (for now)
            tableName.Text = Regex.Replace(tableName.Text, @"[^0-9a-zA-Z\\s]+", "");


            //replace whitespace
            tableName.Text = Regex.Replace(tableName.Text, @"\\s+", "_");


        }

    }
}