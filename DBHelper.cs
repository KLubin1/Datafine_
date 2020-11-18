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

        //PROBLEM: at this point in this class, it still holds the previous table
        //in other words, its not getting the right information to process the newly created table
        //this never gets hit the second time a new table is made...
        //when the GetAllContacts and other methods get called, they still hold unto the first preferenced valued table
        //this field and the OnCreate method wont get called again from the first time the app is initailized
        //in other words, this will only work if the app is reinitalized from the first time

        /*private static string tableName = GetPrefs("table_name");
        private static string column1 = GetPrefs("column1");
        private static string column2 = GetPrefs("column2");
        private static string column3 = GetPrefs("column3");
        private static string column4 = GetPrefs("column4");
*/

       /* readonly string createTable =
            "CREATE TABLE IF NOT EXISTS " + tableName + " (" +
            "Id INTEGER PRIMARY KEY AUTOINCREMENT, " +
            column1 + " TEXT NOT NULL, " +
            column2 + " TEXT NOT NULL, " +
            column3 + " TEXT NOT NULL, " +
            column4 + " TEXT NOT NULL, " +
            "DateAdded TEXT NOT NULL)"
            ;*/

        public DBHelper(Context c) : base(c, DATABASE_NAME, null, DATABASE_VERSION)
        {

        }


        //create table
        public override void OnCreate(SQLiteDatabase db)
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

            string tableName = GetPrefs("table_name");
            string column1 = GetPrefs("column1");
            string column2 = GetPrefs("column2");
            string column3 = GetPrefs("column3");
            string column4 = GetPrefs("column4");


            ICursor c = db.Query(tableName, new string[] { "Id", column1, column2, column3, column4, "DateAdded" }, null, null, null, null, null); //can organize the retrieval with any values or way here
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
            string column1 = GetPrefs("column1");
            string column2 = GetPrefs("column2");
            string column3 = GetPrefs("column3");
            string column4 = GetPrefs("column4");
            string tableName = GetPrefs("table_name");

            ICursor c = db.Query(tableName, new string[] { "Id", column1, column2, column3, column4, "DateAdded" }, "upper(" + column1 + ") LIKE ?", new string[] { "%" + column1Term.ToUpper() + "%" }, null, null, null, null);

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
          public IList<EntryInfo> GetContactsByColumn2(string locationToSearch)
          {
            SQLiteDatabase db = this.ReadableDatabase;

            string column1 = GetPrefs("column1");
            string column2 = GetPrefs("column2");
            string column3 = GetPrefs("column3");
            string column4 = GetPrefs("column4");
            string tableName = GetPrefs("table_name");

            ICursor c = db.Query(tableName, new string[] { "Id", column1, column2, column3, column4, "DateAdded" }, "upper(" + column1 + ") LIKE ?", new string[] { "%" + column2.ToUpper() + "%" }, null, null, null, null);

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
          public IList<EntryInfo> GetContactsByColumn3(string ageToSearch)
          {
            SQLiteDatabase db = this.ReadableDatabase;

            string column1 = GetPrefs("column1");
            string column2 = GetPrefs("column2");
            string column3 = GetPrefs("column3");
            string column4 = GetPrefs("column4");
            string tableName = GetPrefs("table_name");

            ICursor c = db.Query(tableName, new string[] { "Id", column1, column2, column3, column4, "DateAdded" }, "upper(" + column1 + ") LIKE ?", new string[] { "%" + column3.ToUpper() + "%" }, null, null, null, null);

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

          public IList<EntryInfo> GetContactsByColumn4(string idToSearch)
          {
            SQLiteDatabase db = this.ReadableDatabase;

            string column1 = GetPrefs("column1");
            string column2 = GetPrefs("column2");
            string column3 = GetPrefs("column3");
            string column4 = GetPrefs("column4");
            string tableName = GetPrefs("table_name");

            ICursor c = db.Query(tableName, new string[] { "Id", column1, column2, column3, column4, "DateAdded" }, "upper(" + column1 + ") LIKE ?", new string[] { "%" + column4.ToUpper() + "%" }, null, null, null, null);

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

            string column1 = GetPrefs("column1");
            string column2 = GetPrefs("column2");
            string column3 = GetPrefs("column3");
            string column4 = GetPrefs("column4");
            string tableName = GetPrefs("table_name");

            ContentValues contentValues = new ContentValues();
            contentValues.Put(column1, entry.column1);
            contentValues.Put(column2, entry.column2);
            contentValues.Put(column3, entry.column3);
            contentValues.Put(column4, entry.column4);
            contentValues.Put("DateAdded", entry.dateAdded);

            db.Insert(tableName, null, contentValues);
        }

        //retrieve entry by id
        public ICursor GetContactById(int id)
        {
            string tableName = GetPrefs("table_name");

            SQLiteDatabase db = this.ReadableDatabase;
            ICursor res = db.RawQuery("SELECT * FROM " + tableName + " WHERE Id=" + id + "", null);
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

            string column1 = GetPrefs("column1");
            string column2 = GetPrefs("column2");
            string column3 = GetPrefs("column3");
            string column4 = GetPrefs("column4");
            string tableName = GetPrefs("table_name");

            ContentValues vals = new ContentValues();
            vals.Put(column1, entry.column1);
            vals.Put(column2, entry.column2);
            vals.Put(column3, entry.column3);
            vals.Put(column4, entry.column4);
            vals.Put("DateAdded", entry.dateAdded);


            ICursor cursor = db.Query(tableName,
                    new String[] { "Id", column1, column2, column3, column4, "DateAdded" }, "Id=?", new string[] { entry.id.ToString() }, null, null, null, null);

            if (cursor != null)
            {
                if (cursor.MoveToFirst())
                {
                    // update the row
                    db.Update(tableName, vals, "Id=?", new String[] { cursor.GetString(0) });
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

            string column1 = GetPrefs("column1");
            string column2 = GetPrefs("column2");
            string column3 = GetPrefs("column3");
            string column4 = GetPrefs("column4");
            string tableName = GetPrefs("table_name");

            ICursor cursor = db.Query(tableName,
                    new String[] { "Id", column1, column2, column3, column4, "DateAdded" }, "Id=?", new string[] { entryId }, null, null, null, null);

            if (cursor != null)
            {
                if (cursor.MoveToFirst())
                {
                    db.Delete(tableName, "Id=?", new String[] { cursor.GetString(0) });
                }
                cursor.Close();
            }

        }

        public void DeleteTable(SQLiteDatabase db)
        {
            string tableName = GetPrefs("table_name");
            db.ExecSQL("DROP TABLE IF EXISTS " + tableName);
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

        public void CreateNewTable(SQLiteDatabase db) //this db will have to point to this database somehow in order for it to work
        {
            OnCreate(db);
        }

        public void GetAllTables(SQLiteDatabase db)
        {
            //db.ExecSQL("");
        }

    }
}