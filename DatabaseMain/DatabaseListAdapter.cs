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
    public partial class DatabaseListAdapter : BaseAdapter<DatabaseInfo>
    {
        IList<DatabaseInfo> databaseList;
        private LayoutInflater mInflater;
        private Context activity;

        public DatabaseListAdapter(Context _context, IList<DatabaseInfo> _databaseList)
        {
            this.activity = _context;
            databaseList = _databaseList;
            mInflater = (LayoutInflater)activity.GetSystemService(Context.LayoutInflaterService);
        }
        public override DatabaseInfo this[int position] 
        {
            get { return databaseList[position]; }
        }

        public override int Count 
        {
            get { return databaseList.Count; }
        }

        public override long GetItemId(int position)
        {
            return position;
        }

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            DatabaseViewHolder holder = null;

            //initialize the data
            if (convertView == null)
            {
                convertView = mInflater.Inflate(Resource.Layout.listview_database_main, null);
                holder = new DatabaseViewHolder();

                holder.databaseName = convertView.FindViewById<TextView>(Resource.Id.databaseName);
                holder.dateAdded = convertView.FindViewById<TextView>(Resource.Id.dateAdded);
                holder.description = convertView.FindViewById<TextView>(Resource.Id.description);
            }
            else
            {
                holder = convertView.Tag as DatabaseViewHolder;
            }

            //set the data
            holder.databaseName.Text = databaseList[position].title.ToString();
            holder.dateAdded.Text = databaseList[position].dateAdded.ToString();
            holder.description.Text = databaseList[position].description.ToString();

            
            return convertView;
        }


        public class DatabaseViewHolder : Java.Lang.Object
        {
            public TextView databaseName { get; set; }
            public TextView dateAdded { get; set; }
            public TextView description { get; set; }
        }


        public IList<DatabaseInfo> GetAllData()
        {
            return databaseList;
        }


    }
}