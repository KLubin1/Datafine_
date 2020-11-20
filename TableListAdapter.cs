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
using Xamarin.Essentials;

namespace Datafine
{
    public class TableViewAdapter : BaseAdapter<TableInfo>
    {
        IList<TableInfo> tableList;
        private LayoutInflater mInflater;
        private Context activity;

        public TableViewAdapter(Context _context, IList<TableInfo> _tableList)
        {
            this.activity = _context;
            this.tableList = _tableList;
            this.mInflater = (LayoutInflater)activity.GetSystemService(Context.LayoutInflaterService);
        }
        public override TableInfo this[int position]
        {
            get { return tableList[position]; }
        }

        public override int Count
        {
            get { return tableList.Count; }
        }

        public override long GetItemId(int position)
        {
            return position;
        }

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            TableViewHolder holder = null;

            //initialize the data
            if (convertView == null)
            {
                convertView = mInflater.Inflate(Resource.Layout.tables_listview, null);
                holder = new TableViewHolder();

                holder.tableName = convertView.FindViewById<TextView>(Resource.Id.tableListview_name);
                holder.description = convertView.FindViewById<TextView>(Resource.Id.tableListview_description);
                holder.dateAdded = convertView.FindViewById<TextView>(Resource.Id.tableListview_dateAdded);

                convertView.Tag = holder;
            }
            else
            {
                holder = convertView.Tag as TableViewHolder;
            }

            //set the data
            //seting the table is easy enough, but somehow i need to save the corresponding description and table... It cant be the same as retriving them from a table
            holder.tableName.Text = tableList[position].tableName.ToString();
            holder.dateAdded.Text = Preferences.Get("table_created", null);
            holder.description.Text = Preferences.Get("table_description", null);

            return convertView;
        }

        public IList<TableInfo> GetAllData()
        {
            return tableList;
        }


        public class TableViewHolder : Java.Lang.Object
        {

            public TextView tableName { get; set; }
            public TextView description { get; set; }
            public TextView dateAdded { get; set; }
        }
    }
}