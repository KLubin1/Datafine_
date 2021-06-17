using Android.App;
using Android.Content;
using Android.Database.Sqlite;
using Android.OS;
using Android.Support.Design.Widget;
using Android.Support.V7.App;
using Android.Views;
using Android.Views.InputMethods;
using Android.Widget;
using System;
using System.Text.RegularExpressions;
using Xamarin.Essentials;
using AlertDialog = Android.App.AlertDialog;

namespace Datafine
{
    [Activity(Label = "TableCreation2")]
    public class TableCreation2 : AppCompatActivity
    {
        EditText column1, column2, column3, column4;
        ImageButton doneButton, domColInfo;
        LinearLayout view;
        DateTime now = DateTime.Now;
        Spinner domCol, dt1, dt2, dt3, dt4;
        Button columnInfo;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_creation_page2);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = "Create Table Columns";
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            //once the data is collected from here, recreate the app and create the next table
            column1 = FindViewById<EditText>(Resource.Id.tableCreate_Column1);
            column2 = FindViewById<EditText>(Resource.Id.tableCreate_Column2);
            column3 = FindViewById<EditText>(Resource.Id.tableCreate_Column3);
            column4 = FindViewById<EditText>(Resource.Id.tableCreate_Column4);
            doneButton = FindViewById<ImageButton>(Resource.Id.addTable_btnSave);

            //for the dominant column info
            domColInfo = FindViewById<ImageButton>(Resource.Id.tableCreate_dom_col_info);
            domColInfo.Click += DomColInfo_Click;
            //for the column info page launch
            columnInfo = FindViewById<Button>(Resource.Id.tableCreate_columnInfo);
            //for the snackbar
            view = FindViewById<LinearLayout>(Resource.Id.tableCreation_view);

            //for the dominant column selector 
            domCol = FindViewById<Spinner>(Resource.Id.tableCreate_domColSpinner);
            domCol.ItemSelected += new EventHandler<AdapterView.ItemSelectedEventArgs>(DomColSpinnerSelected);
            var adapter = ArrayAdapter.CreateFromResource(this, Resource.Array.DominantColumns, Android.Resource.Layout.SimpleSpinnerItem);
            adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
            domCol.Adapter = adapter;

            //for the data types selector
            dt1 = FindViewById<Spinner>(Resource.Id.tableCreate_dtSpinner1);
            dt2 = FindViewById<Spinner>(Resource.Id.tableCreate_dtSpinner2);
            dt3 = FindViewById<Spinner>(Resource.Id.tableCreate_dtSpinner3);
            dt4 = FindViewById<Spinner>(Resource.Id.tableCreate_dtSpinner4);
            domCol = FindViewById<Spinner>(Resource.Id.tableCreate_domColSpinner);

            //for the column info button
            columnInfo = FindViewById<Button>(Resource.Id.tableCreate_columnInfo);

            dt1.ItemSelected += new EventHandler<AdapterView.ItemSelectedEventArgs>(DT1Spinner);
            var d1adapter = ArrayAdapter.CreateFromResource(this, Resource.Array.DataTypes, Android.Resource.Layout.SimpleSpinnerItem);
            d1adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
            dt1.Adapter = d1adapter;

            dt2.ItemSelected += new EventHandler<AdapterView.ItemSelectedEventArgs>(DT2Spinner);
            var d2adapter = ArrayAdapter.CreateFromResource(this, Resource.Array.DataTypes, Android.Resource.Layout.SimpleSpinnerItem);
            d2adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
            dt2.Adapter = d2adapter;

            dt3.ItemSelected += new EventHandler<AdapterView.ItemSelectedEventArgs>(DT3Spinner);
            var d3adapter = ArrayAdapter.CreateFromResource(this, Resource.Array.DataTypes, Android.Resource.Layout.SimpleSpinnerItem);
            d3adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
            dt3.Adapter = d3adapter;

            dt4.ItemSelected += new EventHandler<AdapterView.ItemSelectedEventArgs>(DT4Spinner);
            var d4adapter = ArrayAdapter.CreateFromResource(this, Resource.Array.DataTypes, Android.Resource.Layout.SimpleSpinnerItem);
            d4adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
            dt4.Adapter = d4adapter;


