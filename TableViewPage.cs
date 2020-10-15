using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Preferences;
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

            /*editButton.Enabled = false;
            deleteButton.Enabled = false;
            moveButton.Enabled = false;
            starButton.Enabled = false;*/

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
            listView.ItemLongClick += listView_ItemLongClick;
        }

        //execute view on data in listview on long click
        //*But what I want this to really do is to disable the control command until it is long pressed, meaning that it's ready for editing and managing.
        private void listView_ItemLongClick(object sender, AdapterView.ItemLongClickEventArgs e)
        {
            var selectedItem = itemList[e.Position];
            DBHelper db = new DBHelper(this);

            //shared preferences to make a flag to direct the upgrade functionality in TableCreation
            //ISharedPreferences sharedPreferences = PreferenceManager.GetDefaultSharedPreferences(this);
            ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
            ISharedPreferencesEditor editor = sharedPreferences.Edit();
            

            var commandControl = new PopupMenu(this, (View)sender);
            commandControl.Inflate(Resource.Menu.command_control);
            commandControl.Show();

            commandControl.MenuItemClick += (s, a) =>
            {
                switch (a.Item.ItemId)
                {
                    case Resource.Id.cc_Edit:
                        var intent = new Intent(this, typeof(TableCreation));

                        //this is "saving" the entry so to display it in table creation page on update
                        intent.PutExtra("Id", selectedItem.id.ToString());
                        intent.PutExtra("Name", selectedItem.name);

                        intent.PutExtra("PhoneNumber", selectedItem.phoneNumber);
                        intent.PutExtra("Location", selectedItem.location);
                        intent.PutExtra("Age", selectedItem.age);
                        //set the flag 
                        editor.PutBoolean("UpgradeFlag", true);
                        editor.Apply();
                        StartActivity(intent);
                        // db.UpdateContact(selectedItem);
                        break;
                    case Resource.Id.cc_Delete:
                        DeleteEntry(e.Position);
                        break;
                }
            };

            //var activityAddEdit = new Intent(this, typeof(TableCreation));
            //activityAddEdit.PutExtra("Id", pb.id.ToString());
            //activityAddEdit.PutExtra("Name", pb.name);
            //StartActivity(activityAddEdit);

            //maybe have a toggle function instead?
            /*starButton.Enabled = true;
            editButton.Enabled = true;
            deleteButton.Enabled = true;
            moveButton.Enabled = true;*/

        }

        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            Intent intent = new Intent(this, typeof(TableCreation));
            StartActivity(intent);

        }

        public void DeleteEntry(int position)
        {
            var selectedItem = itemList[position];
            DBHelper db = new DBHelper(this);
            //alert dialog to confirm and execute deletion
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            AlertDialog confirm = builder.Create();
            confirm.SetTitle("Confirm Deletion");
            confirm.SetMessage("Delete Entry?");
            confirm.SetButton("OK", (sender, ev) =>
            {
                //get the position of the deletion was called and delete the view, then finally, delete the actual entry
                var poldel = sender;

                itemList.Remove(selectedItem);

                db.DeleteContact(selectedItem.id.ToString());
                // NotifyDataSetChanged();

                Toast.MakeText(this, "Contact Deleted", ToastLength.Short).Show();

                //Finish();
                this.Recreate();
            });
            confirm.SetButton2("Cancel", (sender, ev) =>
            {

            });

            confirm.Show();

        }
    }
}