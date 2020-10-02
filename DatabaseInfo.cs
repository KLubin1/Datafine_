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

namespace Datafine
{
    public class DatabaseInfo
    {
        public string title { get; set; }
        public string dateAdded { get; set; }
        public string description { get; set; }
        
        public DatabaseInfo() { }
        public DatabaseInfo(string _title, string _dateAdded, string _description)
        {
            _title = title;
            _dateAdded = dateAdded;
            _description = description;
        }
        public static explicit operator DatabaseInfo(Java.Lang.Object v)
        {
            throw new NotImplementedException();
        }
    }
}