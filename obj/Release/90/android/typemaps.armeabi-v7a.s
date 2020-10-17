	.arch	armv7-a
	.syntax unified
	.eabi_attribute 67, "2.09"	@ Tag_conformance
	.eabi_attribute 6, 10	@ Tag_CPU_arch
	.eabi_attribute 7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute 8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute 9, 2	@ Tag_THUMB_ISA_use
	.fpu	vfpv3-d16
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute 16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute 17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute 20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute 38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 14, 0	@ Tag_ABI_PCS_R9_use
	.file	"typemaps.armeabi-v7a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",%progbits
	.type	map_module_count, %object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.long	12
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",%progbits
	.type	java_type_count, %object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.long	364
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",%progbits
	.type	java_name_width, %object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.long	94
/* java_name_width: END */

	.include	"typemaps.armeabi-v7a-shared.inc"
	.include	"typemaps.armeabi-v7a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",%progbits
	.type	map_modules, %object
	.p2align	2
	.global	map_modules
map_modules:
	/* module_uuid: 5b459123-67cc-484d-8df8-7210de5e32a8 */
	.byte	0x23, 0x91, 0x45, 0x5b, 0xcc, 0x67, 0x4d, 0x48, 0x8d, 0xf8, 0x72, 0x10, 0xde, 0x5e, 0x32, 0xa8
	/* entry_count */
	.long	9
	/* duplicate_count */
	.long	3
	/* map */
	.long	module0_managed_to_java
	/* duplicate_map */
	.long	module0_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Fragment */
	.long	.L.map_aname.0
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 296d8d24-ffe1-441d-8cd6-5fe80675e5a0 */
	.byte	0x24, 0x8d, 0x6d, 0x29, 0xe1, 0xff, 0x1d, 0x44, 0x8c, 0xd6, 0x5f, 0xe8, 0x06, 0x75, 0xe5, 0xa0
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.long	module1_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Essentials */
	.long	.L.map_aname.1
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 0d469737-7cab-4b5d-9e93-be53a4f30d70 */
	.byte	0x37, 0x97, 0x46, 0x0d, 0xab, 0x7c, 0x5d, 0x4b, 0x9e, 0x93, 0xbe, 0x53, 0xa4, 0xf3, 0x0d, 0x70
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	0
	/* map */
	.long	module2_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Android.Support.DrawerLayout */
	.long	.L.map_aname.2
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: b8133439-8cc7-4079-a9a3-fd61f42c670b */
	.byte	0x39, 0x34, 0x13, 0xb8, 0xc7, 0x8c, 0x79, 0x40, 0xa9, 0xa3, 0xfd, 0x61, 0xf4, 0x2c, 0x67, 0x0b
	/* entry_count */
	.long	5
	/* duplicate_count */
	.long	1
	/* map */
	.long	module3_managed_to_java
	/* duplicate_map */
	.long	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Loader */
	.long	.L.map_aname.3
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 256cd846-9d1d-4816-825e-cd68c3649a65 */
	.byte	0x46, 0xd8, 0x6c, 0x25, 0x1d, 0x9d, 0x16, 0x48, 0x82, 0x5e, 0xcd, 0x68, 0xc3, 0x64, 0x9a, 0x65
	/* entry_count */
	.long	24
	/* duplicate_count */
	.long	2
	/* map */
	.long	module4_managed_to_java
	/* duplicate_map */
	.long	module4_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.long	.L.map_aname.4
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 12adcf53-3624-406e-9808-95bf28fb1a0b */
	.byte	0x53, 0xcf, 0xad, 0x12, 0x24, 0x36, 0x6e, 0x40, 0x98, 0x08, 0x95, 0xbf, 0x28, 0xfb, 0x1a, 0x0b
	/* entry_count */
	.long	11
	/* duplicate_count */
	.long	1
	/* map */
	.long	module5_managed_to_java
	/* duplicate_map */
	.long	module5_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Design */
	.long	.L.map_aname.5
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: d0906070-920c-4ebd-a390-173ac972b67c */
	.byte	0x70, 0x60, 0x90, 0xd0, 0x0c, 0x92, 0xbd, 0x4e, 0xa3, 0x90, 0x17, 0x3a, 0xc9, 0x72, 0xb6, 0x7c
	/* entry_count */
	.long	2
	/* duplicate_count */
	.long	1
	/* map */
	.long	module6_managed_to_java
	/* duplicate_map */
	.long	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.LiveData.Core */
	.long	.L.map_aname.6
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: e72e94a8-8df9-49d3-b1ab-0ab743fc2949 */
	.byte	0xa8, 0x94, 0x2e, 0xe7, 0xf9, 0x8d, 0xd3, 0x49, 0xb1, 0xab, 0x0a, 0xb7, 0x43, 0xfc, 0x29, 0x49
	/* entry_count */
	.long	30
	/* duplicate_count */
	.long	4
	/* map */
	.long	module7_managed_to_java
	/* duplicate_map */
	.long	module7_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.v7.AppCompat */
	.long	.L.map_aname.7
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: f8efe2be-9814-4887-96d1-13526c13e2e4 */
	.byte	0xbe, 0xe2, 0xef, 0xf8, 0x14, 0x98, 0x87, 0x48, 0x96, 0xd1, 0x13, 0x52, 0x6c, 0x13, 0xe2, 0xe4
	/* entry_count */
	.long	7
	/* duplicate_count */
	.long	0
	/* map */
	.long	module8_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Datafine */
	.long	.L.map_aname.8
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 6ab406c2-7f04-4088-b058-2ed5df66c238 */
	.byte	0xc2, 0x06, 0xb4, 0x6a, 0x04, 0x7f, 0x88, 0x40, 0xb0, 0x58, 0x2e, 0xd5, 0xdf, 0x66, 0xc2, 0x38
	/* entry_count */
	.long	4
	/* duplicate_count */
	.long	1
	/* map */
	.long	module9_managed_to_java
	/* duplicate_map */
	.long	module9_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.Common */
	.long	.L.map_aname.9
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: e4048fd9-f99b-4e68-ab20-4fc1fb513337 */
	.byte	0xd9, 0x8f, 0x04, 0xe4, 0x9b, 0xf9, 0x68, 0x4e, 0xab, 0x20, 0x4f, 0xc1, 0xfb, 0x51, 0x33, 0x37
	/* entry_count */
	.long	2
	/* duplicate_count */
	.long	0
	/* map */
	.long	module10_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Android.Arch.Lifecycle.ViewModel */
	.long	.L.map_aname.10
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 3f11a2e3-5dba-48bb-a866-664d9584f538 */
	.byte	0xe3, 0xa2, 0x11, 0x3f, 0xba, 0x5d, 0xbb, 0x48, 0xa8, 0x66, 0x66, 0x4d, 0x95, 0x84, 0xf5, 0x38
	/* entry_count */
	.long	266
	/* duplicate_count */
	.long	49
	/* map */
	.long	module11_managed_to_java
	/* duplicate_map */
	.long	module11_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.long	.L.map_aname.11
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	.size	map_modules, 576
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",%progbits
	.type	map_java, %object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554805
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	68

	/* #1 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554807
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	51

	/* #2 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554809
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	46

	/* #3 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554811
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	53

	/* #4 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554814
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	60

	/* #5 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554816
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	74

	/* #6 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554817
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	71

	/* #7 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554818
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	63

	/* #8 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554819
	/* java_name */
	.ascii	"android/app/Application"
	.zero	71

	/* #9 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554821
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	44

	/* #10 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554822
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	76

	/* #11 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554826
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	69

	/* #12 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle"
	.zero	62

	/* #13 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Lifecycle$State"
	.zero	56

	/* #14 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleObserver"
	.zero	54

	/* #15 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/arch/lifecycle/LifecycleOwner"
	.zero	57

	/* #16 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/LiveData"
	.zero	63

	/* #17 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/Observer"
	.zero	63

	/* #18 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStore"
	.zero	57

	/* #19 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/arch/lifecycle/ViewModelStoreOwner"
	.zero	52

	/* #20 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554837
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	60

	/* #21 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554839
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	59

	/* #22 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554830
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	65

	/* #23 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554831
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	63

	/* #24 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554827
	/* java_name */
	.ascii	"android/content/ContentValues"
	.zero	65

	/* #25 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554828
	/* java_name */
	.ascii	"android/content/Context"
	.zero	71

	/* #26 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554834
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	64

	/* #27 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554845
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	63

	/* #28 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554841
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	47

	/* #29 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554829
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	72

	/* #30 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554846
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	66

	/* #31 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554852
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	61

	/* #32 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554848
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	54

	/* #33 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554850
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	28

	/* #34 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554854
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	64

	/* #35 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554856
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	61

	/* #36 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554859
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	60

	/* #37 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554860
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	61

	/* #38 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554861
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	65

	/* #39 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554862
	/* java_name */
	.ascii	"android/content/res/TypedArray"
	.zero	64

	/* #40 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554588
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	62

	/* #41 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554589
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	62

	/* #42 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554595
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	71

	/* #43 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554591
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	62

	/* #44 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554598
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteClosable"
	.zero	56

	/* #45 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554597
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteCursorDriver"
	.zero	52

	/* #46 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554600
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteDatabase"
	.zero	56

	/* #47 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554602
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteDatabase$CursorFactory"
	.zero	42

	/* #48 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554603
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteOpenHelper"
	.zero	54

	/* #49 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554605
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteProgram"
	.zero	57

	/* #50 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554607
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteQuery"
	.zero	59

	/* #51 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554792
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	71

	/* #52 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554793
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	66

	/* #53 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554794
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	71

	/* #54 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554795
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	72

	/* #55 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554796
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	72

	/* #56 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554797
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	67

	/* #57 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554798
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	62

	/* #58 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554799
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	73

	/* #59 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554800
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	72

	/* #60 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554801
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	60

	/* #61 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554803
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	51

	/* #62 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554789
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	79

	/* #63 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554777
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	73

	/* #64 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554778
	/* java_name */
	.ascii	"android/os/Build"
	.zero	78

	/* #65 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554779
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	70

	/* #66 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554781
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	77

	/* #67 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554776
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	76

	/* #68 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554786
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	77

	/* #69 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554787
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	77

	/* #70 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554785
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	73

	/* #71 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554783
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	65

	/* #72 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554775
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	58

	/* #73 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554908
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	60

	/* #74 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"android/support/design/animation/MotionSpec"
	.zero	51

	/* #75 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/support/design/animation/MotionTiming"
	.zero	49

	/* #76 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/support/design/expandable/ExpandableTransformationWidget"
	.zero	30

	/* #77 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"android/support/design/expandable/ExpandableWidget"
	.zero	44

	/* #78 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554452
	/* java_name */
	.ascii	"android/support/design/internal/ScrimInsetsFrameLayout"
	.zero	40

	/* #79 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"android/support/design/widget/FloatingActionButton"
	.zero	44

	/* #80 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554443
	/* java_name */
	.ascii	"android/support/design/widget/FloatingActionButton$OnVisibilityChangedListener"
	.zero	16

	/* #81 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554445
	/* java_name */
	.ascii	"android/support/design/widget/NavigationView"
	.zero	50

	/* #82 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554447
	/* java_name */
	.ascii	"android/support/design/widget/NavigationView$OnNavigationItemSelectedListener"
	.zero	17

	/* #83 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"android/support/design/widget/VisibilityAwareImageButton"
	.zero	38

	/* #84 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	41

	/* #85 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554466
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	57

	/* #86 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554468
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	22

	/* #87 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554470
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	32

	/* #88 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554472
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	18

	/* #89 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/support/v4/app/Fragment"
	.zero	63

	/* #90 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v4/app/Fragment$SavedState"
	.zero	52

	/* #91 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v4/app/FragmentActivity"
	.zero	55

	/* #92 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager"
	.zero	56

	/* #93 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$BackStackEntry"
	.zero	41

	/* #94 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	29

	/* #95 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"android/support/v4/app/FragmentManager$OnBackStackChangedListener"
	.zero	29

	/* #96 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554449
	/* java_name */
	.ascii	"android/support/v4/app/FragmentTransaction"
	.zero	52

	/* #97 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager"
	.zero	58

	/* #98 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"android/support/v4/app/LoaderManager$LoaderCallbacks"
	.zero	42

	/* #99 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554473
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	50

	/* #100 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554475
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	20

	/* #101 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554477
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder"
	.zero	55

	/* #102 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554479
	/* java_name */
	.ascii	"android/support/v4/app/TaskStackBuilder$SupportParentable"
	.zero	37

	/* #103 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554465
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	54

	/* #104 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v4/content/Loader"
	.zero	61

	/* #105 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCanceledListener"
	.zero	38

	/* #106 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"android/support/v4/content/Loader$OnLoadCompleteListener"
	.zero	38

	/* #107 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554462
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenu"
	.zero	50

	/* #108 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554464
	/* java_name */
	.ascii	"android/support/v4/internal/view/SupportMenuItem"
	.zero	46

	/* #109 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider"
	.zero	56

	/* #110 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$SubUiVisibilityListener"
	.zero	32

	/* #111 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"android/support/v4/view/ActionProvider$VisibilityListener"
	.zero	37

	/* #112 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554452
	/* java_name */
	.ascii	"android/support/v4/view/DisplayCutoutCompat"
	.zero	51

	/* #113 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554454
	/* java_name */
	.ascii	"android/support/v4/view/TintableBackgroundView"
	.zero	48

	/* #114 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554459
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorCompat"
	.zero	44

	/* #115 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554456
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorListener"
	.zero	42

	/* #116 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554458
	/* java_name */
	.ascii	"android/support/v4/view/ViewPropertyAnimatorUpdateListener"
	.zero	36

	/* #117 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554460
	/* java_name */
	.ascii	"android/support/v4/view/WindowInsetsCompat"
	.zero	52

	/* #118 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout"
	.zero	56

	/* #119 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v4/widget/DrawerLayout$DrawerListener"
	.zero	41

	/* #120 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v4/widget/TintableImageSourceView"
	.zero	45

	/* #121 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar"
	.zero	62

	/* #122 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$LayoutParams"
	.zero	49

	/* #123 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnMenuVisibilityListener"
	.zero	37

	/* #124 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554443
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$OnNavigationListener"
	.zero	41

	/* #125 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$Tab"
	.zero	58

	/* #126 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554447
	/* java_name */
	.ascii	"android/support/v7/app/ActionBar$TabListener"
	.zero	50

	/* #127 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554451
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle"
	.zero	50

	/* #128 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554453
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$Delegate"
	.zero	41

	/* #129 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554455
	/* java_name */
	.ascii	"android/support/v7/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	33

	/* #130 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554456
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatActivity"
	.zero	54

	/* #131 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554460
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatCallback"
	.zero	54

	/* #132 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554457
	/* java_name */
	.ascii	"android/support/v7/app/AppCompatDelegate"
	.zero	54

	/* #133 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"android/support/v7/graphics/drawable/DrawerArrowDrawable"
	.zero	38

	/* #134 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554474
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode"
	.zero	60

	/* #135 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554476
	/* java_name */
	.ascii	"android/support/v7/view/ActionMode$Callback"
	.zero	51

	/* #136 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554478
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder"
	.zero	54

	/* #137 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554480
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuBuilder$Callback"
	.zero	45

	/* #138 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554487
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuItemImpl"
	.zero	53

	/* #139 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554484
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter"
	.zero	52

	/* #140 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554482
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuPresenter$Callback"
	.zero	43

	/* #141 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554486
	/* java_name */
	.ascii	"android/support/v7/view/menu/MenuView"
	.zero	57

	/* #142 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554488
	/* java_name */
	.ascii	"android/support/v7/view/menu/SubMenuBuilder"
	.zero	51

	/* #143 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554471
	/* java_name */
	.ascii	"android/support/v7/widget/DecorToolbar"
	.zero	56

	/* #144 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554472
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView"
	.zero	43

	/* #145 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554473
	/* java_name */
	.ascii	"android/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	20

	/* #146 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554461
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar"
	.zero	61

	/* #147 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554465
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar$OnMenuItemClickListener"
	.zero	37

	/* #148 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554462
	/* java_name */
	.ascii	"android/support/v7/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	28

	/* #149 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554757
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	73

	/* #150 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554760
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	73

	/* #151 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554763
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	70

	/* #152 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554765
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	71

	/* #153 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554767
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	72

	/* #154 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554770
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	74

	/* #155 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554773
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	70

	/* #156 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554754
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	69

	/* #157 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554752
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	67

	/* #158 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554755
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	70

	/* #159 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554687
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	71

	/* #160 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554689
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	62

	/* #161 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554692
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	67

	/* #162 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554699
	/* java_name */
	.ascii	"android/view/CollapsibleActionView"
	.zero	60

	/* #163 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554703
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	70

	/* #164 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554701
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	54

	/* #165 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554694
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	62

	/* #166 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554695
	/* java_name */
	.ascii	"android/view/Display"
	.zero	74

	/* #167 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554696
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	72

	/* #168 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554712
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	71

	/* #169 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554668
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	73

	/* #170 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554670
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	64

	/* #171 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554671
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	67

	/* #172 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554673
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	59

	/* #173 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554675
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	58

	/* #174 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554705
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	77

	/* #175 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554727
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	69

	/* #176 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554711
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	73

	/* #177 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554707
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	50

	/* #178 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554709
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	49

	/* #179 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554676
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	70

	/* #180 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554730
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	70

	/* #181 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554715
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	74

	/* #182 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554660
	/* java_name */
	.ascii	"android/view/View"
	.zero	77

	/* #183 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554662
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	61

	/* #184 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554665
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	49

	/* #185 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554734
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	72

	/* #186 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554735
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	59

	/* #187 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554736
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	53

	/* #188 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554717
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	70

	/* #189 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554719
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	71

	/* #190 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554738
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	61

	/* #191 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554677
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	65

	/* #192 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554679
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"
	.zero	42

	/* #193 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554681
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	47

	/* #194 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554683
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"
	.zero	39

	/* #195 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554684
	/* java_name */
	.ascii	"android/view/Window"
	.zero	75

	/* #196 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554686
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	66

	/* #197 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554722
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	68

	/* #198 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554720
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	55

	/* #199 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554745
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	49

	/* #200 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554751
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	43

	/* #201 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554746
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	48

	/* #202 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554741
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	62

	/* #203 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554744
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	59

	/* #204 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554608
	/* java_name */
	.ascii	"android/widget/AbsListView"
	.zero	68

	/* #205 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554634
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	72

	/* #206 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554610
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	68

	/* #207 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554612
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemLongClickListener"
	.zero	44

	/* #208 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554616
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	45

	/* #209 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/widget/BaseAdapter"
	.zero	68

	/* #210 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554625
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	73

	/* #211 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554626
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	71

	/* #212 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554627
	/* java_name */
	.ascii	"android/widget/Filter"
	.zero	73

	/* #213 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554629
	/* java_name */
	.ascii	"android/widget/Filter$FilterListener"
	.zero	58

	/* #214 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554631
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	68

	/* #215 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554632
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	59

	/* #216 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554637
	/* java_name */
	.ascii	"android/widget/ImageButton"
	.zero	68

	/* #217 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554638
	/* java_name */
	.ascii	"android/widget/ImageView"
	.zero	70

	/* #218 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554641
	/* java_name */
	.ascii	"android/widget/LinearLayout"
	.zero	67

	/* #219 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554636
	/* java_name */
	.ascii	"android/widget/ListAdapter"
	.zero	68

	/* #220 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554642
	/* java_name */
	.ascii	"android/widget/ListView"
	.zero	71

	/* #221 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554643
	/* java_name */
	.ascii	"android/widget/PopupMenu"
	.zero	70

	/* #222 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554645
	/* java_name */
	.ascii	"android/widget/PopupMenu$OnMenuItemClickListener"
	.zero	46

	/* #223 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554650
	/* java_name */
	.ascii	"android/widget/SearchView"
	.zero	69

	/* #224 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554652
	/* java_name */
	.ascii	"android/widget/SearchView$OnQueryTextListener"
	.zero	49

	/* #225 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554640
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	65

	/* #226 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554621
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	71

	/* #227 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554658
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	74

	/* #228 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	40

	/* #229 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/DBHelper"
	.zero	64

	/* #230 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/DatabaseView"
	.zero	60

	/* #231 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/MainActivity"
	.zero	60

	/* #232 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554434
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableCreation"
	.zero	59

	/* #233 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableListAdapter"
	.zero	56

	/* #234 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554446
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableListAdapter_TableViewHolder"
	.zero	40

	/* #235 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554443
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableViewPage"
	.zero	59

	/* #236 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555055
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	77

	/* #237 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555051
	/* java_name */
	.ascii	"java/io/File"
	.zero	82

	/* #238 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555052
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	72

	/* #239 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555053
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	71

	/* #240 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555057
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	77

	/* #241 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555061
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	75

	/* #242 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555058
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	75

	/* #243 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555060
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	64

	/* #244 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555064
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	74

	/* #245 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555066
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	75

	/* #246 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555063
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	74

	/* #247 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555067
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	74

	/* #248 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555068
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	80

	/* #249 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555019
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	74

	/* #250 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554995
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	77

	/* #251 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554996
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	80

	/* #252 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555020
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	72

	/* #253 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554997
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	75

	/* #254 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554998
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	79

	/* #255 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555014
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	66

	/* #256 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554999
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	62

	/* #257 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555023
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	75

	/* #258 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555025
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	74

	/* #259 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555000
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	78

	/* #260 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555015
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	80

	/* #261 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555017
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	79

	/* #262 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555001
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	75

	/* #263 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555002
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	79

	/* #264 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555028
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	60

	/* #265 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555029
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	63

	/* #266 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555030
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	59

	/* #267 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555004
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	77

	/* #268 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555027
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	76

	/* #269 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555033
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	72

	/* #270 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555005
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	80

	/* #271 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555034
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	64

	/* #272 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555035
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	64

	/* #273 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555036
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	78

	/* #274 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555006
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	78

	/* #275 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555038
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	56

	/* #276 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555032
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	76

	/* #277 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555007
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	68

	/* #278 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555039
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	67

	/* #279 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555008
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	79

	/* #280 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555009
	/* java_name */
	.ascii	"java/lang/String"
	.zero	78

	/* #281 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555011
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	78

	/* #282 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555013
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	75

	/* #283 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555040
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	55

	/* #284 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555042
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	63

	/* #285 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555044
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	60

	/* #286 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555046
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	58

	/* #287 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555048
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	72

	/* #288 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555050
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	64

	/* #289 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554932
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	69

	/* #290 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554934
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	68

	/* #291 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554936
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	68

	/* #292 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554937
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	68

	/* #293 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554938
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	80

	/* #294 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554939
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	75

	/* #295 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554940
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	72

	/* #296 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554942
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	72

	/* #297 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554944
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	70

	/* #298 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554945
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	63

	/* #299 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554947
	/* java_name */
	.ascii	"java/net/URI"
	.zero	82

	/* #300 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554948
	/* java_name */
	.ascii	"java/net/URL"
	.zero	82

	/* #301 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554949
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	72

	/* #302 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554946
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	62

	/* #303 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554971
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	79

	/* #304 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554973
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	75

	/* #305 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554978
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	65

	/* #306 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554980
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	69

	/* #307 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554975
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	65

	/* #308 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554982
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	56

	/* #309 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554984
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	56

	/* #310 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554986
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	57

	/* #311 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554988
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	55

	/* #312 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554990
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	57

	/* #313 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554992
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	57

	/* #314 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554993
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	44

	/* #315 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554958
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	72

	/* #316 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554960
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	53

	/* #317 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554962
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	52

	/* #318 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554957
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	71

	/* #319 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554963
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	68

	/* #320 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554964
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	64

	/* #321 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554966
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	57

	/* #322 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554969
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	60

	/* #323 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554968
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	62

	/* #324 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554900
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	75

	/* #325 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554889
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	74

	/* #326 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554952
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	73

	/* #327 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554891
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	77

	/* #328 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554909
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	77

	/* #329 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554954
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	76

	/* #330 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554955
	/* java_name */
	.ascii	"java/util/Random"
	.zero	78

	/* #331 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554565
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	71

	/* #332 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554570
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	64

	/* #333 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554567
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	62

	/* #334 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554572
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	70

	/* #335 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554581
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	63

	/* #336 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554582
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	70

	/* #337 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554574
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	70

	/* #338 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554576
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	63

	/* #339 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554583
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	64

	/* #340 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554578
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	68

	/* #341 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554585
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	61

	/* #342 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554580
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	64

	/* #343 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554561
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	63

	/* #344 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554563
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	59

	/* #345 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555091
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	70

	/* #346 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554843
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	31

	/* #347 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554885
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	55

	/* #348 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	64

	/* #349 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554906
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	63

	/* #350 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554924
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	54

	/* #351 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554449
	/* java_name */
	.ascii	"mono/android/support/design/widget/NavigationView_OnNavigationItemSelectedListenerImplementor"
	.zero	1

	/* #352 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554445
	/* java_name */
	.ascii	"mono/android/support/v4/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	13

	/* #353 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	16

	/* #354 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554446
	/* java_name */
	.ascii	"mono/android/support/v4/view/ActionProvider_VisibilityListenerImplementor"
	.zero	21

	/* #355 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"mono/android/support/v4/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	25

	/* #356 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"mono/android/support/v7/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	21

	/* #357 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554467
	/* java_name */
	.ascii	"mono/android/support/v7/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	21

	/* #358 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554663
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	45

	/* #359 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554614
	/* java_name */
	.ascii	"mono/android/widget/AdapterView_OnItemLongClickListenerImplementor"
	.zero	28

	/* #360 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554647
	/* java_name */
	.ascii	"mono/android/widget/PopupMenu_OnMenuItemClickListenerImplementor"
	.zero	30

	/* #361 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554655
	/* java_name */
	.ascii	"mono/android/widget/SearchView_OnQueryTextListenerImplementor"
	.zero	33

	/* #362 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33555012
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	60

	/* #363 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554557
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	48

	.size	map_java, 37128
/* Java to managed map: END */

