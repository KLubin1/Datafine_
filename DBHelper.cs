using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.Database.Sqlite;
using Android.Database;
using Xamarin.Essentials;

namespace Datafine
{
    public class DBHelper : SQLiteOpenHelper
    {
        //until I can find a way to take in user input, it would have to create a dummy table with static values
        //database name
        private const string DATABASE_NAME = "Test.db3";
        //database version
        private const int DATABASE_VERSION = 1;

        public DBHelper(Context c) : base(c, DATABASE_NAME, null, DATABASE_VERSION)
        {

        }


        //create table
        //on a completely clean install, this will crash on start MainActivity. Need to prevent this from running at first run, or make a dummmy table
        public override void OnCreate(SQLiteDatabase db)
        {
            ISharedPreferences prefs = Application.Context.GetSharedPreferences("loggingSession", FileCreationMode.Private);
            ISharedPreferencesEditor editor = prefs.Edit();
            bool firstStart = prefs.GetBoolean("firstStart", false);

            if (firstStart == false)
            {
                string tableName = GetPrefs("table_name");
                string column1 = GetPrefs("column1");
                string column2 = GetPrefs("column2");
                string column3 = GetPrefs("column3");
                string column4 = GetPrefs("column4");


                string createTable =
                "CREATE TABLE IF NOT EXISTS " + tableName + " (" +
                "Id INTEGER PRIMARY KEY AUTOINCREMENT, " +
                column1 + " TEXT NOT NULL, " +
                column2 + " TEXT NOT NULL, " +
                column3 + " TEXT NOT NULL, " +
                column4 + " TEXT NOT NULL, " +
                "DateAdded TEXT NOT NULL)"
                ;

                db.ExecSQL(createTable);
            }

            else
            //otherwise make a dummy table?
            {
                string createTable =
                  "CREATE TABLE IF NOT EXISTS DummyTable " +
                  "(Id INTEGER PRIMARY KEY AUTOINCREMENT, " +
                  "Column1 TEXT NOT NULL, " +
                  "Column2 TEXT NOT NULL, " +
                  "Column3 TEXT NOT NULL, " +
                  "Column4 TEXT NOT NULL, " +
                  "FirstInstall TEXT NOT NULL)";

                  db.ExecSQL(createTable);

                editor.PutBoolean("firstStart", false);
                editor.Apply();
            }
        }


        //upgrade version of table by dropping it and recreating it
        public override void OnUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
        {
            string tableName = GetPrefs("tableName");
            db.ExecSQL("DROP TABLE IF EXISTS " + tableName);
            OnCreate(db);
        }

        //retrive the info for processing and formating them to a cursor
        public IList<EntryInfo> GetAllContacts()
        {
            SQLiteDatabase db = this.ReadableDatabase;

            //get the selected table
            string table = GetPrefs("SelectedTable");
            //get said table from query...
            ICursor tableCursor = db.Query(table, null, null, null, null, null, null);
            //...to retrieve said table's column names
            string[] columns = tableCursor.GetColumnNames();
            

            //now assemble the main query with the selected table name and columns
            ICursor c = db.Query(table, columns, null, null, null, null, null); //can organize the retrieval with any values or way here
            var contacts = new List<EntryInfo>();
            while (c.MoveToNext())
            {
                contacts.Add(new EntryInfo
                {
                    id = c.GetInt(0),
                    column1 = c.GetString(1),
                    column2 = c.GetString(2),
                    column3 = c.GetString(3),
                    column4 = c.GetString(4),
                    dateAdded = c.GetString(5)

                });

            }

            c.Close();
            db.Close();
            return contacts;
        }

        //retrieve entries based off of a search name
        public IList<EntryInfo> GetContactsByColumn1(string column1Term)
        {
            SQLiteDatabase db = this.ReadableDatabase;
            //get the selected table
            string table = GetPrefs("SelectedTable");
            //get said table from query...
            ICursor tableCursor = db.Query(table, null, null, null, null, null, null);
            //...to retrieve said table's column names
            string[] columns = tableCursor.GetColumnNames();
            string searchTermColumn = tableCursor.GetColumnName(1);

            ICursor c = db.Query(table, columns , "upper(" + searchTermColumn + ") LIKE ?", new string[] { "%" + column1Term.ToUpper() + "%" }, null, null, null, null);

            var contacts = new List<EntryInfo>();

            while (c.MoveToNext())
            {
                contacts.Add(new EntryInfo
                {
                    id = c.GetInt(0),
                    column1 = c.GetString(1),
                    column2 = c.GetString(2),
                    column3 = c.GetString(3),
                    column4 = c.GetString(4),
                    dateAdded = c.GetString(5)

                });
            }

            c.Close();
            db.Close();
            return contacts;
        }


