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
    interface IPrefs
    {
        void SetPrefs(string name, string value);
        string GetPrefs(string name);

    }
}