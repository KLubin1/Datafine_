using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.Database;
using Android.Database.Sqlite;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Datafine
{
    abstract class Test : SQLiteOpenHelper
    {
        //database name
        private const string DATABASE_NAME = "Kaleah.db3";
        //database version
        private const int DATABASE_VERSION = 1;

        public Test(Context c) : base(c, DATABASE_NAME, null, DATABASE_VERSION)
        {
        }
        public override void OnCreate(SQLiteDatabase db)
        {
            throw new NotImplementedException();
        }

        public override void OnUpgrade(SQLiteDatabase db, int oldVersion, int newVersion)
        {
           
        }
    }
}