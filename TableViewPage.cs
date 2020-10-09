using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Views;
using Android.Widget;

namespace Datafine
{
    [Activity(Label = "TableViewPage")]
    public class TableViewPage : Activity
    {
        ListView listView;
        IList<TableInfo> itemList = null;
        
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_view_layout);

            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.addEntryFab);
            listView = FindViewById<ListView>(Resource.Id.tableListView);
            //load entries
            fab.Click += FabOnClick;
            LoadEntries();
         
        }

         //load entries unto the listview
        private void LoadEntries() 
        {
            DBHelper dbVals = new DBHelper(this);
            //load data...
            itemList = dbVals.GetAllContacts();

            if(listView == null)
            {
                //add a message saying the database is empty make a entry to start 
            }

            listView.Adapter = new TableListAdapter(this, itemList);
            listView.ItemLongClick += listView_ItemLongClick;
        }

        //execute view on data in listview on long click
        //*But what I want this to really do is to disable the control command until it is long pressed, meaning that it's ready for editing and managing.
        private void listView_ItemLongClick(object sender, AdapterView.ItemLongClickEventArgs e)
        {
            TableInfo pb = itemList[e.Position];

            var activityAddEdit = new Intent(this, typeof(TableCreation));
            activityAddEdit.PutExtra("Id", pb.id.ToString());
            activityAddEdit.PutExtra("Name", pb.name);
            StartActivity(activityAddEdit);
        }

        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            Intent intent = new Intent(this, typeof(TableCreation));
            StartActivity(intent);

        }
    }
}