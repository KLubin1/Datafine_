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
        ImageButton editButton, deleteButton, moveButton, starButton;
        TextView suchEmpty;
        
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_view_layout);

            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.addEntryFab);
            listView = FindViewById<ListView>(Resource.Id.tableListView);
            suchEmpty = FindViewById<TextView>(Resource.Id.suchEmptyEntry);

           
            editButton = FindViewById<ImageButton>(Resource.Id.entryEditButton);
            deleteButton = FindViewById<ImageButton>(Resource.Id.entryDeleteButton);
            moveButton = FindViewById<ImageButton>(Resource.Id.entryMoveButton);
            starButton = FindViewById<ImageButton>(Resource.Id.entryStarButton);
            //load entries
            fab.Click += FabOnClick;
            LoadEntries();

            editButton.Enabled = false;
            deleteButton.Enabled = false;
            moveButton.Enabled = false;
            starButton.Enabled = false;

        }

         //load entries unto the listview
        private void LoadEntries() 
        {
            DBHelper dbVals = new DBHelper(this);
            //load data...
            itemList = dbVals.GetAllContacts();

            if(itemList.Count == 0)
            {
                //add a message saying the database is empty; make a entry to start 
                suchEmpty.Visibility = ViewStates.Visible;

            }

            listView.Adapter = new TableListAdapter(this, itemList);
            listView.ItemClick += listView_ItemLongClick;
        }

        //execute view on data in listview on long click
        //*But what I want this to really do is to disable the control command until it is long pressed, meaning that it's ready for editing and managing.
        private void listView_ItemLongClick(object sender, AdapterView.ItemClickEventArgs e)
        {
            TableInfo pb = itemList[e.Position];
            //var activityAddEdit = new Intent(this, typeof(TableCreation));
            //activityAddEdit.PutExtra("Id", pb.id.ToString());
            //activityAddEdit.PutExtra("Name", pb.name);
            //StartActivity(activityAddEdit);

            //maybe have a toggle function instead?
            starButton.Enabled = true;
            editButton.Enabled = true;
            deleteButton.Enabled = true;
            moveButton.Enabled = true;
        }

        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            Intent intent = new Intent(this, typeof(TableCreation));
            StartActivity(intent);

        }
    }
}