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
    class TableInfo
    {
        public int id { get; set; }
        public string name { get; set; }
        public string phoneNumber { get; set; }
        public string location { get; set; }
        public string age { get; set; }
        public string dateAdded { get; set; }

        public TableInfo() { }
        public TableInfo(string _name, string _phoneNumber, string _location, string _age, string _dateAdded)
        {
            _name = this.name;
            _phoneNumber = this.phoneNumber;
            _location = this.location;
            _age = this.age;
            _dateAdded = this.dateAdded;

        }

    }
}