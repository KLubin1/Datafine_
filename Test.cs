using Android.Content;
using Android.Database.Sqlite;
using System;

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