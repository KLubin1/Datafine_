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

namespace Datafine
{
    class DBHelper : SQLiteOpenHelper
    {
        //until I can find a way to take in user input, it would have to create a dummy table with static values
        //database name
        private const string DATABASE_NAME = "Kaleah.db3";
        //database version
        private const int DATABASE_VERSION = 1;

        public DBHelper(Context c) : base(c, DATABASE_NAME, null, DATABASE_VERSION)
        {

        }

        //create table
        public override void OnCreate(SQLiteDatabase db)
        {
            db.ExecSQL(@"
                        CREATE TABLE IF NOT EXISTS TableOne(
                        Id INTEGER PRIMARY KEY AUTOINCREMENT,
                        Name TEXT NOT NULL,
                        PhoneNumber  TEXT NOT NULL, 
                        Location TEXT NOT NULL,
                        Age TEXT NOT NULL,
                        DateAdded TEXT NOT NULL)
                        ");
        }

        //upgrade version of table by dropping it and recreating it
        public override void OnUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
        {
            db.ExecSQL("DROP TABLE IF EXISTS TableOne");
            OnCreate(db);
        }

        //retrive the info for processing and formating them to a cursor
        public IList<TableInfo> GetAllContacts()
        {
            SQLiteDatabase db = this.ReadableDatabase;
            ICursor c = db.Query("TableOne", new string[] { "Id", "Name", "PhoneNumber", "Location", "Age", "DateAdded" }, null, null, null, null, null); //can organize the retrieval with any values or way here
            var contacts = new List<TableInfo>();
            while (c.MoveToNext())
            {
                contacts.Add(new TableInfo
                {
                    id = c.GetInt(0),
                    name = c.GetString(1),
                    phoneNumber = c.GetString(2),
                    location = c.GetString(3),
                    age = c.GetString(4),
                    dateAdded = c.GetString(5)

                });
                
            }
            c.Close();
            db.Close();
            return contacts;
        }

        //retrieve entries based off of a search pattern or term
        public IList<TableInfo> GetContactsBySearchName(string nameToSearch)
        {

            SQLiteDatabase db = this.ReadableDatabase;

            ICursor c = db.Query("TableOne", new string[] { "Id", "Name", "PhoneNumber", "Location", "Age", "DateAdded" }, "upper(Name) LIKE ?", new string[] { "%" + nameToSearch.ToUpper() + "%" }, null, null, null, null);

            var contacts = new List<TableInfo>();

            while (c.MoveToNext())
            {
                contacts.Add(new TableInfo
                {
                    id = c.GetInt(0),
                    name = c.GetString(1),
                    phoneNumber = c.GetString(2),
                    location = c.GetString(3),
                    age = c.GetString(4),
                    dateAdded = c.GetString(5)

                });
            }

            c.Close();
            db.Close();
            return contacts;
        }

        //add contacts to content values and insert into database
        public void AddContact(TableInfo entry)
        {
            SQLiteDatabase db = this.ReadableDatabase;
            ContentValues contentValues = new ContentValues();
            contentValues.Put("Name", entry.name);
            contentValues.Put("PhoneNumber", entry.phoneNumber);
            contentValues.Put("Location", entry.location);
            contentValues.Put("Age", entry.age);
            contentValues.Put("DateAdded", entry.dateAdded);

            db.Insert("TableOne", null, contentValues);
        }

        //retrieve entry by id
        public ICursor getContactById(int id)
        {
            SQLiteDatabase db = this.ReadableDatabase;
            ICursor res = db.RawQuery("SELECT * FROM TableOne WHERE Id=" + id + "", null);
            return res;
        }

        //update the contact on edit
        public void UpdateContact(TableInfo entry)
        {
            if (entry == null)
            {
                return;
            }


            SQLiteDatabase db = this.WritableDatabase;

            ContentValues vals = new ContentValues();
            vals.Put("Name", entry.name);
            vals.Put("PhoneNumber", entry.phoneNumber);
            vals.Put("Location", entry.location);
            vals.Put("Age", entry.age);
            vals.Put("DateAdded", entry.dateAdded);


            ICursor cursor = db.Query("TableOne",
                    new String[] { "Id", "Name", "PhoneNumber", "Location", "Age", "DateAdded" }, "Id=?", new string[] { entry.id.ToString() }, null, null, null, null);

            if (cursor != null)
            {
                if (cursor.MoveToFirst())
                {
                    // update the row
                    db.Update("TableOne", vals, "Id=?", new String[] { cursor.GetString(0) });
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
            ICursor cursor = db.Query("TableOne",
                    new String[] { "Id", "Name", "PhoneNumber","Location", "Age", "DateAdded" }, "Id=?", new string[] { entryId }, null, null, null, null);

            if (cursor != null)
            {
                if (cursor.MoveToFirst())
                {
                    db.Delete("TableOne", "Id=?", new String[] { cursor.GetString(0) });
                }
                cursor.Close();
            }

        }
    }
}