         //retrieve entries based off of a search location or term
          public IList<EntryInfo> GetContactsByColumn2(string column2Term)
          {
            SQLiteDatabase db = this.ReadableDatabase;

            //get the selected table
            string table = GetPrefs("SelectedTable");
            //get said table from query...
            ICursor tableCursor = db.Query(table, null, null, null, null, null, null);
            //...to retrieve said table's column names
            string[] columns = tableCursor.GetColumnNames();
            string searchTermColumn = tableCursor.GetColumnName(2);

            ICursor c = db.Query(table, columns, "upper(" + searchTermColumn + ") LIKE ?", new string[] { "%" + column2Term.ToUpper() + "%" }, null, null, null, null);

            var contacts = new List<EntryInfo>();

            while (c.MoveToNext())
            {
                contacts.Add(new EntryInfo
                {
                    id = c.GetInt(0),
                    column1 = c.GetString(1),
                    column2 = c.GetString(2),
                    column3 = c.GetString(3),
                    column4 = c.GetString(4),
                    dateAdded = c.GetString(5)
                });
            }

            c.Close();
            db.Close();
            return contacts;
        }


          //retrieve entries based off of a search age
          public IList<EntryInfo> GetContactsByColumn3(string column3Term)
          {
            SQLiteDatabase db = this.ReadableDatabase;

            //get the selected table
            string table = GetPrefs("SelectedTable");
            //get said table from query...
            ICursor tableCursor = db.Query(table, null, null, null, null, null, null);
            //...to retrieve said table's column names
            string[] columns = tableCursor.GetColumnNames();
            string searchTermColumn = tableCursor.GetColumnName(3);

            ICursor c = db.Query(table, columns, "upper(" + searchTermColumn + ") LIKE ?", new string[] { "%" + column3Term.ToUpper() + "%" }, null, null, null, null);

            var contacts = new List<EntryInfo>();

            while (c.MoveToNext())
            {
                contacts.Add(new EntryInfo
                {
                    id = c.GetInt(0),
                    column1 = c.GetString(1),
                    column2 = c.GetString(2),
                    column3 = c.GetString(3),
                    column4 = c.GetString(4),
                    dateAdded = c.GetString(5)

                });
            }

            c.Close();
            db.Close();
            return contacts;
        }

          public IList<EntryInfo> GetContactsByColumn4(string column4Term)
          {
            SQLiteDatabase db = this.ReadableDatabase;

            //get the selected table
            string table = GetPrefs("SelectedTable");
            //get said table from query...
            ICursor tableCursor = db.Query(table, null, null, null, null, null, null);
            //...to retrieve said table's column names
            string[] columns = tableCursor.GetColumnNames();
            string searchTermColumn = tableCursor.GetColumnName(3);

            ICursor c = db.Query(table,columns, "upper(" + searchTermColumn + ") LIKE ?", new string[] { "%" + column4Term.ToUpper() + "%" }, null, null, null, null);


            var contacts = new List<EntryInfo>();

            while (c.MoveToNext())
            {
                contacts.Add(new EntryInfo
                {


                    id = c.GetInt(0),
                    column1 = c.GetString(1),
                    column2 = c.GetString(2),
                    column3 = c.GetString(3),
                    column4 = c.GetString(4),
                    dateAdded = c.GetString(5)

                });
            }

            c.Close();
            db.Close();
            return contacts;
        }

        //add contacts to content values and insert into database
        public void AddContact(EntryInfo entry)
        {
            SQLiteDatabase db = this.ReadableDatabase;

            //get the selected table
            string table = GetPrefs("SelectedTable");
            //get said table from query
            ICursor tableCursor = db.Query(table, null, null, null, null, null, null);
            //retrieve said table's columns by index
            ContentValues contentValues = new ContentValues();
            contentValues.Put(tableCursor.GetColumnName(1), entry.column1);
            contentValues.Put(tableCursor.GetColumnName(2), entry.column2);
            contentValues.Put(tableCursor.GetColumnName(3), entry.column3);
            contentValues.Put(tableCursor.GetColumnName(4), entry.column4);
            contentValues.Put("DateAdded", entry.dateAdded);

            db.Insert(table, null, contentValues);
        }

