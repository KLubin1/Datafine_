namespace Datafine
{
    interface IPrefs
    {
        void SetPrefs(string name, object value);
        dynamic GetPrefs(string name);

    }
}