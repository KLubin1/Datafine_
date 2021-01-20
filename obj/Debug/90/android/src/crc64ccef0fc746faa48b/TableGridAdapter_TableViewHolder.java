package crc64ccef0fc746faa48b;


public class TableGridAdapter_TableViewHolder
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Datafine.TableGridAdapter+TableViewHolder, Datafine", TableGridAdapter_TableViewHolder.class, __md_methods);
	}


	public TableGridAdapter_TableViewHolder ()
	{
		super ();
		if (getClass () == TableGridAdapter_TableViewHolder.class)
			mono.android.TypeManager.Activate ("Datafine.TableGridAdapter+TableViewHolder, Datafine", "", this, new java.lang.Object[] {  });
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
