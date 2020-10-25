	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	16
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	411
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	103
/* java_name_width: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 4899ad11-6dc5-4c49-bc25-1d5332f6587e */
	.byte	0x11, 0xad, 0x99, 0x48, 0xc5, 0x6d, 0x49, 0x4c, 0xbc, 0x25, 0x1d, 0x53, 0x32, 0xf6, 0x58, 0x7e
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	module0_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.CoordinatorLayout */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 4a8f2f38-ee52-4322-9d49-42667a03a953 */
	.byte	0x38, 0x2f, 0x8f, 0x4a, 0x52, 0xee, 0x22, 0x43, 0x9d, 0x49, 0x42, 0x66, 0x7a, 0x03, 0xa9, 0x53
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	module1_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Activity */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: a42e144a-41aa-4170-a474-b48685125b7f */
	.byte	0x4a, 0x14, 0x2e, 0xa4, 0xaa, 0x41, 0x70, 0x41, 0xa4, 0x74, 0xb4, 0x86, 0x85, 0x12, 0x5b, 0x7f
	/* entry_count */
	.word	277
	/* duplicate_count */
	.word	50
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	module2_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 2322745d-f0a8-4f26-8de2-64b2bd4e192d */
	.byte	0x5d, 0x74, 0x22, 0x23, 0xa8, 0xf0, 0x26, 0x4f, 0x8d, 0xe2, 0x64, 0xb2, 0xbd, 0x4e, 0x19, 0x2d
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.AndroidX.DrawerLayout */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: f3c62b7a-bfc0-46fe-a3c4-9fe1208f3530 */
	.byte	0x7a, 0x2b, 0xc6, 0xf3, 0xc0, 0xbf, 0xfe, 0x46, 0xa3, 0xc4, 0x9f, 0xe1, 0x20, 0x8f, 0x35, 0x30
	/* entry_count */
	.word	32
	/* duplicate_count */
	.word	2
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Core */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1e279a83-e238-4729-a628-55710bec57f8 */
	.byte	0x83, 0x9a, 0x27, 0x1e, 0x38, 0xe2, 0x29, 0x47, 0xa6, 0x28, 0x55, 0x71, 0x0b, 0xec, 0x57, 0xf8
	/* entry_count */
	.word	3
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module5_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.AndroidX.SavedState */
	.xword	.L.map_aname.5
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 23a3868f-aea4-4745-abf8-eae5d3f7928f */
	.byte	0x8f, 0x86, 0xa3, 0x23, 0xa4, 0xae, 0x45, 0x47, 0xab, 0xf8, 0xea, 0xe5, 0xd3, 0xf7, 0x92, 0x8f
	/* entry_count */
	.word	22
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module6_managed_to_java
	/* duplicate_map */
	.xword	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Android.Material */
	.xword	.L.map_aname.6
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: b66b0194-ff0b-4d02-955a-94ae9e6211ca */
	.byte	0x94, 0x01, 0x6b, 0xb6, 0x0b, 0xff, 0x02, 0x4d, 0x95, 0x5a, 0x94, 0xae, 0x9e, 0x62, 0x11, 0xca
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module7_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Essentials */
	.xword	.L.map_aname.7
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 98922c9b-781e-4516-9373-1daf2f341399 */
	.byte	0x9b, 0x2c, 0x92, 0x98, 0x1e, 0x78, 0x16, 0x45, 0x93, 0x73, 0x1d, 0xaf, 0x2f, 0x34, 0x13, 0x99
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module8_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel */
	.xword	.L.map_aname.8
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 3c58ebba-22c4-4e64-af9f-24a1856c37bb */
	.byte	0xba, 0xeb, 0x58, 0x3c, 0xc4, 0x22, 0x64, 0x4e, 0xaf, 0x9f, 0x24, 0xa1, 0x85, 0x6c, 0x37, 0xbb
	/* entry_count */
	.word	31
	/* duplicate_count */
	.word	4
	/* map */
	.xword	module9_managed_to_java
	/* duplicate_map */
	.xword	module9_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.AppCompat */
	.xword	.L.map_aname.9
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1fe0f2d1-97a7-4e89-9057-41f209c8b421 */
	.byte	0xd1, 0xf2, 0xe0, 0x1f, 0xa7, 0x97, 0x89, 0x4e, 0x90, 0x57, 0x41, 0xf2, 0x09, 0xc8, 0xb4, 0x21
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module10_managed_to_java
	/* duplicate_map */
	.xword	module10_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core */
	.xword	.L.map_aname.10
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 667242d9-8698-4187-80b8-17a8666c6f51 */
	.byte	0xd9, 0x42, 0x72, 0x66, 0x98, 0x86, 0x87, 0x41, 0x80, 0xb8, 0x17, 0xa8, 0x66, 0x6c, 0x6f, 0x51
	/* entry_count */
	.word	11
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module11_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Datafine */
	.xword	.L.map_aname.11
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 22ab85d9-c40c-4739-b6fe-c7ac6cfd022e */
	.byte	0xd9, 0x85, 0xab, 0x22, 0x0c, 0xc4, 0x39, 0x47, 0xb6, 0xfe, 0xc7, 0xac, 0x6c, 0xfd, 0x02, 0x2e
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module12_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Xamarin.Google.Guava.ListenableFuture */
	.xword	.L.map_aname.12
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1baf4ae1-294f-416a-bf71-7b1722cce451 */
	.byte	0xe1, 0x4a, 0xaf, 0x1b, 0x4f, 0x29, 0x6a, 0x41, 0xbf, 0x71, 0x7b, 0x17, 0x22, 0xcc, 0xe4, 0x51
	/* entry_count */
	.word	10
	/* duplicate_count */
	.word	3
	/* map */
	.xword	module13_managed_to_java
	/* duplicate_map */
	.xword	module13_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Fragment */
	.xword	.L.map_aname.13
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 881ed6ea-01f5-4e6a-a506-f471ee0a009c */
	.byte	0xea, 0xd6, 0x1e, 0x88, 0xf5, 0x01, 0x6a, 0x4e, 0xa5, 0x06, 0xf4, 0x71, 0xee, 0x0a, 0x00, 0x9c
	/* entry_count */
	.word	4
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module14_managed_to_java
	/* duplicate_map */
	.xword	module14_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.Common */
	.xword	.L.map_aname.14
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: f54a74eb-880d-4c76-9e44-db939b7e6dd2 */
	.byte	0xeb, 0x74, 0x4a, 0xf5, 0x0d, 0x88, 0x76, 0x4c, 0x9e, 0x44, 0xdb, 0x93, 0x9b, 0x7e, 0x6d, 0xd2
	/* entry_count */
	.word	5
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module15_managed_to_java
	/* duplicate_map */
	.xword	module15_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Loader */
	.xword	.L.map_aname.15
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 1152
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554825
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	77

	/* #1 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554827
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	60

	/* #2 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554829
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	55

	/* #3 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554831
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	62

	/* #4 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554834
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	69

	/* #5 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554836
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	83

	/* #6 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	80

	/* #7 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554838
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	72

	/* #8 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554839
	/* java_name */
	.ascii	"android/app/Application"
	.zero	80

	/* #9 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554841
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	53

	/* #10 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554842
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	85

	/* #11 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554846
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	78

	/* #12 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554857
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	69

	/* #13 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554859
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	68

	/* #14 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554850
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	74

	/* #15 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554851
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	72

	/* #16 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554847
	/* java_name */
	.ascii	"android/content/ContentValues"
	.zero	74

	/* #17 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554848
	/* java_name */
	.ascii	"android/content/Context"
	.zero	80

	/* #18 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554854
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	73

	/* #19 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554865
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	72

	/* #20 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554861
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	56

	/* #21 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554849
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	81

	/* #22 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554866
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	75

	/* #23 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554872
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	70

	/* #24 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554868
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	63

	/* #25 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554870
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	37

	/* #26 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554874
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	73

	/* #27 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554876
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	70

	/* #28 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554879
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	69

	/* #29 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554880
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	70

	/* #30 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554881
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	74

	/* #31 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554882
	/* java_name */
	.ascii	"android/content/res/TypedArray"
	.zero	73

	/* #32 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554592
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	71

	/* #33 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554593
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	71

	/* #34 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554599
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	80

	/* #35 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554595
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	71

	/* #36 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554602
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteClosable"
	.zero	65

	/* #37 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554601
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteCursorDriver"
	.zero	61

	/* #38 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554604
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteDatabase"
	.zero	65

	/* #39 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554606
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteDatabase$CursorFactory"
	.zero	51

	/* #40 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554607
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteOpenHelper"
	.zero	63

	/* #41 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554609
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteProgram"
	.zero	66

	/* #42 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554611
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteQuery"
	.zero	68

	/* #43 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554812
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	80

	/* #44 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554813
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	75

	/* #45 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554814
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	80

	/* #46 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554815
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	81

	/* #47 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554816
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	81

	/* #48 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554817
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	76

	/* #49 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554818
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	71

	/* #50 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554819
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	82

	/* #51 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554820
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	81

	/* #52 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554821
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	69

	/* #53 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554823
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	60

	/* #54 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554809
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	88

	/* #55 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554790
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	82

	/* #56 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554791
	/* java_name */
	.ascii	"android/os/Build"
	.zero	87

	/* #57 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554792
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	79

	/* #58 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554794
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	86

	/* #59 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554789
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	85

	/* #60 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554798
	/* java_name */
	.ascii	"android/os/IBinder"
	.zero	85

	/* #61 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554796
	/* java_name */
	.ascii	"android/os/IBinder$DeathRecipient"
	.zero	70

	/* #62 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554800
	/* java_name */
	.ascii	"android/os/IInterface"
	.zero	82

	/* #63 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554805
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	86

	/* #64 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554806
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	86

	/* #65 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554804
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	82

	/* #66 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554802
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	74

	/* #67 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554788
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	67

	/* #68 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554928
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	69

	/* #69 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554770
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	82

	/* #70 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554773
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	82

	/* #71 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554776
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	79

	/* #72 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554778
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	80

	/* #73 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554780
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	81

	/* #74 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554783
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	83

	/* #75 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554786
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	79

	/* #76 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554767
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	78

	/* #77 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554765
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	76

	/* #78 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554768
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	79

	/* #79 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554697
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	80

	/* #80 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554699
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	71

	/* #81 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554702
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	76

	/* #82 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554709
	/* java_name */
	.ascii	"android/view/CollapsibleActionView"
	.zero	69

	/* #83 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554713
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	79

	/* #84 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554711
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	63

	/* #85 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554704
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	71

	/* #86 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554705
	/* java_name */
	.ascii	"android/view/Display"
	.zero	83

	/* #87 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554706
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	81

	/* #88 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554722
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	80

	/* #89 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554678
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	82

	/* #90 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554680
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	73

	/* #91 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554681
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	76

	/* #92 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554683
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	68

	/* #93 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554685
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	67

	/* #94 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554715
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	86

	/* #95 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554737
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	78

	/* #96 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554721
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	82

	/* #97 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554717
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	59

	/* #98 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554719
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	58

	/* #99 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554686
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	79

	/* #100 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554740
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	79

	/* #101 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554725
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	83

	/* #102 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554664
	/* java_name */
	.ascii	"android/view/View"
	.zero	86

	/* #103 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554666
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	70

	/* #104 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554669
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	58

	/* #105 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554671
	/* java_name */
	.ascii	"android/view/View$OnLongClickListener"
	.zero	66

	/* #106 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554744
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	81

	/* #107 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554745
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	68

	/* #108 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554746
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	62

	/* #109 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554727
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	79

	/* #110 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554729
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	80

	/* #111 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554748
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	70

	/* #112 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554687
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	74

	/* #113 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554689
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"
	.zero	51

	/* #114 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554691
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	56

	/* #115 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554693
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"
	.zero	48

	/* #116 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554694
	/* java_name */
	.ascii	"android/view/Window"
	.zero	84

	/* #117 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554696
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	75

	/* #118 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554751
	/* java_name */
	.ascii	"android/view/WindowInsets"
	.zero	78

	/* #119 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554732
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	77

	/* #120 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554730
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	64

	/* #121 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554758
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	58

	/* #122 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554764
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	52

	/* #123 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554759
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	57

	/* #124 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554752
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	71

	/* #125 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554755
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	68

	/* #126 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554756
	/* java_name */
	.ascii	"android/view/inputmethod/InputMethodManager"
	.zero	60

	/* #127 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554612
	/* java_name */
	.ascii	"android/widget/AbsListView"
	.zero	77

	/* #128 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554638
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	81

	/* #129 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554614
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	77

	/* #130 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554616
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemLongClickListener"
	.zero	53

	/* #131 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554620
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	54

	/* #132 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"android/widget/BaseAdapter"
	.zero	77

	/* #133 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554629
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	82

	/* #134 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554630
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	80

	/* #135 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554631
	/* java_name */
	.ascii	"android/widget/Filter"
	.zero	82

	/* #136 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554633
	/* java_name */
	.ascii	"android/widget/Filter$FilterListener"
	.zero	67

	/* #137 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554635
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	77

	/* #138 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554636
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	68

	/* #139 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554641
	/* java_name */
	.ascii	"android/widget/ImageButton"
	.zero	77

	/* #140 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554642
	/* java_name */
	.ascii	"android/widget/ImageView"
	.zero	79

	/* #141 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554645
	/* java_name */
	.ascii	"android/widget/LinearLayout"
	.zero	76

	/* #142 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554640
	/* java_name */
	.ascii	"android/widget/ListAdapter"
	.zero	77

	/* #143 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554646
	/* java_name */
	.ascii	"android/widget/ListView"
	.zero	80

	/* #144 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554647
	/* java_name */
	.ascii	"android/widget/PopupMenu"
	.zero	79

	/* #145 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554649
	/* java_name */
	.ascii	"android/widget/PopupMenu$OnMenuItemClickListener"
	.zero	55

	/* #146 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554654
	/* java_name */
	.ascii	"android/widget/SearchView"
	.zero	78

	/* #147 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554656
	/* java_name */
	.ascii	"android/widget/SearchView$OnQueryTextListener"
	.zero	58

	/* #148 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554644
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	74

	/* #149 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554625
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	80

	/* #150 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554662
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	83

	/* #151 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"androidx/activity/ComponentActivity"
	.zero	68

	/* #152 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"androidx/activity/OnBackPressedCallback"
	.zero	64

	/* #153 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"androidx/activity/OnBackPressedDispatcher"
	.zero	62

	/* #154 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/activity/OnBackPressedDispatcherOwner"
	.zero	57

	/* #155 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar"
	.zero	71

	/* #156 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$LayoutParams"
	.zero	58

	/* #157 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener"
	.zero	46

	/* #158 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnNavigationListener"
	.zero	50

	/* #159 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554444
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$Tab"
	.zero	67

	/* #160 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$TabListener"
	.zero	59

	/* #161 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle"
	.zero	59

	/* #162 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$Delegate"
	.zero	50

	/* #163 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	42

	/* #164 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatActivity"
	.zero	63

	/* #165 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatCallback"
	.zero	63

	/* #166 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatDelegate"
	.zero	63

	/* #167 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"androidx/appcompat/graphics/drawable/DrawerArrowDrawable"
	.zero	47

	/* #168 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode"
	.zero	69

	/* #169 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554477
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode$Callback"
	.zero	60

	/* #170 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554479
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder"
	.zero	63

	/* #171 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554481
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder$Callback"
	.zero	54

	/* #172 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuItemImpl"
	.zero	62

	/* #173 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554485
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter"
	.zero	61

	/* #174 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554483
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter$Callback"
	.zero	52

	/* #175 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuView"
	.zero	66

	/* #176 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554489
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/SubMenuBuilder"
	.zero	60

	/* #177 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"androidx/appcompat/widget/AppCompatEditText"
	.zero	60

	/* #178 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554472
	/* java_name */
	.ascii	"androidx/appcompat/widget/DecorToolbar"
	.zero	65

	/* #179 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView"
	.zero	52

	/* #180 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	29

	/* #181 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar"
	.zero	70

	/* #182 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener"
	.zero	46

	/* #183 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	37

	/* #184 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout"
	.zero	52

	/* #185 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior"
	.zero	43

	/* #186 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams"
	.zero	39

	/* #187 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat"
	.zero	71

	/* #188 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	36

	/* #189 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$PermissionCompatDelegate"
	.zero	46

	/* #190 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	32

	/* #191 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554483
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity"
	.zero	68

	/* #192 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity$ExtraData"
	.zero	58

	/* #193 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554485
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback"
	.zero	64

	/* #194 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	34

	/* #195 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554489
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder"
	.zero	69

	/* #196 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554491
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder$SupportParentable"
	.zero	51

	/* #197 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"androidx/core/content/ContextCompat"
	.zero	68

	/* #198 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554474
	/* java_name */
	.ascii	"androidx/core/graphics/Insets"
	.zero	74

	/* #199 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554471
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenu"
	.zero	64

	/* #200 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenuItem"
	.zero	60

	/* #201 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider"
	.zero	70

	/* #202 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$SubUiVisibilityListener"
	.zero	46

	/* #203 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$VisibilityListener"
	.zero	51

	/* #204 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"androidx/core/view/DisplayCutoutCompat"
	.zero	65

	/* #205 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554452
	/* java_name */
	.ascii	"androidx/core/view/DragAndDropPermissionsCompat"
	.zero	56

	/* #206 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher"
	.zero	66

	/* #207 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher$Component"
	.zero	56

	/* #208 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent"
	.zero	63

	/* #209 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent2"
	.zero	62

	/* #210 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent3"
	.zero	62

	/* #211 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"androidx/core/view/TintableBackgroundView"
	.zero	62

	/* #212 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorCompat"
	.zero	58

	/* #213 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorListener"
	.zero	56

	/* #214 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorUpdateListener"
	.zero	50

	/* #215 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"androidx/core/view/WindowInsetsCompat"
	.zero	66

	/* #216 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/core/widget/TintableImageSourceView"
	.zero	59

	/* #217 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout"
	.zero	62

	/* #218 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout$DrawerListener"
	.zero	47

	/* #219 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment"
	.zero	73

	/* #220 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment$SavedState"
	.zero	62

	/* #221 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentActivity"
	.zero	65

	/* #222 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentFactory"
	.zero	66

	/* #223 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager"
	.zero	66

	/* #224 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$BackStackEntry"
	.zero	51

	/* #225 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	39

	/* #226 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$OnBackStackChangedListener"
	.zero	39

	/* #227 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentTransaction"
	.zero	62

	/* #228 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle"
	.zero	75

	/* #229 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle$State"
	.zero	69

	/* #230 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleObserver"
	.zero	67

	/* #231 */
	/* module_index */
	.word	14
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleOwner"
	.zero	70

	/* #232 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"androidx/lifecycle/LiveData"
	.zero	76

	/* #233 */
	/* module_index */
	.word	10
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/Observer"
	.zero	76

	/* #234 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStore"
	.zero	70

	/* #235 */
	/* module_index */
	.word	8
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStoreOwner"
	.zero	65

	/* #236 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager"
	.zero	70

	/* #237 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager$LoaderCallbacks"
	.zero	54

	/* #238 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"androidx/loader/content/Loader"
	.zero	73

	/* #239 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCanceledListener"
	.zero	50

	/* #240 */
	/* module_index */
	.word	15
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCompleteListener"
	.zero	50

	/* #241 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry"
	.zero	65

	/* #242 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry$SavedStateProvider"
	.zero	46

	/* #243 */
	/* module_index */
	.word	5
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistryOwner"
	.zero	60

	/* #244 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"com/google/android/material/animation/MotionSpec"
	.zero	55

	/* #245 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554469
	/* java_name */
	.ascii	"com/google/android/material/animation/MotionTiming"
	.zero	53

	/* #246 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"com/google/android/material/behavior/SwipeDismissBehavior"
	.zero	46

	/* #247 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener"
	.zero	28

	/* #248 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"com/google/android/material/expandable/ExpandableTransformationWidget"
	.zero	34

	/* #249 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"com/google/android/material/expandable/ExpandableWidget"
	.zero	48

	/* #250 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"com/google/android/material/floatingactionbutton/FloatingActionButton"
	.zero	34

	/* #251 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"com/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener"
	.zero	6

	/* #252 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"com/google/android/material/internal/ScrimInsetsFrameLayout"
	.zero	44

	/* #253 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554466
	/* java_name */
	.ascii	"com/google/android/material/internal/VisibilityAwareImageButton"
	.zero	40

	/* #254 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"com/google/android/material/navigation/NavigationView"
	.zero	50

	/* #255 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener"
	.zero	17

	/* #256 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554459
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar"
	.zero	44

	/* #257 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554460
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback"
	.zero	31

	/* #258 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554462
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar$Behavior"
	.zero	35

	/* #259 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"com/google/android/material/snackbar/ContentViewCallback"
	.zero	47

	/* #260 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554456
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar"
	.zero	58

	/* #261 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar$Callback"
	.zero	49

	/* #262 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar_SnackbarActionClickImplementor"
	.zero	27

	/* #263 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554455
	/* java_name */
	.ascii	"com/google/android/material/textfield/TextInputEditText"
	.zero	48

	/* #264 */
	/* module_index */
	.word	12
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"com/google/common/util/concurrent/ListenableFuture"
	.zero	53

	/* #265 */
	/* module_index */
	.word	7
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	49

	/* #266 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/DBHelper"
	.zero	73

	/* #267 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/EntryCreation"
	.zero	68

	/* #268 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/EntryListAdapter"
	.zero	65

	/* #269 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/EntryListAdapter_TableViewHolder"
	.zero	49

	/* #270 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/EntryViewPage"
	.zero	68

	/* #271 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/MainActivity"
	.zero	69

	/* #272 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/SplashScreen"
	.zero	69

	/* #273 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableCreation"
	.zero	68

	/* #274 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableDescriptionPage"
	.zero	61

	/* #275 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableView"
	.zero	72

	/* #276 */
	/* module_index */
	.word	11
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/Test"
	.zero	77

	/* #277 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555082
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	86

	/* #278 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555078
	/* java_name */
	.ascii	"java/io/File"
	.zero	91

	/* #279 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555079
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	81

	/* #280 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555080
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	80

	/* #281 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555084
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	86

	/* #282 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555088
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	84

	/* #283 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555085
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	84

	/* #284 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555087
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	73

	/* #285 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555091
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	83

	/* #286 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555093
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	84

	/* #287 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555090
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	83

	/* #288 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555094
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	83

	/* #289 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555095
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	89

	/* #290 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555046
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	83

	/* #291 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555020
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	86

	/* #292 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555021
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	89

	/* #293 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555047
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	81

	/* #294 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555022
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	84

	/* #295 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555023
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	88

	/* #296 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555039
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	75

	/* #297 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555040
	/* java_name */
	.ascii	"java/lang/ClassLoader"
	.zero	82

	/* #298 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555024
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	71

	/* #299 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555050
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	84

	/* #300 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555052
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	83

	/* #301 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555025
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	87

	/* #302 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555042
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	89

	/* #303 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555044
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	88

	/* #304 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555026
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	84

	/* #305 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555027
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	88

	/* #306 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555055
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	69

	/* #307 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555056
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	72

	/* #308 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555057
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	68

	/* #309 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555029
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	86

	/* #310 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555054
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	85

	/* #311 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555060
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	81

	/* #312 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555030
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	89

	/* #313 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555061
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	73

	/* #314 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555062
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	73

	/* #315 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555063
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	87

	/* #316 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555031
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	87

	/* #317 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555065
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	65

	/* #318 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555059
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	85

	/* #319 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555032
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	77

	/* #320 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555066
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	76

	/* #321 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555033
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	88

	/* #322 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555034
	/* java_name */
	.ascii	"java/lang/String"
	.zero	87

	/* #323 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555036
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	87

	/* #324 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555038
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	84

	/* #325 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555067
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	64

	/* #326 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555069
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	72

	/* #327 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555071
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	69

	/* #328 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555073
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	67

	/* #329 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555075
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	81

	/* #330 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555077
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	73

	/* #331 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554952
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	78

	/* #332 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554954
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	77

	/* #333 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554956
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	77

	/* #334 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554957
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	77

	/* #335 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554958
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	89

	/* #336 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554959
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	84

	/* #337 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554960
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	81

	/* #338 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554962
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	81

	/* #339 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554964
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	79

	/* #340 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554965
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	72

	/* #341 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554967
	/* java_name */
	.ascii	"java/net/URI"
	.zero	91

	/* #342 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554968
	/* java_name */
	.ascii	"java/net/URL"
	.zero	91

	/* #343 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554969
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	81

	/* #344 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554966
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	71

	/* #345 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554996
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	88

	/* #346 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554998
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	84

	/* #347 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555003
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	74

	/* #348 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555005
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	78

	/* #349 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555000
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	74

	/* #350 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555007
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	65

	/* #351 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555009
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	65

	/* #352 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555011
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	66

	/* #353 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555013
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	64

	/* #354 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555015
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	66

	/* #355 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555017
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	66

	/* #356 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555018
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	53

	/* #357 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554983
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	81

	/* #358 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554985
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	62

	/* #359 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554987
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	61

	/* #360 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554982
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	80

	/* #361 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554988
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	77

	/* #362 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554989
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	73

	/* #363 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554991
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	66

	/* #364 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554994
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	69

	/* #365 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554993
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	71

	/* #366 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554920
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	84

	/* #367 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554909
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	83

	/* #368 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554972
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	82

	/* #369 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554911
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	86

	/* #370 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554929
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	86

	/* #371 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554974
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	85

	/* #372 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554975
	/* java_name */
	.ascii	"java/util/Random"
	.zero	87

	/* #373 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554977
	/* java_name */
	.ascii	"java/util/concurrent/Executor"
	.zero	74

	/* #374 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554979
	/* java_name */
	.ascii	"java/util/concurrent/Future"
	.zero	76

	/* #375 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554980
	/* java_name */
	.ascii	"java/util/concurrent/TimeUnit"
	.zero	74

	/* #376 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554569
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	80

	/* #377 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554574
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	73

	/* #378 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554571
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	71

	/* #379 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554576
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	79

	/* #380 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554585
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	72

	/* #381 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554586
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	79

	/* #382 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554578
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	79

	/* #383 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554580
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	72

	/* #384 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554587
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	73

	/* #385 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554582
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	77

	/* #386 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554589
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	70

	/* #387 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554584
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	73

	/* #388 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554565
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	72

	/* #389 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554567
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	68

	/* #390 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555118
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	79

	/* #391 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554863
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	40

	/* #392 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554905
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	64

	/* #393 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	73

	/* #394 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554926
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	72

	/* #395 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554944
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	63

	/* #396 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554667
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	54

	/* #397 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554673
	/* java_name */
	.ascii	"mono/android/view/View_OnLongClickListenerImplementor"
	.zero	50

	/* #398 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554618
	/* java_name */
	.ascii	"mono/android/widget/AdapterView_OnItemLongClickListenerImplementor"
	.zero	37

	/* #399 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554651
	/* java_name */
	.ascii	"mono/android/widget/PopupMenu_OnMenuItemClickListenerImplementor"
	.zero	39

	/* #400 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554659
	/* java_name */
	.ascii	"mono/android/widget/SearchView_OnQueryTextListenerImplementor"
	.zero	42

	/* #401 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	30

	/* #402 */
	/* module_index */
	.word	9
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	30

	/* #403 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	30

	/* #404 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor"
	.zero	35

	/* #405 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	31

	/* #406 */
	/* module_index */
	.word	13
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	23

	/* #407 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554454
	/* java_name */
	.ascii	"mono/com/google/android/material/behavior/SwipeDismissBehavior_OnDismissListenerImplementor"
	.zero	12

	/* #408 */
	/* module_index */
	.word	6
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor"
	.zero	1

	/* #409 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33555037
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	69

	/* #410 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554561
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	57

	.size	map_java, 45621
/* Java to managed map: END */

