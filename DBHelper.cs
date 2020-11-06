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

        private static string tableName = GetPrefs("table_name");
        private static string column1 = GetPrefs("column1");
        private static string column2 = GetPrefs("column2");
        private static string column3 = GetPrefs("column3");
        private static string column4 = GetPrefs("column4");

        string createTable =
            "CREATE TABLE IF NOT EXISTS " + tableName + " (" +
            "Id INTEGER PRIMARY KEY AUTOINCREMENT, " +
            column1 + " TEXT NOT NULL, " +
            column2 + " TEXT NOT NULL, " +
            column3 + " TEXT NOT NULL, " +
            column4 + " TEXT NOT NULL, " +
            "DateAdded TEXT NOT NULL)"
            ;

        public DBHelper(Context c) : base(c, DATABASE_NAME, null, DATABASE_VERSION)
        {

        }


        //create table
        public override void OnCreate(SQLiteDatabase db)
        {
            db.ExecSQL(createTable);
        }

        //upgrade version of table by dropping it and recreating it
        public override void OnUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
        {
            db.ExecSQL("DROP TABLE IF EXISTS " + tableName);
            OnCreate(db);
        }

        //retrive the info for processing and formating them to a cursor
        public virtual IList<EntryInfo> GetAllContacts()
        {
            SQLiteDatabase db = this.ReadableDatabase;
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
        public virtual IList<EntryInfo> GetContactsByColumn1(string column1)
        {
            SQLiteDatabase db = this.ReadableDatabase;

            ICursor c = db.Query(tableName, new string[] { "Id", column1, column2, column3, column4, "DateAdded" }, "upper(" + column1 + ") LIKE ?", new string[] { "%" + column1.ToUpper() + "%" }, null, null, null, null);

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
          public virtual IList<EntryInfo> GetContactsByColumn2(string locationToSearch)
          {
            SQLiteDatabase db = this.ReadableDatabase;

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
          public virtual IList<EntryInfo> GetContactsByColumn3(string ageToSearch)
          {
            SQLiteDatabase db = this.ReadableDatabase;

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

          public virtual IList<EntryInfo> GetContactsByColumn4(string idToSearch)
          {
            SQLiteDatabase db = this.ReadableDatabase;

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
        public virtual void AddContact(EntryInfo entry)
        {
            SQLiteDatabase db = this.ReadableDatabase;
            ContentValues contentValues = new ContentValues();
            contentValues.Put(column1, entry.column1);
            contentValues.Put(column2, entry.column2);
            contentValues.Put(column3, entry.column3);
            contentValues.Put(column4, entry.column4);
            contentValues.Put("DateAdded", entry.dateAdded);

            db.Insert(tableName, null, contentValues);
        }

        //retrieve entry by id
        public virtual ICursor GetContactById(int id)
        {
            SQLiteDatabase db = this.ReadableDatabase;
            ICursor res = db.RawQuery("SELECT * FROM " + tableName + " WHERE Id=" + id + "", null);
            return res;
        }

        //update the contact on edit
        public virtual void UpdateContact(EntryInfo entry)
        {
            if (entry == null)
            {
                return;
            }


            SQLiteDatabase db = this.WritableDatabase;

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
        public virtual void DeleteContact(string entryId)
        {
            if (entryId == null)
            {
                return;
            }

            SQLiteDatabase db = this.ReadableDatabase;
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

        private static void SetPrefs(string name, string value)
        {
            Preferences.Set(name, value);
        }

        //get the preference
        private static string GetPrefs(string name)
        {
            return Preferences.Get(name, null);
        }
    }
}