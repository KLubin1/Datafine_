using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Support.V7.App;
using Android.Views;
using Android.Widget;

namespace Datafine
{
    [Activity(Label = "TableDescriptionPage")]
    public class TableDescriptionPage : AppCompatActivity
    {
        DateTime now = DateTime.Now;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.table_description_layout);

            TextView dateAdded = FindViewById<TextView>(Resource.Id.desc_dateAdded);

            //set the toolbar
            Android.Support.V7.Widget.Toolbar toolbar = FindViewById<Android.Support.V7.Widget.Toolbar>(Resource.Id.toolbar);
            SetSupportActionBar(toolbar);

            SupportActionBar.Title = "Table Description";
            SupportActionBar.SetDisplayHomeAsUpEnabled(true);

            //set the time; since it doesnt matter since there was no actual creation time, just the time as of now.
            dateAdded.Text = now.ToString();
        }

        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            switch (item.ItemId)
            {
                case Android.Resource.Id.Home:
                    Finish();
                    return true;

                default:
                    return base.OnOptionsItemSelected(item);
            }
        }
    }
}