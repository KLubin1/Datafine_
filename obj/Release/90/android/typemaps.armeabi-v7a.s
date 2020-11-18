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
	.long	18
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",%progbits
	.type	java_type_count, %object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.long	513
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",%progbits
	.type	java_name_width, %object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.long	103
/* java_name_width: END */

	.include	"typemaps.armeabi-v7a-shared.inc"
	.include	"typemaps.armeabi-v7a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",%progbits
	.type	map_modules, %object
	.p2align	2
	.global	map_modules
map_modules:
	/* module_uuid: f6eb8d01-1eb3-48f8-a2a7-5beb7f0a63b8 */
	.byte	0x01, 0x8d, 0xeb, 0xf6, 0xb3, 0x1e, 0xf8, 0x48, 0xa2, 0xa7, 0x5b, 0xeb, 0x7f, 0x0a, 0x63, 0xb8
	/* entry_count */
	.long	294
	/* duplicate_count */
	.long	54
	/* map */
	.long	module0_managed_to_java
	/* duplicate_map */
	.long	module0_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.long	.L.map_aname.0
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 4899ad11-6dc5-4c49-bc25-1d5332f6587e */
	.byte	0x11, 0xad, 0x99, 0x48, 0xc5, 0x6d, 0x49, 0x4c, 0xbc, 0x25, 0x1d, 0x53, 0x32, 0xf6, 0x58, 0x7e
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	1
	/* map */
	.long	module1_managed_to_java
	/* duplicate_map */
	.long	module1_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.CoordinatorLayout */
	.long	.L.map_aname.1
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 43f95116-d2bf-4cc0-b502-6c0e2bb9d787 */
	.byte	0x16, 0x51, 0xf9, 0x43, 0xbf, 0xd2, 0xc0, 0x4c, 0xb5, 0x02, 0x6c, 0x0e, 0x2b, 0xb9, 0xd7, 0x87
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	0
	/* map */
	.long	module2_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.AndroidX.DrawerLayout */
	.long	.L.map_aname.2
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 56a3bc1a-9692-44a6-afba-59250893fe08 */
	.byte	0x1a, 0xbc, 0xa3, 0x56, 0x92, 0x96, 0xa6, 0x44, 0xaf, 0xba, 0x59, 0x25, 0x08, 0x93, 0xfe, 0x08
	/* entry_count */
	.long	47
	/* duplicate_count */
	.long	3
	/* map */
	.long	module3_managed_to_java
	/* duplicate_map */
	.long	module3_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Core */
	.long	.L.map_aname.3
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: fe6d5730-799a-490b-ba2f-416dff2104bd */
	.byte	0x30, 0x57, 0x6d, 0xfe, 0x9a, 0x79, 0x0b, 0x49, 0xba, 0x2f, 0x41, 0x6d, 0xff, 0x21, 0x04, 0xbd
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.long	module4_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Essentials */
	.long	.L.map_aname.4
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 35aae93c-023f-4c57-a63b-0748547fbea5 */
	.byte	0x3c, 0xe9, 0xaa, 0x35, 0x3f, 0x02, 0x57, 0x4c, 0xa6, 0x3b, 0x07, 0x48, 0x54, 0x7f, 0xbe, 0xa5
	/* entry_count */
	.long	19
	/* duplicate_count */
	.long	0
	/* map */
	.long	module5_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Datafine */
	.long	.L.map_aname.5
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: e087974a-a792-4634-adaf-8e6d4718bc25 */
	.byte	0x4a, 0x97, 0x87, 0xe0, 0x92, 0xa7, 0x34, 0x46, 0xad, 0xaf, 0x8e, 0x6d, 0x47, 0x18, 0xbc, 0x25
	/* entry_count */
	.long	25
	/* duplicate_count */
	.long	5
	/* map */
	.long	module6_managed_to_java
	/* duplicate_map */
	.long	module6_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Preference */
	.long	.L.map_aname.6
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 296a8258-6f16-417c-8b5d-f8a2d51bad5f */
	.byte	0x58, 0x82, 0x6a, 0x29, 0x16, 0x6f, 0x7c, 0x41, 0x8b, 0x5d, 0xf8, 0xa2, 0xd5, 0x1b, 0xad, 0x5f
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.long	module7_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.AndroidX.Activity */
	.long	.L.map_aname.7
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: a629eb62-9246-42b6-af73-66b4598528f6 */
	.byte	0x62, 0xeb, 0x29, 0xa6, 0x46, 0x92, 0xb6, 0x42, 0xaf, 0x73, 0x66, 0xb4, 0x59, 0x85, 0x28, 0xf6
	/* entry_count */
	.long	29
	/* duplicate_count */
	.long	10
	/* map */
	.long	module8_managed_to_java
	/* duplicate_map */
	.long	module8_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.RecyclerView */
	.long	.L.map_aname.8
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 23a3868f-aea4-4745-abf8-eae5d3f7928f */
	.byte	0x8f, 0x86, 0xa3, 0x23, 0xa4, 0xae, 0x45, 0x47, 0xab, 0xf8, 0xea, 0xe5, 0xd3, 0xf7, 0x92, 0x8f
	/* entry_count */
	.long	22
	/* duplicate_count */
	.long	3
	/* map */
	.long	module9_managed_to_java
	/* duplicate_map */
	.long	module9_managed_to_java_duplicates
	/* assembly_name: Xamarin.Google.Android.Material */
	.long	.L.map_aname.9
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: b6496c92-5ed6-4a94-89cf-3d935befe748 */
	.byte	0x92, 0x6c, 0x49, 0xb6, 0xd6, 0x5e, 0x94, 0x4a, 0x89, 0xcf, 0x3d, 0x93, 0x5b, 0xef, 0xe7, 0x48
	/* entry_count */
	.long	38
	/* duplicate_count */
	.long	4
	/* map */
	.long	module10_managed_to_java
	/* duplicate_map */
	.long	module10_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.AppCompat */
	.long	.L.map_aname.10
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 409699a7-ad11-4484-a880-dd619f415687 */
	.byte	0xa7, 0x99, 0x96, 0x40, 0x11, 0xad, 0x84, 0x44, 0xa8, 0x80, 0xdd, 0x61, 0x9f, 0x41, 0x56, 0x87
	/* entry_count */
	.long	11
	/* duplicate_count */
	.long	3
	/* map */
	.long	module11_managed_to_java
	/* duplicate_map */
	.long	module11_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Fragment */
	.long	.L.map_aname.11
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: f9bcc2c4-babb-44ab-be0e-6edbe560dcd7 */
	.byte	0xc4, 0xc2, 0xbc, 0xf9, 0xbb, 0xba, 0xab, 0x44, 0xbe, 0x0e, 0x6e, 0xdb, 0xe5, 0x60, 0xdc, 0xd7
	/* entry_count */
	.long	3
	/* duplicate_count */
	.long	0
	/* map */
	.long	module12_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.AndroidX.SavedState */
	.long	.L.map_aname.12
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 45e350cd-67a5-458a-8dc6-f2708b7d90d2 */
	.byte	0xcd, 0x50, 0xe3, 0x45, 0xa5, 0x67, 0x8a, 0x45, 0x8d, 0xc6, 0xf2, 0x70, 0x8b, 0x7d, 0x90, 0xd2
	/* entry_count */
	.long	5
	/* duplicate_count */
	.long	1
	/* map */
	.long	module13_managed_to_java
	/* duplicate_map */
	.long	module13_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Loader */
	.long	.L.map_aname.13
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 1fe0f2d1-97a7-4e89-9057-41f209c8b421 */
	.byte	0xd1, 0xf2, 0xe0, 0x1f, 0xa7, 0x97, 0x89, 0x4e, 0x90, 0x57, 0x41, 0xf2, 0x09, 0xc8, 0xb4, 0x21
	/* entry_count */
	.long	2
	/* duplicate_count */
	.long	1
	/* map */
	.long	module14_managed_to_java
	/* duplicate_map */
	.long	module14_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core */
	.long	.L.map_aname.14
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 22ab85d9-c40c-4739-b6fe-c7ac6cfd022e */
	.byte	0xd9, 0x85, 0xab, 0x22, 0x0c, 0xc4, 0x39, 0x47, 0xb6, 0xfe, 0xc7, 0xac, 0x6c, 0xfd, 0x02, 0x2e
	/* entry_count */
	.long	1
	/* duplicate_count */
	.long	0
	/* map */
	.long	module15_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.Google.Guava.ListenableFuture */
	.long	.L.map_aname.15
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 370644e8-415c-45c0-99db-ef235ef8f8e5 */
	.byte	0xe8, 0x44, 0x06, 0x37, 0x5c, 0x41, 0xc0, 0x45, 0x99, 0xdb, 0xef, 0x23, 0x5e, 0xf8, 0xf8, 0xe5
	/* entry_count */
	.long	5
	/* duplicate_count */
	.long	0
	/* map */
	.long	module16_managed_to_java
	/* duplicate_map */
	.long	0
	/* assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel */
	.long	.L.map_aname.16
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	/* module_uuid: 881ed6ea-01f5-4e6a-a506-f471ee0a009c */
	.byte	0xea, 0xd6, 0x1e, 0x88, 0xf5, 0x01, 0x6a, 0x4e, 0xa5, 0x06, 0xf4, 0x71, 0xee, 0x0a, 0x00, 0x9c
	/* entry_count */
	.long	4
	/* duplicate_count */
	.long	1
	/* map */
	.long	module17_managed_to_java
	/* duplicate_map */
	.long	module17_managed_to_java_duplicates
	/* assembly_name: Xamarin.AndroidX.Lifecycle.Common */
	.long	.L.map_aname.17
	/* image */
	.long	0
	/* java_name_width */
	.long	0
	/* java_map */
	.long	0

	.size	map_modules, 864
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",%progbits
	.type	map_java, %object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554846
	/* java_name */
	.ascii	"android/animation/Animator"
	.zero	77

	/* #1 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554848
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorListener"
	.zero	60

	/* #2 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554850
	/* java_name */
	.ascii	"android/animation/Animator$AnimatorPauseListener"
	.zero	55

	/* #3 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554852
	/* java_name */
	.ascii	"android/animation/AnimatorListenerAdapter"
	.zero	62

	/* #4 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554855
	/* java_name */
	.ascii	"android/animation/TimeInterpolator"
	.zero	69

	/* #5 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554857
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	83

	/* #6 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554858
	/* java_name */
	.ascii	"android/app/AlertDialog"
	.zero	80

	/* #7 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554859
	/* java_name */
	.ascii	"android/app/AlertDialog$Builder"
	.zero	72

	/* #8 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554860
	/* java_name */
	.ascii	"android/app/Application"
	.zero	80

	/* #9 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554862
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	53

	/* #10 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554863
	/* java_name */
	.ascii	"android/app/Dialog"
	.zero	85

	/* #11 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554868
	/* java_name */
	.ascii	"android/app/Fragment"
	.zero	83

	/* #12 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554864
	/* java_name */
	.ascii	"android/app/FragmentManager"
	.zero	76

	/* #13 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554870
	/* java_name */
	.ascii	"android/app/FragmentTransaction"
	.zero	72

	/* #14 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554872
	/* java_name */
	.ascii	"android/app/PendingIntent"
	.zero	78

	/* #15 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554883
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	69

	/* #16 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554885
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	68

	/* #17 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554876
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	74

	/* #18 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554877
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	72

	/* #19 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554873
	/* java_name */
	.ascii	"android/content/ContentValues"
	.zero	74

	/* #20 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554874
	/* java_name */
	.ascii	"android/content/Context"
	.zero	80

	/* #21 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554880
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	73

	/* #22 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554900
	/* java_name */
	.ascii	"android/content/DialogInterface"
	.zero	72

	/* #23 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554887
	/* java_name */
	.ascii	"android/content/DialogInterface$OnCancelListener"
	.zero	55

	/* #24 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554889
	/* java_name */
	.ascii	"android/content/DialogInterface$OnClickListener"
	.zero	56

	/* #25 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554893
	/* java_name */
	.ascii	"android/content/DialogInterface$OnDismissListener"
	.zero	54

	/* #26 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554895
	/* java_name */
	.ascii	"android/content/DialogInterface$OnKeyListener"
	.zero	58

	/* #27 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554897
	/* java_name */
	.ascii	"android/content/DialogInterface$OnMultiChoiceClickListener"
	.zero	45

	/* #28 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554875
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	81

	/* #29 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554901
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	75

	/* #30 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554907
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	70

	/* #31 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554903
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	63

	/* #32 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554905
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	37

	/* #33 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554909
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	73

	/* #34 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554911
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	70

	/* #35 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554914
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	69

	/* #36 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554915
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	70

	/* #37 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554916
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	74

	/* #38 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554917
	/* java_name */
	.ascii	"android/content/res/TypedArray"
	.zero	73

	/* #39 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554598
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	71

	/* #40 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554599
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	71

	/* #41 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554605
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	80

	/* #42 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554601
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	71

	/* #43 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554608
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteClosable"
	.zero	65

	/* #44 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554607
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteCursorDriver"
	.zero	61

	/* #45 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554610
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteDatabase"
	.zero	65

	/* #46 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554612
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteDatabase$CursorFactory"
	.zero	51

	/* #47 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554613
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteOpenHelper"
	.zero	63

	/* #48 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554615
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteProgram"
	.zero	66

	/* #49 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554617
	/* java_name */
	.ascii	"android/database/sqlite/SQLiteQuery"
	.zero	68

	/* #50 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554831
	/* java_name */
	.ascii	"android/graphics/Canvas"
	.zero	80

	/* #51 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554832
	/* java_name */
	.ascii	"android/graphics/ColorFilter"
	.zero	75

	/* #52 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554833
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	80

	/* #53 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554834
	/* java_name */
	.ascii	"android/graphics/Paint"
	.zero	81

	/* #54 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554835
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	81

	/* #55 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554836
	/* java_name */
	.ascii	"android/graphics/PointF"
	.zero	80

	/* #56 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554837
	/* java_name */
	.ascii	"android/graphics/PorterDuff"
	.zero	76

	/* #57 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554838
	/* java_name */
	.ascii	"android/graphics/PorterDuff$Mode"
	.zero	71

	/* #58 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554839
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	82

	/* #59 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554840
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	81

	/* #60 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554841
	/* java_name */
	.ascii	"android/graphics/Region"
	.zero	80

	/* #61 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554842
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	69

	/* #62 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554844
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	60

	/* #63 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554828
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	88

	/* #64 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554809
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	82

	/* #65 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554810
	/* java_name */
	.ascii	"android/os/Build"
	.zero	87

	/* #66 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554811
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	79

	/* #67 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554813
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	86

	/* #68 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554807
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	85

	/* #69 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554817
	/* java_name */
	.ascii	"android/os/IBinder"
	.zero	85

	/* #70 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554815
	/* java_name */
	.ascii	"android/os/IBinder$DeathRecipient"
	.zero	70

	/* #71 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554819
	/* java_name */
	.ascii	"android/os/IInterface"
	.zero	82

	/* #72 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554824
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	86

	/* #73 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554808
	/* java_name */
	.ascii	"android/os/Message"
	.zero	85

	/* #74 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554825
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	86

	/* #75 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554823
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	82

	/* #76 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554821
	/* java_name */
	.ascii	"android/os/Parcelable$Creator"
	.zero	74

	/* #77 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554804
	/* java_name */
	.ascii	"android/preference/Preference"
	.zero	74

	/* #78 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554806
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	67

	/* #79 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554963
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	69

	/* #80 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554780
	/* java_name */
	.ascii	"android/text/Editable"
	.zero	82

	/* #81 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554783
	/* java_name */
	.ascii	"android/text/GetChars"
	.zero	82

	/* #82 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554786
	/* java_name */
	.ascii	"android/text/InputFilter"
	.zero	79

	/* #83 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554788
	/* java_name */
	.ascii	"android/text/NoCopySpan"
	.zero	80

	/* #84 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554790
	/* java_name */
	.ascii	"android/text/Spannable"
	.zero	81

	/* #85 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554793
	/* java_name */
	.ascii	"android/text/Spanned"
	.zero	83

	/* #86 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554796
	/* java_name */
	.ascii	"android/text/TextWatcher"
	.zero	79

	/* #87 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554798
	/* java_name */
	.ascii	"android/text/style/CharacterStyle"
	.zero	70

	/* #88 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554800
	/* java_name */
	.ascii	"android/text/style/ClickableSpan"
	.zero	71

	/* #89 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554803
	/* java_name */
	.ascii	"android/text/style/UpdateAppearance"
	.zero	68

	/* #90 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554777
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	78

	/* #91 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554775
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	76

	/* #92 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554778
	/* java_name */
	.ascii	"android/util/SparseArray"
	.zero	79

	/* #93 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554706
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	80

	/* #94 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554708
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	71

	/* #95 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554711
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	76

	/* #96 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554718
	/* java_name */
	.ascii	"android/view/CollapsibleActionView"
	.zero	69

	/* #97 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554722
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	79

	/* #98 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554720
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	63

	/* #99 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554713
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	71

	/* #100 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554714
	/* java_name */
	.ascii	"android/view/Display"
	.zero	83

	/* #101 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554715
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	81

	/* #102 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554731
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	80

	/* #103 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554687
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	82

	/* #104 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554689
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	73

	/* #105 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554690
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	76

	/* #106 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554692
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	68

	/* #107 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554694
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	67

	/* #108 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554724
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	86

	/* #109 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554746
	/* java_name */
	.ascii	"android/view/MenuInflater"
	.zero	78

	/* #110 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554730
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	82

	/* #111 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554726
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	59

	/* #112 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554728
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	58

	/* #113 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554695
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	79

	/* #114 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554749
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	79

	/* #115 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554734
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	83

	/* #116 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554671
	/* java_name */
	.ascii	"android/view/View"
	.zero	86

	/* #117 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554672
	/* java_name */
	.ascii	"android/view/View$AccessibilityDelegate"
	.zero	64

	/* #118 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554674
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	70

	/* #119 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554677
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	58

	/* #120 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554680
	/* java_name */
	.ascii	"android/view/View$OnLongClickListener"
	.zero	66

	/* #121 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554753
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	81

	/* #122 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554754
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	68

	/* #123 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554755
	/* java_name */
	.ascii	"android/view/ViewGroup$MarginLayoutParams"
	.zero	62

	/* #124 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554736
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	79

	/* #125 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554738
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	80

	/* #126 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554757
	/* java_name */
	.ascii	"android/view/ViewPropertyAnimator"
	.zero	70

	/* #127 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554696
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	74

	/* #128 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554698
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnGlobalLayoutListener"
	.zero	51

	/* #129 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554700
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	56

	/* #130 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554702
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnTouchModeChangeListener"
	.zero	48

	/* #131 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554703
	/* java_name */
	.ascii	"android/view/Window"
	.zero	84

	/* #132 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554705
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	75

	/* #133 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554760
	/* java_name */
	.ascii	"android/view/WindowInsets"
	.zero	78

	/* #134 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554741
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	77

	/* #135 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554739
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	64

	/* #136 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554767
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	58

	/* #137 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554774
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	52

	/* #138 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554768
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityNodeInfo"
	.zero	55

	/* #139 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554769
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	57

	/* #140 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554761
	/* java_name */
	.ascii	"android/view/animation/Animation"
	.zero	71

	/* #141 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554764
	/* java_name */
	.ascii	"android/view/animation/Interpolator"
	.zero	68

	/* #142 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554765
	/* java_name */
	.ascii	"android/view/inputmethod/InputMethodManager"
	.zero	60

	/* #143 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554618
	/* java_name */
	.ascii	"android/widget/AbsListView"
	.zero	77

	/* #144 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554645
	/* java_name */
	.ascii	"android/widget/Adapter"
	.zero	81

	/* #145 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554620
	/* java_name */
	.ascii	"android/widget/AdapterView"
	.zero	77

	/* #146 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554622
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemLongClickListener"
	.zero	53

	/* #147 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554626
	/* java_name */
	.ascii	"android/widget/AdapterView$OnItemSelectedListener"
	.zero	54

	/* #148 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"android/widget/BaseAdapter"
	.zero	77

	/* #149 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554635
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	82

	/* #150 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554636
	/* java_name */
	.ascii	"android/widget/EdgeEffect"
	.zero	78

	/* #151 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554637
	/* java_name */
	.ascii	"android/widget/EditText"
	.zero	80

	/* #152 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554638
	/* java_name */
	.ascii	"android/widget/Filter"
	.zero	82

	/* #153 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554640
	/* java_name */
	.ascii	"android/widget/Filter$FilterListener"
	.zero	67

	/* #154 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554642
	/* java_name */
	.ascii	"android/widget/FrameLayout"
	.zero	77

	/* #155 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554643
	/* java_name */
	.ascii	"android/widget/HorizontalScrollView"
	.zero	68

	/* #156 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554648
	/* java_name */
	.ascii	"android/widget/ImageButton"
	.zero	77

	/* #157 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554649
	/* java_name */
	.ascii	"android/widget/ImageView"
	.zero	79

	/* #158 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554652
	/* java_name */
	.ascii	"android/widget/LinearLayout"
	.zero	76

	/* #159 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554647
	/* java_name */
	.ascii	"android/widget/ListAdapter"
	.zero	77

	/* #160 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554653
	/* java_name */
	.ascii	"android/widget/ListView"
	.zero	80

	/* #161 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554654
	/* java_name */
	.ascii	"android/widget/PopupMenu"
	.zero	79

	/* #162 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554656
	/* java_name */
	.ascii	"android/widget/PopupMenu$OnMenuItemClickListener"
	.zero	55

	/* #163 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554661
	/* java_name */
	.ascii	"android/widget/SearchView"
	.zero	78

	/* #164 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554663
	/* java_name */
	.ascii	"android/widget/SearchView$OnQueryTextListener"
	.zero	58

	/* #165 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554651
	/* java_name */
	.ascii	"android/widget/SpinnerAdapter"
	.zero	74

	/* #166 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554631
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	80

	/* #167 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554669
	/* java_name */
	.ascii	"android/widget/Toast"
	.zero	83

	/* #168 */
	/* module_index */
	.long	7
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"androidx/activity/ComponentActivity"
	.zero	68

	/* #169 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554492
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar"
	.zero	71

	/* #170 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554493
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$LayoutParams"
	.zero	58

	/* #171 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554495
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener"
	.zero	46

	/* #172 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554499
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$OnNavigationListener"
	.zero	50

	/* #173 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554500
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$Tab"
	.zero	67

	/* #174 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554503
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBar$TabListener"
	.zero	59

	/* #175 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554507
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle"
	.zero	59

	/* #176 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554509
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$Delegate"
	.zero	50

	/* #177 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554511
	/* java_name */
	.ascii	"androidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider"
	.zero	42

	/* #178 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554487
	/* java_name */
	.ascii	"androidx/appcompat/app/AlertDialog"
	.zero	69

	/* #179 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554488
	/* java_name */
	.ascii	"androidx/appcompat/app/AlertDialog$Builder"
	.zero	61

	/* #180 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554490
	/* java_name */
	.ascii	"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor"
	.zero	25

	/* #181 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554489
	/* java_name */
	.ascii	"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor"
	.zero	26

	/* #182 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554491
	/* java_name */
	.ascii	"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor"
	.zero	15

	/* #183 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554512
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatActivity"
	.zero	63

	/* #184 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554518
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatCallback"
	.zero	63

	/* #185 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554513
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatDelegate"
	.zero	63

	/* #186 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554515
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatDialog"
	.zero	65

	/* #187 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554516
	/* java_name */
	.ascii	"androidx/appcompat/app/AppCompatDialogFragment"
	.zero	57

	/* #188 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554486
	/* java_name */
	.ascii	"androidx/appcompat/graphics/drawable/DrawerArrowDrawable"
	.zero	47

	/* #189 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554533
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode"
	.zero	69

	/* #190 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554535
	/* java_name */
	.ascii	"androidx/appcompat/view/ActionMode$Callback"
	.zero	60

	/* #191 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554537
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder"
	.zero	63

	/* #192 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554539
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuBuilder$Callback"
	.zero	54

	/* #193 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554546
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuItemImpl"
	.zero	62

	/* #194 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554543
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter"
	.zero	61

	/* #195 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554541
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuPresenter$Callback"
	.zero	52

	/* #196 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554545
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/MenuView"
	.zero	66

	/* #197 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554547
	/* java_name */
	.ascii	"androidx/appcompat/view/menu/SubMenuBuilder"
	.zero	60

	/* #198 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554528
	/* java_name */
	.ascii	"androidx/appcompat/widget/AppCompatEditText"
	.zero	60

	/* #199 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554530
	/* java_name */
	.ascii	"androidx/appcompat/widget/DecorToolbar"
	.zero	65

	/* #200 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554531
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView"
	.zero	52

	/* #201 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554532
	/* java_name */
	.ascii	"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener"
	.zero	29

	/* #202 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554519
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar"
	.zero	70

	/* #203 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554523
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener"
	.zero	46

	/* #204 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554520
	/* java_name */
	.ascii	"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher"
	.zero	37

	/* #205 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout"
	.zero	52

	/* #206 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior"
	.zero	43

	/* #207 */
	/* module_index */
	.long	1
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams"
	.zero	39

	/* #208 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554555
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat"
	.zero	71

	/* #209 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554557
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback"
	.zero	36

	/* #210 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554559
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$PermissionCompatDelegate"
	.zero	46

	/* #211 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554561
	/* java_name */
	.ascii	"androidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator"
	.zero	32

	/* #212 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554562
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity"
	.zero	68

	/* #213 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554563
	/* java_name */
	.ascii	"androidx/core/app/ComponentActivity$ExtraData"
	.zero	58

	/* #214 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554564
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback"
	.zero	64

	/* #215 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554566
	/* java_name */
	.ascii	"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	34

	/* #216 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554568
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder"
	.zero	69

	/* #217 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554570
	/* java_name */
	.ascii	"androidx/core/app/TaskStackBuilder$SupportParentable"
	.zero	51

	/* #218 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554554
	/* java_name */
	.ascii	"androidx/core/content/ContextCompat"
	.zero	68

	/* #219 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554553
	/* java_name */
	.ascii	"androidx/core/graphics/Insets"
	.zero	74

	/* #220 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554550
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenu"
	.zero	64

	/* #221 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554552
	/* java_name */
	.ascii	"androidx/core/internal/view/SupportMenuItem"
	.zero	60

	/* #222 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554495
	/* java_name */
	.ascii	"androidx/core/view/AccessibilityDelegateCompat"
	.zero	57

	/* #223 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554496
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider"
	.zero	70

	/* #224 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554498
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$SubUiVisibilityListener"
	.zero	46

	/* #225 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554502
	/* java_name */
	.ascii	"androidx/core/view/ActionProvider$VisibilityListener"
	.zero	51

	/* #226 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554510
	/* java_name */
	.ascii	"androidx/core/view/DisplayCutoutCompat"
	.zero	65

	/* #227 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554511
	/* java_name */
	.ascii	"androidx/core/view/DragAndDropPermissionsCompat"
	.zero	56

	/* #228 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554532
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher"
	.zero	66

	/* #229 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554534
	/* java_name */
	.ascii	"androidx/core/view/KeyEventDispatcher$Component"
	.zero	56

	/* #230 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554513
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingChild"
	.zero	64

	/* #231 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554515
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingChild2"
	.zero	63

	/* #232 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554517
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingChild3"
	.zero	63

	/* #233 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554519
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent"
	.zero	63

	/* #234 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554521
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent2"
	.zero	62

	/* #235 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554523
	/* java_name */
	.ascii	"androidx/core/view/NestedScrollingParent3"
	.zero	62

	/* #236 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554525
	/* java_name */
	.ascii	"androidx/core/view/ScrollingView"
	.zero	71

	/* #237 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554527
	/* java_name */
	.ascii	"androidx/core/view/TintableBackgroundView"
	.zero	62

	/* #238 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554535
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorCompat"
	.zero	58

	/* #239 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554529
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorListener"
	.zero	56

	/* #240 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554531
	/* java_name */
	.ascii	"androidx/core/view/ViewPropertyAnimatorUpdateListener"
	.zero	50

	/* #241 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554536
	/* java_name */
	.ascii	"androidx/core/view/WindowInsetsCompat"
	.zero	66

	/* #242 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554537
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityNodeInfoCompat"
	.zero	43

	/* #243 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554538
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat"
	.zero	17

	/* #244 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554539
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat"
	.zero	22

	/* #245 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554540
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat"
	.zero	18

	/* #246 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554541
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat"
	.zero	27

	/* #247 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554542
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat"
	.zero	19

	/* #248 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554543
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityNodeProviderCompat"
	.zero	39

	/* #249 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554548
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityViewCommand"
	.zero	46

	/* #250 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554545
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments"
	.zero	29

	/* #251 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554544
	/* java_name */
	.ascii	"androidx/core/view/accessibility/AccessibilityWindowInfoCompat"
	.zero	41

	/* #252 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554494
	/* java_name */
	.ascii	"androidx/core/widget/TintableImageSourceView"
	.zero	59

	/* #253 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554454
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout"
	.zero	62

	/* #254 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554456
	/* java_name */
	.ascii	"androidx/drawerlayout/widget/DrawerLayout$DrawerListener"
	.zero	47

	/* #255 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554470
	/* java_name */
	.ascii	"androidx/fragment/app/DialogFragment"
	.zero	67

	/* #256 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554471
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment"
	.zero	73

	/* #257 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554472
	/* java_name */
	.ascii	"androidx/fragment/app/Fragment$SavedState"
	.zero	62

	/* #258 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554469
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentActivity"
	.zero	65

	/* #259 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554473
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentFactory"
	.zero	66

	/* #260 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554474
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager"
	.zero	66

	/* #261 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554476
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$BackStackEntry"
	.zero	51

	/* #262 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554477
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks"
	.zero	39

	/* #263 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554480
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentManager$OnBackStackChangedListener"
	.zero	39

	/* #264 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554485
	/* java_name */
	.ascii	"androidx/fragment/app/FragmentTransaction"
	.zero	62

	/* #265 */
	/* module_index */
	.long	16
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"androidx/lifecycle/HasDefaultViewModelProviderFactory"
	.zero	50

	/* #266 */
	/* module_index */
	.long	17
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle"
	.zero	75

	/* #267 */
	/* module_index */
	.long	17
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"androidx/lifecycle/Lifecycle$State"
	.zero	69

	/* #268 */
	/* module_index */
	.long	17
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleObserver"
	.zero	67

	/* #269 */
	/* module_index */
	.long	17
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"androidx/lifecycle/LifecycleOwner"
	.zero	70

	/* #270 */
	/* module_index */
	.long	14
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"androidx/lifecycle/LiveData"
	.zero	76

	/* #271 */
	/* module_index */
	.long	14
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/Observer"
	.zero	76

	/* #272 */
	/* module_index */
	.long	16
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelProvider"
	.zero	67

	/* #273 */
	/* module_index */
	.long	16
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelProvider$Factory"
	.zero	59

	/* #274 */
	/* module_index */
	.long	16
	/* type_token_id */
	.long	33554445
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStore"
	.zero	70

	/* #275 */
	/* module_index */
	.long	16
	/* type_token_id */
	.long	33554441
	/* java_name */
	.ascii	"androidx/lifecycle/ViewModelStoreOwner"
	.zero	65

	/* #276 */
	/* module_index */
	.long	13
	/* type_token_id */
	.long	33554453
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager"
	.zero	70

	/* #277 */
	/* module_index */
	.long	13
	/* type_token_id */
	.long	33554455
	/* java_name */
	.ascii	"androidx/loader/app/LoaderManager$LoaderCallbacks"
	.zero	54

	/* #278 */
	/* module_index */
	.long	13
	/* type_token_id */
	.long	33554448
	/* java_name */
	.ascii	"androidx/loader/content/Loader"
	.zero	73

	/* #279 */
	/* module_index */
	.long	13
	/* type_token_id */
	.long	33554450
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCanceledListener"
	.zero	50

	/* #280 */
	/* module_index */
	.long	13
	/* type_token_id */
	.long	33554452
	/* java_name */
	.ascii	"androidx/loader/content/Loader$OnLoadCompleteListener"
	.zero	50

	/* #281 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554470
	/* java_name */
	.ascii	"androidx/preference/DialogPreference"
	.zero	67

	/* #282 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554472
	/* java_name */
	.ascii	"androidx/preference/DialogPreference$TargetFragment"
	.zero	52

	/* #283 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554474
	/* java_name */
	.ascii	"androidx/preference/Preference"
	.zero	73

	/* #284 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554476
	/* java_name */
	.ascii	"androidx/preference/Preference$OnPreferenceChangeListener"
	.zero	46

	/* #285 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554480
	/* java_name */
	.ascii	"androidx/preference/Preference$OnPreferenceClickListener"
	.zero	47

	/* #286 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554484
	/* java_name */
	.ascii	"androidx/preference/Preference$SummaryProvider"
	.zero	57

	/* #287 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554489
	/* java_name */
	.ascii	"androidx/preference/PreferenceDataStore"
	.zero	64

	/* #288 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554491
	/* java_name */
	.ascii	"androidx/preference/PreferenceFragment"
	.zero	65

	/* #289 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554493
	/* java_name */
	.ascii	"androidx/preference/PreferenceGroup"
	.zero	68

	/* #290 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554495
	/* java_name */
	.ascii	"androidx/preference/PreferenceGroup$OnExpandButtonClickListener"
	.zero	40

	/* #291 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554498
	/* java_name */
	.ascii	"androidx/preference/PreferenceGroup$PreferencePositionCallback"
	.zero	41

	/* #292 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554469
	/* java_name */
	.ascii	"androidx/preference/PreferenceGroupAdapter"
	.zero	61

	/* #293 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554502
	/* java_name */
	.ascii	"androidx/preference/PreferenceManager"
	.zero	66

	/* #294 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554504
	/* java_name */
	.ascii	"androidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener"
	.zero	32

	/* #295 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554508
	/* java_name */
	.ascii	"androidx/preference/PreferenceManager$OnNavigateToScreenListener"
	.zero	39

	/* #296 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554512
	/* java_name */
	.ascii	"androidx/preference/PreferenceManager$OnPreferenceTreeClickListener"
	.zero	36

	/* #297 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554515
	/* java_name */
	.ascii	"androidx/preference/PreferenceManager$PreferenceComparisonCallback"
	.zero	37

	/* #298 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554523
	/* java_name */
	.ascii	"androidx/preference/PreferenceScreen"
	.zero	67

	/* #299 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554524
	/* java_name */
	.ascii	"androidx/preference/PreferenceViewHolder"
	.zero	63

	/* #300 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554496
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView"
	.zero	62

	/* #301 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554497
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$Adapter"
	.zero	54

	/* #302 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554499
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver"
	.zero	42

	/* #303 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554502
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback"
	.zero	36

	/* #304 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554503
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory"
	.zero	44

	/* #305 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554504
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$ItemAnimator"
	.zero	49

	/* #306 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554506
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener"
	.zero	20

	/* #307 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554507
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo"
	.zero	34

	/* #308 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554509
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$ItemDecoration"
	.zero	47

	/* #309 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554511
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$LayoutManager"
	.zero	48

	/* #310 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554513
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry"
	.zero	25

	/* #311 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554514
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties"
	.zero	37

	/* #312 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554516
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$LayoutParams"
	.zero	49

	/* #313 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554518
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener"
	.zero	29

	/* #314 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554522
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$OnFlingListener"
	.zero	46

	/* #315 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554525
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener"
	.zero	42

	/* #316 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554530
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$OnScrollListener"
	.zero	45

	/* #317 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554532
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$RecycledViewPool"
	.zero	45

	/* #318 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554533
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$Recycler"
	.zero	53

	/* #319 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554535
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$RecyclerListener"
	.zero	45

	/* #320 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554538
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$SmoothScroller"
	.zero	47

	/* #321 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554539
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action"
	.zero	40

	/* #322 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554541
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$State"
	.zero	56

	/* #323 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554542
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension"
	.zero	43

	/* #324 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554544
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerView$ViewHolder"
	.zero	51

	/* #325 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554558
	/* java_name */
	.ascii	"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate"
	.zero	41

	/* #326 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry"
	.zero	65

	/* #327 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554440
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistry$SavedStateProvider"
	.zero	46

	/* #328 */
	/* module_index */
	.long	12
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"androidx/savedstate/SavedStateRegistryOwner"
	.zero	60

	/* #329 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554468
	/* java_name */
	.ascii	"com/google/android/material/animation/MotionSpec"
	.zero	55

	/* #330 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554469
	/* java_name */
	.ascii	"com/google/android/material/animation/MotionTiming"
	.zero	53

	/* #331 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554449
	/* java_name */
	.ascii	"com/google/android/material/behavior/SwipeDismissBehavior"
	.zero	46

	/* #332 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554451
	/* java_name */
	.ascii	"com/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener"
	.zero	28

	/* #333 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554446
	/* java_name */
	.ascii	"com/google/android/material/expandable/ExpandableTransformationWidget"
	.zero	34

	/* #334 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554448
	/* java_name */
	.ascii	"com/google/android/material/expandable/ExpandableWidget"
	.zero	48

	/* #335 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"com/google/android/material/floatingactionbutton/FloatingActionButton"
	.zero	34

	/* #336 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554443
	/* java_name */
	.ascii	"com/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener"
	.zero	6

	/* #337 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554467
	/* java_name */
	.ascii	"com/google/android/material/internal/ScrimInsetsFrameLayout"
	.zero	44

	/* #338 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554466
	/* java_name */
	.ascii	"com/google/android/material/internal/VisibilityAwareImageButton"
	.zero	40

	/* #339 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"com/google/android/material/navigation/NavigationView"
	.zero	50

	/* #340 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener"
	.zero	17

	/* #341 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554459
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar"
	.zero	44

	/* #342 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554460
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback"
	.zero	31

	/* #343 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554462
	/* java_name */
	.ascii	"com/google/android/material/snackbar/BaseTransientBottomBar$Behavior"
	.zero	35

	/* #344 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554465
	/* java_name */
	.ascii	"com/google/android/material/snackbar/ContentViewCallback"
	.zero	47

	/* #345 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554456
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar"
	.zero	58

	/* #346 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554458
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar$Callback"
	.zero	49

	/* #347 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554457
	/* java_name */
	.ascii	"com/google/android/material/snackbar/Snackbar_SnackbarActionClickImplementor"
	.zero	27

	/* #348 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554455
	/* java_name */
	.ascii	"com/google/android/material/textfield/TextInputEditText"
	.zero	48

	/* #349 */
	/* module_index */
	.long	15
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"com/google/common/util/concurrent/ListenableFuture"
	.zero	53

	/* #350 */
	/* module_index */
	.long	4
	/* type_token_id */
	.long	33554448
	/* java_name */
	.ascii	"crc64a0e0a82d0db9a07d/ActivityLifecycleContextListener"
	.zero	49

	/* #351 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554434
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/About"
	.zero	76

	/* #352 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554456
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/DBHelper"
	.zero	73

	/* #353 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554437
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/EntryCreation"
	.zero	68

	/* #354 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554449
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/EntryListAdapter"
	.zero	65

	/* #355 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554450
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/EntryListAdapter_TableViewHolder"
	.zero	49

	/* #356 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554478
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/EntryViewPage"
	.zero	68

	/* #357 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554438
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/LoginScreen"
	.zero	70

	/* #358 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554457
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/MainActivity"
	.zero	69

	/* #359 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/PasswordRequest"
	.zero	66

	/* #360 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554442
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/Settings"
	.zero	73

	/* #361 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554443
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/SettingsFragment"
	.zero	65

	/* #362 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554444
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/SplashScreen"
	.zero	69

	/* #363 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554445
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableCreation"
	.zero	68

	/* #364 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554446
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableCreation2"
	.zero	67

	/* #365 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554448
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableDescriptionPage"
	.zero	61

	/* #366 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554455
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableView"
	.zero	72

	/* #367 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554435
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableViewAdapter"
	.zero	65

	/* #368 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554436
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/TableViewAdapter_TableViewHolder"
	.zero	49

	/* #369 */
	/* module_index */
	.long	5
	/* type_token_id */
	.long	33554482
	/* java_name */
	.ascii	"crc64ccef0fc746faa48b/Test"
	.zero	77

	/* #370 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555117
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	86

	/* #371 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555113
	/* java_name */
	.ascii	"java/io/File"
	.zero	91

	/* #372 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555114
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	81

	/* #373 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555115
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	80

	/* #374 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555119
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	86

	/* #375 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555123
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	84

	/* #376 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555120
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	84

	/* #377 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555122
	/* java_name */
	.ascii	"java/io/InterruptedIOException"
	.zero	73

	/* #378 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555126
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	83

	/* #379 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555128
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	84

	/* #380 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555125
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	83

	/* #381 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555129
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	83

	/* #382 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555130
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	89

	/* #383 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555081
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	83

	/* #384 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555055
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	86

	/* #385 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555056
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	89

	/* #386 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555082
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	81

	/* #387 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555057
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	84

	/* #388 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555058
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	88

	/* #389 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555074
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	75

	/* #390 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555075
	/* java_name */
	.ascii	"java/lang/ClassLoader"
	.zero	82

	/* #391 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555059
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	71

	/* #392 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555085
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	84

	/* #393 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555087
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	83

	/* #394 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555060
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	87

	/* #395 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555077
	/* java_name */
	.ascii	"java/lang/Enum"
	.zero	89

	/* #396 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555079
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	88

	/* #397 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555061
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	84

	/* #398 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555062
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	88

	/* #399 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555090
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	69

	/* #400 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555091
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	72

	/* #401 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555092
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	68

	/* #402 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555064
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	86

	/* #403 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555089
	/* java_name */
	.ascii	"java/lang/Iterable"
	.zero	85

	/* #404 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555095
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	81

	/* #405 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555065
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	89

	/* #406 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555096
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	73

	/* #407 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555097
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	73

	/* #408 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555098
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	87

	/* #409 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555066
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	87

	/* #410 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555100
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	65

	/* #411 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555094
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	85

	/* #412 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555067
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	77

	/* #413 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555101
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	76

	/* #414 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555068
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	88

	/* #415 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555069
	/* java_name */
	.ascii	"java/lang/String"
	.zero	87

	/* #416 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555071
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	87

	/* #417 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555073
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	84

	/* #418 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555102
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	64

	/* #419 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555104
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	72

	/* #420 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555106
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	69

	/* #421 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555108
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	67

	/* #422 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555110
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	81

	/* #423 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555112
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	73

	/* #424 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554987
	/* java_name */
	.ascii	"java/net/ConnectException"
	.zero	78

	/* #425 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554989
	/* java_name */
	.ascii	"java/net/HttpURLConnection"
	.zero	77

	/* #426 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554991
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	77

	/* #427 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554992
	/* java_name */
	.ascii	"java/net/ProtocolException"
	.zero	77

	/* #428 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554993
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	89

	/* #429 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554994
	/* java_name */
	.ascii	"java/net/Proxy$Type"
	.zero	84

	/* #430 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554995
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	81

	/* #431 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554997
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	81

	/* #432 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554999
	/* java_name */
	.ascii	"java/net/SocketException"
	.zero	79

	/* #433 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555000
	/* java_name */
	.ascii	"java/net/SocketTimeoutException"
	.zero	72

	/* #434 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555002
	/* java_name */
	.ascii	"java/net/URI"
	.zero	91

	/* #435 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555003
	/* java_name */
	.ascii	"java/net/URL"
	.zero	91

	/* #436 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555004
	/* java_name */
	.ascii	"java/net/URLConnection"
	.zero	81

	/* #437 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555001
	/* java_name */
	.ascii	"java/net/UnknownServiceException"
	.zero	71

	/* #438 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555031
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	88

	/* #439 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555033
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	84

	/* #440 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555038
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	74

	/* #441 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555040
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	78

	/* #442 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555035
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	74

	/* #443 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555042
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	65

	/* #444 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555044
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	65

	/* #445 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555046
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	66

	/* #446 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555048
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	64

	/* #447 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555050
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	66

	/* #448 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555052
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	66

	/* #449 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555053
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	53

	/* #450 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555018
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	81

	/* #451 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555020
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	62

	/* #452 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555022
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	61

	/* #453 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555017
	/* java_name */
	.ascii	"java/security/Principal"
	.zero	80

	/* #454 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555023
	/* java_name */
	.ascii	"java/security/SecureRandom"
	.zero	77

	/* #455 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555024
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	73

	/* #456 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555026
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	66

	/* #457 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555029
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	69

	/* #458 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555028
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	71

	/* #459 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554955
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	84

	/* #460 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554944
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	83

	/* #461 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555007
	/* java_name */
	.ascii	"java/util/Enumeration"
	.zero	82

	/* #462 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554946
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	86

	/* #463 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554964
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	86

	/* #464 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555009
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	85

	/* #465 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555010
	/* java_name */
	.ascii	"java/util/Random"
	.zero	87

	/* #466 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555012
	/* java_name */
	.ascii	"java/util/concurrent/Executor"
	.zero	74

	/* #467 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555014
	/* java_name */
	.ascii	"java/util/concurrent/Future"
	.zero	76

	/* #468 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555015
	/* java_name */
	.ascii	"java/util/concurrent/TimeUnit"
	.zero	74

	/* #469 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554575
	/* java_name */
	.ascii	"javax/net/SocketFactory"
	.zero	80

	/* #470 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554580
	/* java_name */
	.ascii	"javax/net/ssl/HostnameVerifier"
	.zero	73

	/* #471 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554577
	/* java_name */
	.ascii	"javax/net/ssl/HttpsURLConnection"
	.zero	71

	/* #472 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554582
	/* java_name */
	.ascii	"javax/net/ssl/KeyManager"
	.zero	79

	/* #473 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554591
	/* java_name */
	.ascii	"javax/net/ssl/KeyManagerFactory"
	.zero	72

	/* #474 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554592
	/* java_name */
	.ascii	"javax/net/ssl/SSLContext"
	.zero	79

	/* #475 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554584
	/* java_name */
	.ascii	"javax/net/ssl/SSLSession"
	.zero	79

	/* #476 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554586
	/* java_name */
	.ascii	"javax/net/ssl/SSLSessionContext"
	.zero	72

	/* #477 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554593
	/* java_name */
	.ascii	"javax/net/ssl/SSLSocketFactory"
	.zero	73

	/* #478 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554588
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	77

	/* #479 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554595
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	70

	/* #480 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554590
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	73

	/* #481 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554571
	/* java_name */
	.ascii	"javax/security/cert/Certificate"
	.zero	72

	/* #482 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554573
	/* java_name */
	.ascii	"javax/security/cert/X509Certificate"
	.zero	68

	/* #483 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555153
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	79

	/* #484 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554891
	/* java_name */
	.ascii	"mono/android/content/DialogInterface_OnClickListenerImplementor"
	.zero	40

	/* #485 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554940
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	64

	/* #486 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	73

	/* #487 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554961
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	72

	/* #488 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554979
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	63

	/* #489 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554675
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	54

	/* #490 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554682
	/* java_name */
	.ascii	"mono/android/view/View_OnLongClickListenerImplementor"
	.zero	50

	/* #491 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554624
	/* java_name */
	.ascii	"mono/android/widget/AdapterView_OnItemLongClickListenerImplementor"
	.zero	37

	/* #492 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554658
	/* java_name */
	.ascii	"mono/android/widget/PopupMenu_OnMenuItemClickListenerImplementor"
	.zero	39

	/* #493 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554666
	/* java_name */
	.ascii	"mono/android/widget/SearchView_OnQueryTextListenerImplementor"
	.zero	42

	/* #494 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554497
	/* java_name */
	.ascii	"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor"
	.zero	30

	/* #495 */
	/* module_index */
	.long	10
	/* type_token_id */
	.long	33554525
	/* java_name */
	.ascii	"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor"
	.zero	30

	/* #496 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554500
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor"
	.zero	30

	/* #497 */
	/* module_index */
	.long	3
	/* type_token_id */
	.long	33554504
	/* java_name */
	.ascii	"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor"
	.zero	35

	/* #498 */
	/* module_index */
	.long	2
	/* type_token_id */
	.long	33554461
	/* java_name */
	.ascii	"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor"
	.zero	31

	/* #499 */
	/* module_index */
	.long	11
	/* type_token_id */
	.long	33554481
	/* java_name */
	.ascii	"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor"
	.zero	23

	/* #500 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554496
	/* java_name */
	.ascii	"mono/androidx/preference/PreferenceGroup_OnExpandButtonClickListenerImplementor"
	.zero	24

	/* #501 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554506
	/* java_name */
	.ascii	"mono/androidx/preference/PreferenceManager_OnDisplayPreferenceDialogListenerImplementor"
	.zero	16

	/* #502 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554510
	/* java_name */
	.ascii	"mono/androidx/preference/PreferenceManager_OnNavigateToScreenListenerImplementor"
	.zero	23

	/* #503 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554514
	/* java_name */
	.ascii	"mono/androidx/preference/PreferenceManager_OnPreferenceTreeClickListenerImplementor"
	.zero	20

	/* #504 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554478
	/* java_name */
	.ascii	"mono/androidx/preference/Preference_OnPreferenceChangeListenerImplementor"
	.zero	30

	/* #505 */
	/* module_index */
	.long	6
	/* type_token_id */
	.long	33554482
	/* java_name */
	.ascii	"mono/androidx/preference/Preference_OnPreferenceClickListenerImplementor"
	.zero	31

	/* #506 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554521
	/* java_name */
	.ascii	"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor"
	.zero	13

	/* #507 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554529
	/* java_name */
	.ascii	"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor"
	.zero	26

	/* #508 */
	/* module_index */
	.long	8
	/* type_token_id */
	.long	33554537
	/* java_name */
	.ascii	"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor"
	.zero	29

	/* #509 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554454
	/* java_name */
	.ascii	"mono/com/google/android/material/behavior/SwipeDismissBehavior_OnDismissListenerImplementor"
	.zero	12

	/* #510 */
	/* module_index */
	.long	9
	/* type_token_id */
	.long	33554439
	/* java_name */
	.ascii	"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor"
	.zero	1

	/* #511 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33555072
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	69

	/* #512 */
	/* module_index */
	.long	0
	/* type_token_id */
	.long	33554567
	/* java_name */
	.ascii	"xamarin/android/net/OldAndroidSSLSocketFactory"
	.zero	57

	.size	map_java, 56943
/* Java to managed map: END */

