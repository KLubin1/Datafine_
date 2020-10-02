package crc64ccef0fc746faa48b;


public class DatabaseListAdapter_DatabaseViewHolder
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Datafine.DatabaseListAdapter+DatabaseViewHolder, Datafine", DatabaseListAdapter_DatabaseViewHolder.class, __md_methods);
	}


	public DatabaseListAdapter_DatabaseViewHolder ()
	{
		super ();
		if (getClass () == DatabaseListAdapter_DatabaseViewHolder.class)
			mono.android.TypeManager.Activate ("Datafine.DatabaseListAdapter+DatabaseViewHolder, Datafine", "", this, new java.lang.Object[] {  });
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
