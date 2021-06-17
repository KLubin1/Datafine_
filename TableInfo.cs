using System;

namespace Datafine
{
    public class TableInfo
    {
        public string tableName { get; set; }
        public string dateAdded { get; set; }
        public string description { get; set; }

        public TableInfo() { }
        public TableInfo(string _tableName, string _dateAdded, string _description)
        {
            _tableName = tableName;
            _dateAdded = dateAdded;
            _description = description;
        }
        public static explicit operator TableInfo(Java.Lang.Object v)
        {
            throw new NotImplementedException();
        }
    }
}