        //retrieve entry by id
        public ICursor GetContactById(int id)
        {
            //get the selected table
            string table = GetPrefs("SelectedTable");

            SQLiteDatabase db = this.ReadableDatabase;
            ICursor res = db.RawQuery("SELECT * FROM " + table + " WHERE Id=" + id + "", null);
            return res;
        }

        //update the contact on edit
        public void UpdateContact(EntryInfo entry)
        {
            if (entry == null)
            {
                return;
            }


            SQLiteDatabase db = this.WritableDatabase;

            //get the selected table
            string table = GetPrefs("SelectedTable");
            //get said table from query...
            ICursor tableCursor = db.Query(table, null, null, null, null, null, null);
            //...to retrieve said table's column names
            string[] columns = tableCursor.GetColumnNames();
            string searchTermColumn = tableCursor.GetColumnName(3);

            ContentValues vals = new ContentValues();
            vals.Put(tableCursor.GetColumnName(1), entry.column1);
            vals.Put(tableCursor.GetColumnName(2), entry.column2);
            vals.Put(tableCursor.GetColumnName(3), entry.column3);
            vals.Put(tableCursor.GetColumnName(4), entry.column4);
            vals.Put("DateAdded", entry.dateAdded);


            ICursor cursor = db.Query(table, columns, "Id=?", new string[] { entry.id.ToString() }, null, null, null, null);

            if (cursor != null)
            {
                if (cursor.MoveToFirst())
                {
                    // update the row
                    db.Update(table, vals, "Id=?", new String[] { cursor.GetString(0) });
                }

                cursor.Close();
            }

        }

        //delete entry
        public void DeleteContact(string entryId)
        {
            if (entryId == null)
            {
                return;
            }

            SQLiteDatabase db = this.ReadableDatabase;

            //get the selected table
            string table = GetPrefs("SelectedTable");
            //get said table from query...
            ICursor tableCursor = db.Query(table, null, null, null, null, null, null);
            //...to retrieve said table's column names
            string[] columns = tableCursor.GetColumnNames();

            ICursor cursor = db.Query(table,
                    columns, "Id=?", new string[] { entryId }, null, null, null, null);

            if (cursor != null)
            {
                if (cursor.MoveToFirst())
                {
                    db.Delete(table, "Id=?", new String[] { cursor.GetString(0) });
                }
                cursor.Close();
            }

        }

        public void DeleteTable(string table)
        {
            SQLiteDatabase db = this.ReadableDatabase;
            db.ExecSQL("DROP TABLE IF EXISTS " + table);
        }

        private static void SetPrefs(string name, string value)
        {
            Preferences.Set(name, value);
        }

        //get the preference
        private static string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
        }


        //Table methods

        public void CreateNewTable(SQLiteDatabase db)
        {
            OnCreate(db);
        }

        //retieve list of tables
        public IList<TableInfo> GetAllTables()
        {
            //AND name IS NOT 'sqlite_sequence' AND name IS NOT 'android_metadata' AND name IS NOT 'DummyTable'
            SQLiteDatabase db = this.ReadableDatabase;
            ICursor c = db.RawQuery("SELECT name FROM sqlite_master WHERE type='table' AND name IS NOT 'sqlite_sequence' AND name IS NOT 'android_metadata' AND name IS NOT 'DummyTable'", null); //will return the names of table; exclue the system reserved tables from the query

            var tables = new List<TableInfo>();

            while (c.MoveToNext())
            {
                tables.Add(new TableInfo
                {
                    tableName = c.GetString(0)
                });
            }

            c.Close();
            db.Close();
            return tables;
        }

        //will have to determine the type of function to get from the table depending on the type the user selected!
        public dynamic GetFunction(string dataTypeSelected)
        {
            switch(dataTypeSelected)
            {
                case "TEXT":
                    break;
                case "INTEGER":
                    break;
                case "REAL":
                    break;
                case "BLOB":
                    break;

            }
            string hey = "";
            int heyo = 8;
            float hio = 9.8f;
            byte[] heyyy = {1,2,3 };           
            return heyyy;
        }
    }
}