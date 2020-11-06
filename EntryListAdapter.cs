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
    public partial class EntryListAdapter : BaseAdapter<EntryInfo>
    {
        IList<EntryInfo> tableList;
        private LayoutInflater mInflater;
        private Context activity;

        public EntryListAdapter(Context _context, IList<EntryInfo> _tableList)
        {
            this.activity = _context;
            this.tableList = _tableList;
            this.mInflater = (LayoutInflater)activity.GetSystemService(Context.LayoutInflaterService);
        }
        public override EntryInfo this[int position]
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
                convertView = mInflater.Inflate(Resource.Layout.entries_listview, null);
                holder = new TableViewHolder();


                //at this point these are null, so they will throw null at the next block
                holder.column1 = convertView.FindViewById<TextView>(Resource.Id.tableColumn1);
                holder.column2 = convertView.FindViewById<TextView>(Resource.Id.tableColumn2);
                holder.dateAdded = convertView.FindViewById<TextView>(Resource.Id.tableDateAdded);
                holder.column3 = convertView.FindViewById<TextView>(Resource.Id.tableColumn3);
                holder.column4 = convertView.FindViewById<TextView>(Resource.Id.tableColumn4);

                convertView.Tag = holder;

            }
            else
            {
                holder = convertView.Tag as TableViewHolder;
            }

            //set the data
            holder.column1.Text = tableList[position].column1.ToString();
            holder.dateAdded.Text = tableList[position].dateAdded.ToString();
            holder.column2.Text = tableList[position].column2.ToString();
            holder.column3.Text = tableList[position].column3.ToString();
            holder.column4.Text = tableList[position].column4.ToString();

            return convertView;
        }

        public IList<EntryInfo> GetAllData()
        {
            return tableList;
        }


        public class TableViewHolder : Java.Lang.Object
        {

            public TextView column1 { get; set; }
            public TextView column2 { get; set; }
            public TextView column3 { get; set; }
            public TextView column4 { get; set; }
            public TextView dateAdded { get; set; }
        }

    }
}