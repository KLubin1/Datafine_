using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Database.Sqlite;
using Android.OS;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;
using Xamarin.Essentials;

namespace Datafine
{
    [Activity(Label = "TableCreation2")]
    public class TableCreation2 : AppCompatActivity
    {
        EditText column1, column2, column3, column4;
        ImageButton doneButton;
        LinearLayout view;
        DateTime now = DateTime.Now;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_creation_page2);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = "Create Table Columns";
            //SupportActionBar.SetDisplayShowHomeEnabled(true);
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            //once the data is collected from here, recreate the app and create the next table
            column1 = FindViewById<EditText>(Resource.Id.tableCreate_Column1);
            column2 = FindViewById<EditText>(Resource.Id.tableCreate_Column2);
            column3 = FindViewById<EditText>(Resource.Id.tableCreate_Column3);
            column4 = FindViewById<EditText>(Resource.Id.tableCreate_Column4);
            doneButton = FindViewById<ImageButton>(Resource.Id.addTable_btnSave);

            //for the snackbar
            view = FindViewById<LinearLayout>(Resource.Id.tableCreation_view);


            doneButton.Click += DoneButton_Click;

        }

        private void DoneButton_Click(object sender, EventArgs e)
        {
            //if there were no found errors, proceed
            if (TestInput() == true)
            {
                //the more important part
                SetPrefs("column1", column1.Text);
                SetPrefs("column2", column2.Text);
                SetPrefs("column3", column3.Text);
                SetPrefs("column4", column4.Text);
                SetPrefs("table_created", now.ToString());

                //call CreateNewTable
                CreateNewTable();
                //launch main page
                StartActivity(typeof(MainActivity));

                //add a confirmartion dialog recapping the newly created info
                //Toast.MakeText(this, "TableName: " + getTableName + "\nTable Description: " + getTableDescription + "\nColumn1: " + getColumn1 + "\nColumn2: " + getColumn2 + "\nColumn3: " + getColumn3 + "\nColumn4:" + getColumn4, ToastLength.Short).Show();
            }
        }


        private void SetPrefs(string name, string value)
        {
            Preferences.Set(name, value);
        }

        private string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
        }

        private void CreateNewTable()
        {
            //call DBHelper's CreateNewTable method to be able to create the new table at exactly this time
            SQLiteOpenHelper sq = new DBHelper(this);
            SQLiteDatabase db = sq.WritableDatabase;
            DBHelper helper = new DBHelper(this);
            helper.CreateNewTable(db);
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

        public bool TestInput()
        {

            bool testPassed = true;

            //grab the inputs, not the prefs. The reason it is done this way is to not save and process the table unless it is free of errors
            string testColumn1 = column1.Text;
            string testColumn2 = column2.Text;
            string testColumn3 = column3.Text;
            string testColumn4 = column4.Text;


            //check to make sure there are no duplicate columns, otherwise the table won't create correctly (and the app will crash)
            string[] inputs = { testColumn1, testColumn2, testColumn3, testColumn4 };

            for (int i = 0; i < inputs.Length - 1; i++)
            {
                for (int j = i + 1; j < inputs.Length; j++)
                {
                    if (inputs[i] == inputs[j])
                    {
                        Snackbar snackbar = Snackbar.Make(view, "Columns names must be unique", Snackbar.LengthIndefinite);
                        snackbar.Show();
                        testPassed = false;
                        break;
                        
                    }
                }
                
            }

            //check if fields are empty
            if (testColumn1.Length <= 0 || testColumn2.Length <= 0 || testColumn3.Length <= 0 || testColumn4.Length <= 0)
              {
                Snackbar snackbar = Snackbar.Make(view, "Fields cannot be empty!", Snackbar.LengthIndefinite);
                snackbar.Show();
                testPassed = false;
              }
            

            //if any of the previous conditions ocurred at any point, this will return false, and the create code will stop from being excuted
            //since the code will get called every click of the done button, this will get called and checked as many times as the input has an error
            //if none if the conditions occurred, it will simplyy return true, and proceed accordingly

            return testPassed;
        }
    }
}