            doneButton.Click += DoneButton_Click;
            columnInfo.Click += ColumnInfo_Click;

        }

        private void ColumnInfo_Click(object sender, EventArgs e)
        {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            AlertDialog confirm = builder.Create();
            confirm.SetTitle("Column Info and Data Types");
            confirm.SetMessage(GetString(Resource.String.Column_Info));
            confirm.SetButton("Got it!", (sender2, ev) =>
            {

            });

            confirm.Show();
        }

        //just capture the selected type and save into prefs
        private void DT4Spinner(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            Spinner spinner = (Spinner)sender;
            //Toast.MakeText(this, spinner.GetItemAtPosition(e.Position).ToString(), ToastLength.Short);
        }

        private void DT3Spinner(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            Spinner spinner = (Spinner)sender;
            //Toast.MakeText(this, spinner.GetItemAtPosition(e.Position).ToString(), ToastLength.Short);
        }

        private void DT2Spinner(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            Spinner spinner = (Spinner)sender;
            //Toast.MakeText(this, spinner.GetItemAtPosition(e.Position).ToString(), ToastLength.Short);
        }

        private void DT1Spinner(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            Spinner spinner = (Spinner)sender;
            //Toast.MakeText(this, spinner.GetItemAtPosition(e.Position).ToString(), ToastLength.Short);
        }

        private void DomColInfo_Click(object sender, EventArgs e)
        {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            AlertDialog confirm = builder.Create();
            confirm.SetTitle("Set Dominant Column");
            confirm.SetMessage(GetString(Resource.String.Dominant_Columnn_Info));
            confirm.SetButton("Got it!", (sender2, ev) =>
            {

            });

            confirm.Show();
        }

        private void DoneButton_Click(object sender, EventArgs e)
        {
            //close keyboard to view any messages
            //CloseKeyboard();

            //fix input to make sure there isnt any input that will crash the app
            //But, if the user input only numbers, this will cause somewhat of a crash
            FixInput();
            //if there were no found errors, proceed
            if (TestInput() == true)
            {
                //the more important part
                SetPrefs("column1", column1.Text);
                SetPrefs("column2", column2.Text);
                SetPrefs("column3", column3.Text);
                SetPrefs("column4", column4.Text);
                //get table name 
                string tableName = GetPrefs("table_name");
                SetPrefs(tableName + "_table_created", now.ToString());

                //reset prefs
                ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
                var editor = sharedPreferences.Edit();
                editor.PutBoolean("UpgradeFlag", false);

                //call CreateNewTable
                CreateNewTable();
                //Toast
                Toast.MakeText(this, "New Table Created!", ToastLength.Short).Show();
                //Toast.MakeText(this, "Dominant Column is: " + GetPrefs("dom_col"), ToastLength.Short).Show();
                //launch main page
                StartActivity(typeof(MainActivity));
            }
        }

        private void DomColSpinnerSelected(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            //handle and set the dominant column prefs for further processing in the entry list adapter
            Spinner spinner = (Spinner)sender;
            //preface with the table name to set this setting to ecah unique table
            Preferences.Remove("dom_col");
            string table = Preferences.Get("table_name", null); //this will retrieve the table name that was just made
            SetPrefs(table + "_dom_col", spinner.GetItemAtPosition(e.Position).ToString()); //set this setting for this table, eg: 'TestTable_dom_col'
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
            //if the columns have been replaced by being of onlu numbers
            //if(column1.Text == Regex.Replace(column1.Text, @"[0-9]+", "") ||
            //column2.Text == Regex.Replace(column2.Text, @"[0-9]+", "") ||
            //column3.Text == Regex.Replace(column3.Text, @"[0-9]+", "") ||
            //column4.Text == Regex.Replace(column4.Text, @"[0-9]+", ""))
            //{
            //    Snackbar snackbar = Snackbar.Make(view, "Column names cannot be of only numbers or special characters!", Snackbar.LengthIndefinite);
            //    snackbar.Show();
            //    testPassed = false;
            //}

            //if the columns have been replaced by special characters
            //else if (column1.Text == Regex.Replace(column1.Text, @"[^0-9a-zA-Z\\s]+", "")||
            //column2.Text == Regex.Replace(column2.Text, @"[^0-9a-zA-Z\\s]+", "")||
            //column3.Text == Regex.Replace(column3.Text, @"[^0-9a-zA-Z\\s]+", "")||
            //column4.Text == Regex.Replace(column4.Text, @"[^0-9a-zA-Z\\s]+", ""))
            //{
            //    Snackbar snackbar = Snackbar.Make(view, "Yeah... No.", Snackbar.LengthIndefinite);
            //    snackbar.Show();
            //    testPassed = false;
            //}

            //if any of the previous conditions ocurred at any point, this will return false, and the create code will stop from being excuted
            //since the code will get called every click of the done button, this will get called and checked as many times as the input has an error
            //if none if the conditions occurred, it will simplyy return true, and proceed accordingly

            return testPassed;
        }


        public void FixInput()
        {
            //remove special characters (for now)
            column1.Text = Regex.Replace(column1.Text, @"[^0-9a-zA-Z\\s]+", "");
            column2.Text = Regex.Replace(column2.Text, @"[^0-9a-zA-Z\\s]+", "");
            column3.Text = Regex.Replace(column3.Text, @"[^0-9a-zA-Z\\s]+", "");
            column4.Text = Regex.Replace(column4.Text, @"[^0-9a-zA-Z\\s]+", "");

            //replace whitespace
            column1.Text = Regex.Replace(column1.Text, @"\\s+", "_");
            column2.Text = Regex.Replace(column2.Text, @"\\s+", "_");
            column3.Text = Regex.Replace(column3.Text, @"\\s+", "_");
            column4.Text = Regex.Replace(column4.Text, @"\\s+", "_");

            ////replace only numbers
            //column1.Text = Regex.Replace(column1.Text, @"[0-9]+", "");
            //column2.Text = Regex.Replace(column2.Text, @"[0-9]+", "");
            //column3.Text = Regex.Replace(column3.Text, @"[0-9]+", "");
            //column4.Text = Regex.Replace(column4.Text, @"[0-9]+", "");




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