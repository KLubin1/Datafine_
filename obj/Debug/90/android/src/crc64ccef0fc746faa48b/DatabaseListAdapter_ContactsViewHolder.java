package crc64ccef0fc746faa48b;


public class DatabaseListAdapter_ContactsViewHolder
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Datafine.DatabaseListAdapter+ContactsViewHolder, Datafine", DatabaseListAdapter_ContactsViewHolder.class, __md_methods);
	}


	public DatabaseListAdapter_ContactsViewHolder ()
	{
		super ();
		if (getClass () == DatabaseListAdapter_ContactsViewHolder.class)
			mono.android.TypeManager.Activate ("Datafine.DatabaseListAdapter+ContactsViewHolder, Datafine", "", this, new java.lang.Object[] {  });
	}

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
