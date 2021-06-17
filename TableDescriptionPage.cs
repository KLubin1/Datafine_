using Android.App;
using Android.Database;
using Android.Database.Sqlite;
using Android.OS;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;
using System;
using Preferences = Xamarin.Essentials.Preferences;

namespace Datafine
{
    [Activity(Label = "TableDescriptionPage")]
    public class TableDescriptionPage : AppCompatActivity
    {
        DateTime now = DateTime.Now;
        TextView tableName, dateAdded, column1, column2, column3, column4, tableDescription;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_description_layout);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);
            SupportActionBar.Title = "Table Description";
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            //get instance of the db helper database
            SQLiteOpenHelper sq = new DBHelper(this);
            SQLiteDatabase column = sq.ReadableDatabase;
            //query the selected table
            string table = Preferences.Get("SelectedTable", null);
            ICursor c = column.Query(table, null, null, null, null, null, null);

            //set the columns name; column1 and column6 are reserved for the id and the date added respectively
            column1 = FindViewById<TextView>(Resource.Id.desc_column2);
            column1.Text = c.GetColumnName(1) + " (TEXT, NOT NULL)";

            column2 = FindViewById<TextView>(Resource.Id.desc_column3);
            column2.Text = c.GetColumnName(2) + " (TEXT, NOT NULL)";

            column3 = FindViewById<TextView>(Resource.Id.desc_column4);
            column3.Text = c.GetColumnName(3) + " (TEXT, NOT NULL)";

            column4 = FindViewById<TextView>(Resource.Id.desc_column5);
            column4.Text = c.GetColumnName(4) + " (TEXT, NOT NULL)";


            //set the table name
            tableName = FindViewById<TextView>(Resource.Id.desc_TableName);
            tableName.Text = Preferences.Get("SelectedTable", null);


            //set the description
            tableDescription = FindViewById<TextView>(Resource.Id.desc_ownerDescription);

            tableDescription.Text = Preferences.Get(table + "_table_description", null);

            //if there wasnt an decription add some filler text
            if (tableDescription.Text.Length == 0)
            {
                tableDescription.Text = "No Added Description";
            }

            //set the real table creation time
            dateAdded = FindViewById<TextView>(Resource.Id.desc_dateAdded);
            dateAdded.Text = Preferences.Get(table + "_table_created", null);
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