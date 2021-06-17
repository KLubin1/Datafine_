namespace Datafine
{
    public class EntryInfo
    {
        public int id { get; set; }
        public string column1 { get; set; }
        public string column2 { get; set; }
        public string column3 { get; set; }
        public string column4 { get; set; }
        public string dateAdded { get; set; }

        public EntryInfo() { }
        public EntryInfo(string _column1, string _column2, string _column3, string _column4, string _dateAdded)
        {
            _column1 = this.column1;
            _column2 = this.column2;
            _column3 = this.column3;
            _column4 = this.column4;
            _dateAdded = this.dateAdded;

        }

    }
}