using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Database.Sqlite;
using Android.OS;
using Android.Runtime;
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


            doneButton.Click += DoneButton_Click;



        }

        private void DoneButton_Click(object sender, EventArgs e)
        {
            //put the names into the preference

            if (column1.Text.Length != 0 || column2.Text.Length != 0 || column3.Text.Length != 0 || column4.Text.Length != 0)
            {
                SetPrefs("column1", column1.Text);
                SetPrefs("column2", column2.Text);
                SetPrefs("column3", column3.Text);
                SetPrefs("column4", column4.Text);
            }
            else
            {
                Toast.MakeText(this, "All coumns must have a value!", ToastLength.Short).Show();
            }

            string getColumn1 = GetPrefs("column1");
            string getColumn2 = GetPrefs("column2");
            string getColumn3 = GetPrefs("column3");
            string getColumn4 = GetPrefs("column4");
            string getTableName = GetPrefs("table_name");
            string getTableDescription = GetPrefs("table_description");


            StartActivity(typeof(MainActivity));


            //call CreateNewTable
            CreateNewTable();


            //add a confirmartion dialog recapping the titles
            Toast.MakeText(this, "TableName: " + getTableName + "\nTable Description: " + getTableDescription + "\nColumn1: " + getColumn1 + "\nColumn2: " + getColumn2 + "\nColumn3: " + getColumn3 + "\nColumn4: " + getColumn4, ToastLength.Long).Show();
           
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
    }
}