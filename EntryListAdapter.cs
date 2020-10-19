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
                convertView = mInflater.Inflate(Resource.Layout.listview_table, null);
                holder = new TableViewHolder();
                

                //at this point these are null, so they will throw null at the next block
                holder.name = convertView.FindViewById<TextView>(Resource.Id.tableName);
                holder.phoneNumber = convertView.FindViewById<TextView>(Resource.Id.tablePhoneNumber);
                holder.dateAdded = convertView.FindViewById<TextView>(Resource.Id.tableDateAdded);
                holder.location = convertView.FindViewById<TextView>(Resource.Id.tableLocation);
                holder.age = convertView.FindViewById<TextView>(Resource.Id.tableAge);

                convertView.Tag = holder;
              
            }
            else
            {
                holder = convertView.Tag as TableViewHolder;
            }

            //set the data
            holder.name.Text = tableList[position].name.ToString();
            holder.dateAdded.Text = tableList[position].dateAdded.ToString();
            holder.phoneNumber.Text = tableList[position].phoneNumber.ToString();
            holder.location.Text = tableList[position].location.ToString();
            holder.age.Text = tableList[position].age.ToString();
           
            return convertView;
        }

        public IList<EntryInfo> GetAllData()
        {
            return tableList;
        }


        public class TableViewHolder : Java.Lang.Object
        {

            public TextView name { get; set; }
            public TextView phoneNumber { get; set; }
            public TextView location { get; set; }
            public TextView age { get; set; }
            public TextView dateAdded { get; set; }
        }


    }
}