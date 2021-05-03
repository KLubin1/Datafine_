using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Preferences;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Xamarin.Essentials;

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
            //the command control button
            ImageView cc;

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

                cc = convertView.FindViewById<ImageView>(Resource.Id.lr_ccBtn);

                //code for cc adapted from EntryViewPage
                cc.Click += (object sender, EventArgs e) =>
                {
                    var selectedItem = tableList[position];
                    DBHelper db = new DBHelper(activity);

                    //disable the pop-up menu if read-only is enabled

                    ISharedPreferences prefs = PreferenceManager.GetDefaultSharedPreferences(Application.Context);
                    bool readOnly = prefs.GetBoolean("read_only", false);
                    //if read-only is false, then execute code like normal...
                    if (readOnly == false)
                    {
                        //shared preferences to make a flag to direct the upgrade functionality in TableCreation
                        //ISharedPreferences sharedPreferences = PreferenceManager.GetDefaultSharedPreferences(this);
                        ISharedPreferences sharedPreferences = Application.Context.GetSharedPreferences("Upgrade", FileCreationMode.Private);
                        ISharedPreferencesEditor editor = sharedPreferences.Edit();
                        editor.PutBoolean("UpgradeFlag", false);


                        //set and launch the popup menu 
                        var commandControl = new Android.Widget.PopupMenu(activity, (View)sender);
                        commandControl.Inflate(Resource.Menu.command_control);
                        commandControl.Show();

                        commandControl.MenuItemClick += (s, a) =>
                        {
                            switch (a.Item.ItemId)
                            {
                                case Resource.Id.cc_Edit:
                                    var intent = new Intent(activity, typeof(EntryCreation));

                                    //this is "saving" the id so to refer back to this entry in the table creation page on update
                                    intent.PutExtra("Id", selectedItem.id.ToString());
                                    //set the flag to true to activate update functionality in table creation
                                    editor.PutBoolean("UpgradeFlag", true);
                                    editor.Apply();
                                    activity.StartActivity(intent);
                                    break;
                                case Resource.Id.cc_Delete:
                                    //delete entry from position
                                    DeleteEntry(position);

                                    break;
                                case Resource.Id.cc_ViewInfo:
                                    //handle full data of entry
                                    activity.StartActivity(typeof(TableDescriptionPage));
                                    break;
                            }
                        };
                    }

                    else
                    {
                        //...do nothing
                        //include a banner that says something along the lines of "read-only is enabled"
                        Toast.MakeText(activity, "Read-Only is Enabled", ToastLength.Long).Show();
                    }
                };

                convertView.Tag = holder;
                cc.Tag = holder;

            }
            else
            {
                cc = convertView.FindViewById<ImageView>(Resource.Id.lr_ccBtn);
                holder = convertView.Tag as TableViewHolder;
                cc.Tag = position;
            }

            //set the data
            holder.column1.Text = tableList[position].column1.ToString();
            holder.dateAdded.Text = tableList[position].dateAdded.ToString();
            holder.column2.Text = tableList[position].column2.ToString();
            holder.column3.Text = tableList[position].column3.ToString();
            holder.column4.Text = tableList[position].column4.ToString();


            //get and set the selected table's dominant column
            string selTable = Preferences.Get("SelectedTable", null);
            string selTableDomCol = Preferences.Get(selTable + "_dom_col", null);

            //Size: 25, Style: bold
            switch (selTableDomCol)
            {
                case ("Column1"):
                    holder.column1.SetTextSize(Android.Util.ComplexUnitType.Sp, 20);
                    holder.column1.SetTypeface(Android.Graphics.Typeface.Default, Android.Graphics.TypefaceStyle.Bold);
                    break;
                case ("Column2"):
                    holder.column2.SetTextSize(Android.Util.ComplexUnitType.Sp, 20);
                    holder.column2.SetTypeface(Android.Graphics.Typeface.Default, Android.Graphics.TypefaceStyle.Bold);
                    break;
                case ("Column3"):
                    holder.column3.SetTextSize(Android.Util.ComplexUnitType.Sp, 20);
                    holder.column3.SetTypeface(Android.Graphics.Typeface.Default, Android.Graphics.TypefaceStyle.Bold);
                    break;
                case ("Column4"):
                    holder.column4.SetTextSize(Android.Util.ComplexUnitType.Sp, 20);
                    holder.column4.SetTypeface(Android.Graphics.Typeface.Default, Android.Graphics.TypefaceStyle.Bold);
                    break;
                default:
                    //column 1 is default
                    holder.column1.SetTextSize(Android.Util.ComplexUnitType.Sp, 20);
                    holder.column1.SetTypeface(Android.Graphics.Typeface.Default, Android.Graphics.TypefaceStyle.Bold);
                    break;

            }




            return convertView;
        }


        public void DeleteEntry(int position)
        {
            var selectedItem = tableList[position];
            DBHelper db = new DBHelper(activity);
            //alert dialog to confirm and execute deletion
            AlertDialog.Builder builder = new AlertDialog.Builder(activity);
            AlertDialog confirm = builder.Create();
            confirm.SetTitle("Confirm Deletion");
            confirm.SetMessage("Delete Entry?");
            confirm.SetButton("OK", (sender, ev) =>
            {
                //get the position of the deletion was called and delete the view, then finally, delete the actual entry
                var poldel = sender;

                tableList.Remove(selectedItem);

                db.DeleteContact(selectedItem.id.ToString());
                NotifyDataSetChanged();

                //Recreate();
                Toast.MakeText(activity, "Entry Deleted Succesfully!", ToastLength.Long).Show();

            });
            confirm.SetButton2("Cancel", (sender, ev) =>
            {

            });

            confirm.Show();
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