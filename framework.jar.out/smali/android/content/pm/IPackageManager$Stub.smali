.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_activitySupportsIntent:I = 0x10

.field static final TRANSACTION_adbDialog:I = 0x9a

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x4d

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0x90

.field static final TRANSACTION_addPackageToPreferred:I = 0x41

.field static final TRANSACTION_addPermission:I = 0x16

.field static final TRANSACTION_addPermissionAsync:I = 0x72

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x4b

.field static final TRANSACTION_addPreferredActivity:I = 0x47

.field static final TRANSACTION_authentificationFeatureMap:I = 0x9b

.field static final TRANSACTION_canForwardTo:I = 0x2a

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x9

.field static final TRANSACTION_checkAPKSignatures:I = 0x83

.field static final TRANSACTION_checkPermission:I = 0x14

.field static final TRANSACTION_checkSignatures:I = 0x20

.field static final TRANSACTION_checkUidPermission:I = 0x15

.field static final TRANSACTION_checkUidSignatures:I = 0x21

.field static final TRANSACTION_clearApplicationUserData:I = 0x5e

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x4e

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x4c

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x49

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x8

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x5d

.field static final TRANSACTION_deletePackage:I = 0x3f

.field static final TRANSACTION_deletePackageAsUser:I = 0x3e

.field static final TRANSACTION_enforceDexOpt:I = 0x68

.field static final TRANSACTION_enterSafeMode:I = 0x63

.field static final TRANSACTION_extendVerificationTimeout:I = 0x77

.field static final TRANSACTION_finishPackageInstall:I = 0x3c

.field static final TRANSACTION_forceDexOpt:I = 0x6a

.field static final TRANSACTION_freeStorage:I = 0x5c

.field static final TRANSACTION_freeStorageAndNotify:I = 0x5b

.field static final TRANSACTION_getActivityInfo:I = 0xf

.field static final TRANSACTION_getAllIntentFilters:I = 0x7c

.field static final TRANSACTION_getAllPermissionGroups:I = 0xd

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x28

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x59

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x88

.field static final TRANSACTION_getApplicationInfo:I = 0xe

.field static final TRANSACTION_getBlockUninstallForUser:I = 0x8b

.field static final TRANSACTION_getCloneResolveInfo:I = 0x1

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x57

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x51

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0x7e

.field static final TRANSACTION_getFeatureMap:I = 0x9c

.field static final TRANSACTION_getFlagsForUid:I = 0x25

.field static final TRANSACTION_getHomeActivities:I = 0x55

.field static final TRANSACTION_getInstallLocation:I = 0x74

.field static final TRANSACTION_getInstalledApplications:I = 0x33

.field static final TRANSACTION_getInstalledPackages:I = 0x31

.field static final TRANSACTION_getInstallerPackageName:I = 0x40

.field static final TRANSACTION_getInstrumentationInfo:I = 0x38

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x53

.field static final TRANSACTION_getIntentFilterVerifications:I = 0x7b

.field static final TRANSACTION_getIntentVerificationStatus:I = 0x79

.field static final TRANSACTION_getKeySetByAlias:I = 0x8c

.field static final TRANSACTION_getLastChosenActivity:I = 0x45

.field static final TRANSACTION_getMoveStatus:I = 0x6d

.field static final TRANSACTION_getNameForUid:I = 0x23

.field static final TRANSACTION_getPackageGids:I = 0x7

.field static final TRANSACTION_getPackageInfo:I = 0x5

.field static final TRANSACTION_getPackageInstaller:I = 0x89

.field static final TRANSACTION_getPackageSizeInfo:I = 0x5f

.field static final TRANSACTION_getPackageUid:I = 0x6

.field static final TRANSACTION_getPackagesForUid:I = 0x22

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x32

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0x94

.field static final TRANSACTION_getPermissionFlags:I = 0x1b

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xc

.field static final TRANSACTION_getPermissionInfo:I = 0xa

.field static final TRANSACTION_getPersistentApplications:I = 0x34

.field static final TRANSACTION_getPreferredActivities:I = 0x4a

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x4f

.field static final TRANSACTION_getPreferredPackages:I = 0x43

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x26

.field static final TRANSACTION_getProviderInfo:I = 0x13

.field static final TRANSACTION_getReceiverInfo:I = 0x11

.field static final TRANSACTION_getServiceInfo:I = 0x12

.field static final TRANSACTION_getSigningKeySet:I = 0x8d

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x61

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x60

.field static final TRANSACTION_getUidForSharedUser:I = 0x24

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0x7f

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0x92

.field static final TRANSACTION_grantRuntimePermission:I = 0x18

.field static final TRANSACTION_hasSystemFeature:I = 0x62

.field static final TRANSACTION_hasSystemUidErrors:I = 0x66

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x75

.field static final TRANSACTION_installPackage:I = 0x3a

.field static final TRANSACTION_installPackageAsUser:I = 0x3b

.field static final TRANSACTION_isAppDouble:I = 0x2

.field static final TRANSACTION_isFirstBoot:I = 0x80

.field static final TRANSACTION_isOnlyCoreApps:I = 0x81

.field static final TRANSACTION_isPackageAvailable:I = 0x4

.field static final TRANSACTION_isPackageFrozen:I = 0x3

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0x8e

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0x8f

.field static final TRANSACTION_isPermissionEnforced:I = 0x85

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0x93

.field static final TRANSACTION_isProtectedBroadcast:I = 0x1f

.field static final TRANSACTION_isSafeMode:I = 0x64

.field static final TRANSACTION_isStorageLow:I = 0x86

.field static final TRANSACTION_isUidPrivileged:I = 0x27

.field static final TRANSACTION_isUpgrade:I = 0x82

.field static final TRANSACTION_movePackage:I = 0x70

.field static final TRANSACTION_movePrimaryStorage:I = 0x71

.field static final TRANSACTION_nextPackageToClean:I = 0x6c

.field static final TRANSACTION_onBootPhase:I = 0x9f

.field static final TRANSACTION_performBootDexOpt:I = 0x67

.field static final TRANSACTION_performDexOptIfNeeded:I = 0x69

.field static final TRANSACTION_pmScanPackageLI:I = 0x96

.field static final TRANSACTION_queryContentProviders:I = 0x37

.field static final TRANSACTION_queryDefaultPreferredActivity:I = 0x9e

.field static final TRANSACTION_queryInstrumentation:I = 0x39

.field static final TRANSACTION_queryIntentActivities:I = 0x2b

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x2c

.field static final TRANSACTION_queryIntentContentProviders:I = 0x30

.field static final TRANSACTION_queryIntentReceivers:I = 0x2d

.field static final TRANSACTION_queryIntentServices:I = 0x2f

.field static final TRANSACTION_queryPermissionsByGroup:I = 0xb

.field static final TRANSACTION_querySyncProviders:I = 0x36

.field static final TRANSACTION_recoverySystemInstallPackage:I = 0x95

.field static final TRANSACTION_registerLaunchedObserver:I = 0x97

.field static final TRANSACTION_registerMoveCallback:I = 0x6e

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0x91

.field static final TRANSACTION_removePackageFromPreferred:I = 0x42

.field static final TRANSACTION_removePermission:I = 0x17

.field static final TRANSACTION_replacePreferredActivity:I = 0x48

.field static final TRANSACTION_resetApplicationPreferences:I = 0x44

.field static final TRANSACTION_resetRuntimePermissions:I = 0x1a

.field static final TRANSACTION_resolveContentProvider:I = 0x35

.field static final TRANSACTION_resolveIntent:I = 0x29

.field static final TRANSACTION_resolveService:I = 0x2e

.field static final TRANSACTION_restoreDefaultApps:I = 0x52

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x54

.field static final TRANSACTION_restorePreferredActivities:I = 0x50

.field static final TRANSACTION_revokeRuntimePermission:I = 0x19

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x58

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x87

.field static final TRANSACTION_setBlockUninstallForUser:I = 0x8a

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x56

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0x7d

.field static final TRANSACTION_setInstallLocation:I = 0x73

.field static final TRANSACTION_setInstallerPackageName:I = 0x3d

.field static final TRANSACTION_setLastChosenActivity:I = 0x46

.field static final TRANSACTION_setLaunchedPackage:I = 0x99

.field static final TRANSACTION_setPackageStoppedState:I = 0x5a

.field static final TRANSACTION_setPermByList:I = 0x9d

.field static final TRANSACTION_setPermissionEnforced:I = 0x84

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x1e

.field static final TRANSACTION_systemReady:I = 0x65

.field static final TRANSACTION_unRegisterLaunchedObserver:I = 0x98

.field static final TRANSACTION_unregisterMoveCallback:I = 0x6f

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x6b

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0x7a

.field static final TRANSACTION_updatePermissionFlags:I = 0x1c

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x1d

.field static final TRANSACTION_verifyIntentFilter:I = 0x78

.field static final TRANSACTION_verifyPendingInstall:I = 0x76


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Landroid/content/pm/IPackageManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 108
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 2259
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 49
    :sswitch_0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v6, 0x1

    return v6

    .line 54
    :sswitch_1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    sget-object v6, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/pm/ResolveInfo;

    .line 62
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getCloneResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v90

    .line 63
    .local v90, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v90, :cond_1

    .line 65
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v6, 0x1

    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 60
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_0
    const/16 v52, 0x0

    .local v52, "_arg0":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 69
    .end local v52    # "_arg0":Landroid/content/pm/ResolveInfo;
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 75
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isAppDouble(Ljava/lang/String;)Z

    move-result v103

    .line 79
    .local v103, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v103, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v6, 0x1

    return v6

    .line 80
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 85
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 88
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPackageFrozen(Ljava/lang/String;)Z

    move-result v103

    .line 89
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v103, :cond_3

    const/4 v6, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v6, 0x1

    return v6

    .line 90
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 95
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 99
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 100
    .local v36, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v103

    .line 101
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v103, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v6, 0x1

    return v6

    .line 102
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 107
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v103    # "_result":Z
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 113
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 114
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v85

    .line 115
    .local v85, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v85, :cond_5

    .line 117
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/4 v6, 0x1

    move-object/from16 v0, v85

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 123
    :goto_5
    const/4 v6, 0x1

    return v6

    .line 121
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 127
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v85    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 131
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 132
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;I)I

    move-result v77

    .line 133
    .local v77, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v6, 0x1

    return v6

    .line 139
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v77    # "_result":I
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 144
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v105

    .line 145
    .local v105, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 147
    const/4 v6, 0x1

    return v6

    .line 151
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v105    # "_result":[I
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v58

    .line 154
    .local v58, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 155
    .local v107, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 157
    const/4 v6, 0x1

    return v6

    .line 161
    .end local v58    # "_arg0":[Ljava/lang/String;
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v58

    .line 164
    .restart local v58    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 165
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 167
    const/4 v6, 0x1

    return v6

    .line 171
    .end local v58    # "_arg0":[Ljava/lang/String;
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 175
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 176
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v88

    .line 177
    .local v88, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v88, :cond_6

    .line 179
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    :goto_6
    const/4 v6, 0x1

    return v6

    .line 183
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 189
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v88    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 193
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 194
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v100

    .line 195
    .local v100, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    move-object/from16 v0, p3

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 197
    const/4 v6, 0x1

    return v6

    .line 201
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v100    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 205
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 206
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v87

    .line 207
    .local v87, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v87, :cond_7

    .line 209
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v6, 0x1

    move-object/from16 v0, v87

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 215
    :goto_7
    const/4 v6, 0x1

    return v6

    .line 213
    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 219
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 222
    .local v46, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v99

    .line 223
    .local v99, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    move-object/from16 v0, p3

    move-object/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 225
    const/4 v6, 0x1

    return v6

    .line 229
    .end local v46    # "_arg0":I
    .end local v99    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 233
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 235
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 236
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v80

    .line 237
    .local v80, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    if-eqz v80, :cond_8

    .line 239
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v6, 0x1

    move-object/from16 v0, v80

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 245
    :goto_8
    const/4 v6, 0x1

    return v6

    .line 243
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 249
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v80    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 252
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 258
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 260
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 261
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v79

    .line 262
    .local v79, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    if-eqz v79, :cond_a

    .line 264
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v6, 0x1

    move-object/from16 v0, v79

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 270
    :goto_a
    const/4 v6, 0x1

    return v6

    .line 255
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v79    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_9
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_9

    .line 268
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v79    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 274
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v79    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_10
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 277
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 283
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 284
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Landroid/content/Intent;

    .line 290
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 291
    .local v75, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v75

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v103

    .line 292
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    if-eqz v103, :cond_d

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v6, 0x1

    return v6

    .line 280
    .end local v75    # "_arg2":Ljava/lang/String;
    .end local v103    # "_result":Z
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 287
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_c
    const/16 v62, 0x0

    .local v62, "_arg1":Landroid/content/Intent;
    goto :goto_c

    .line 293
    .end local v62    # "_arg1":Landroid/content/Intent;
    .restart local v75    # "_arg2":Ljava/lang/String;
    .restart local v103    # "_result":Z
    :cond_d
    const/4 v6, 0x0

    goto :goto_d

    .line 298
    .end local v75    # "_arg2":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_11
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 301
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 307
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 309
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 310
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v79

    .line 311
    .restart local v79    # "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v79, :cond_f

    .line 313
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v6, 0x1

    move-object/from16 v0, v79

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    :goto_f
    const/4 v6, 0x1

    return v6

    .line 304
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v79    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_e
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 317
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v79    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 323
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v79    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_12
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 326
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 332
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 334
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 335
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v91

    .line 336
    .local v91, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    if-eqz v91, :cond_11

    .line 338
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v6, 0x1

    move-object/from16 v0, v91

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 344
    :goto_11
    const/4 v6, 0x1

    return v6

    .line 329
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v91    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 342
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v91    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_11
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 348
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v91    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_13
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 351
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 357
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 359
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 360
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v89

    .line 361
    .local v89, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v89, :cond_13

    .line 363
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    const/4 v6, 0x1

    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 369
    :goto_13
    const/4 v6, 0x1

    return v6

    .line 354
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_12
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 367
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v36    # "_arg1":I
    .restart local v89    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 373
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_14
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 377
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 380
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v77

    .line 381
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    const/4 v6, 0x1

    return v6

    .line 387
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v77    # "_result":I
    :sswitch_15
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 391
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 392
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v77

    .line 393
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v6, 0x1

    return v6

    .line 399
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v77    # "_result":I
    :sswitch_16
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    .line 402
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/content/pm/PermissionInfo;

    .line 407
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v103

    .line 408
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    if-eqz v103, :cond_15

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/4 v6, 0x1

    return v6

    .line 405
    .end local v103    # "_result":Z
    :cond_14
    const/16 v51, 0x0

    .local v51, "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_14

    .line 409
    .end local v51    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v103    # "_result":Z
    :cond_15
    const/4 v6, 0x0

    goto :goto_15

    .line 414
    .end local v103    # "_result":Z
    :sswitch_17
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 417
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v6, 0x1

    return v6

    .line 423
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 427
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 429
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 430
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    const/4 v6, 0x1

    return v6

    .line 436
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_19
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 440
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 442
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 443
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v6, 0x1

    return v6

    .line 449
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    :sswitch_1a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v6, 0x1

    return v6

    .line 456
    :sswitch_1b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 460
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 462
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 463
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v77

    .line 464
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v6, 0x1

    return v6

    .line 470
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v77    # "_result":I
    :sswitch_1c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 474
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 476
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 478
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 480
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v6, p0

    .line 481
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v6, 0x1

    return v6

    .line 487
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_1d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 491
    .restart local v46    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 493
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 494
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v6, 0x1

    return v6

    .line 500
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v46    # "_arg0":I
    :sswitch_1e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 504
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 506
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 507
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v103

    .line 508
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    if-eqz v103, :cond_16

    const/4 v6, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    const/4 v6, 0x1

    return v6

    .line 509
    :cond_16
    const/4 v6, 0x0

    goto :goto_16

    .line 514
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v103    # "_result":Z
    :sswitch_1f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 517
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v103

    .line 518
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v103, :cond_17

    const/4 v6, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v6, 0x1

    return v6

    .line 519
    :cond_17
    const/4 v6, 0x0

    goto :goto_17

    .line 524
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_20
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 528
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 529
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v77

    .line 530
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v6, 0x1

    return v6

    .line 536
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v77    # "_result":I
    :sswitch_21
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 540
    .restart local v46    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 541
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v77

    .line 542
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/4 v6, 0x1

    return v6

    .line 548
    .end local v36    # "_arg1":I
    .end local v46    # "_arg0":I
    .end local v77    # "_result":I
    :sswitch_22
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 551
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v107

    .line 552
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 554
    const/4 v6, 0x1

    return v6

    .line 558
    .end local v46    # "_arg0":I
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 561
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v93

    .line 562
    .local v93, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v0, p3

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    const/4 v6, 0x1

    return v6

    .line 568
    .end local v46    # "_arg0":I
    .end local v93    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 571
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v77

    .line 572
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v6, 0x1

    return v6

    .line 578
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v77    # "_result":I
    :sswitch_25
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 581
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v77

    .line 582
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v6, 0x1

    return v6

    .line 588
    .end local v46    # "_arg0":I
    .end local v77    # "_result":I
    :sswitch_26
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 591
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v77

    .line 592
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v6, 0x1

    return v6

    .line 598
    .end local v46    # "_arg0":I
    .end local v77    # "_result":I
    :sswitch_27
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 601
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v103

    .line 602
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v103, :cond_18

    const/4 v6, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v6, 0x1

    return v6

    .line 603
    :cond_18
    const/4 v6, 0x0

    goto :goto_18

    .line 608
    .end local v46    # "_arg0":I
    .end local v103    # "_result":Z
    :sswitch_28
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 611
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 612
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 614
    const/4 v6, 0x1

    return v6

    .line 618
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    .line 621
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 627
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 629
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 631
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 632
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v90

    .line 633
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    if-eqz v90, :cond_1a

    .line 635
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v6, 0x1

    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 641
    :goto_1a
    const/4 v6, 0x1

    return v6

    .line 624
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_19
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/content/Intent;
    goto :goto_19

    .line 639
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_1a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 645
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_2a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 648
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 654
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 656
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 658
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 659
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v103

    .line 660
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v103, :cond_1c

    const/4 v6, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v6, 0x1

    return v6

    .line 651
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v103    # "_result":Z
    :cond_1b
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_1b

    .line 661
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v103    # "_result":Z
    :cond_1c
    const/4 v6, 0x0

    goto :goto_1c

    .line 666
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v103    # "_result":Z
    :sswitch_2b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    .line 669
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 675
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 677
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 679
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 680
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v101

    .line 681
    .local v101, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 683
    const/4 v6, 0x1

    return v6

    .line 672
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1d
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_1d

    .line 687
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    .line 690
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 696
    :goto_1e
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/Intent;

    .line 698
    .local v14, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 700
    .local v15, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    .line 701
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Intent;

    .line 707
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 709
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 711
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg6":I
    move-object/from16 v12, p0

    .line 712
    invoke-virtual/range {v12 .. v19}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v101

    .line 713
    .restart local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 715
    const/4 v6, 0x1

    return v6

    .line 693
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    .end local v19    # "_arg6":I
    .end local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1e
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    .line 704
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v14    # "_arg1":[Landroid/content/Intent;
    .restart local v15    # "_arg2":[Ljava/lang/String;
    :cond_1f
    const/16 v16, 0x0

    .local v16, "_arg3":Landroid/content/Intent;
    goto :goto_1f

    .line 719
    .end local v14    # "_arg1":[Landroid/content/Intent;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v16    # "_arg3":Landroid/content/Intent;
    :sswitch_2d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    .line 722
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 728
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 730
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 732
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 733
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v101

    .line 734
    .restart local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 736
    const/4 v6, 0x1

    return v6

    .line 725
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_20
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_20

    .line 740
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_2e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    .line 743
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 749
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 751
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 753
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 754
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v90

    .line 755
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    if-eqz v90, :cond_22

    .line 757
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v6, 0x1

    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 763
    :goto_22
    const/4 v6, 0x1

    return v6

    .line 746
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_21
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_21

    .line 761
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_22
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 767
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_2f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 770
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 776
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 778
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 780
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 781
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v101

    .line 782
    .restart local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 784
    const/4 v6, 0x1

    return v6

    .line 773
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_23
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_23

    .line 788
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_30
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    .line 791
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 797
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 799
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 801
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 802
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v101

    .line 803
    .restart local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    move-object/from16 v0, p3

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 805
    const/4 v6, 0x1

    return v6

    .line 794
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v101    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_24
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_24

    .line 809
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_31
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 813
    .restart local v46    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 814
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v86

    .line 815
    .local v86, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v86, :cond_25

    .line 817
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    const/4 v6, 0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 823
    :goto_25
    const/4 v6, 0x1

    return v6

    .line 821
    :cond_25
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 827
    .end local v36    # "_arg1":I
    .end local v46    # "_arg0":I
    .end local v86    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_32
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v58

    .line 831
    .restart local v58    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 833
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 834
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v86

    .line 835
    .restart local v86    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    if-eqz v86, :cond_26

    .line 837
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    const/4 v6, 0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 843
    :goto_26
    const/4 v6, 0x1

    return v6

    .line 841
    :cond_26
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 847
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v58    # "_arg0":[Ljava/lang/String;
    .end local v86    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_33
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 851
    .restart local v46    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 852
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v86

    .line 853
    .restart local v86    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    if-eqz v86, :cond_27

    .line 855
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v6, 0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 861
    :goto_27
    const/4 v6, 0x1

    return v6

    .line 859
    :cond_27
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 865
    .end local v36    # "_arg1":I
    .end local v46    # "_arg0":I
    .end local v86    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_34
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 868
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v95

    .line 869
    .local v95, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    move-object/from16 v0, p3

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 871
    const/4 v6, 0x1

    return v6

    .line 875
    .end local v46    # "_arg0":I
    .end local v95    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_35
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 879
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 881
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 882
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v89

    .line 883
    .restart local v89    # "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    if-eqz v89, :cond_28

    .line 885
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    const/4 v6, 0x1

    move-object/from16 v0, v89

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 891
    :goto_28
    const/4 v6, 0x1

    return v6

    .line 889
    :cond_28
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 895
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v89    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_36
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v55

    .line 899
    .local v55, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v68

    .line 900
    .local v68, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 901
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 903
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 904
    const/4 v6, 0x1

    return v6

    .line 908
    .end local v55    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v68    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_37
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 912
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 914
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 915
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v86

    .line 916
    .restart local v86    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    if-eqz v86, :cond_29

    .line 918
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    const/4 v6, 0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 924
    :goto_29
    const/4 v6, 0x1

    return v6

    .line 922
    :cond_29
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 928
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v86    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_38
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    .line 931
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 937
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 938
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v82

    .line 939
    .local v82, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    if-eqz v82, :cond_2b

    .line 941
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    const/4 v6, 0x1

    move-object/from16 v0, v82

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 947
    :goto_2b
    const/4 v6, 0x1

    return v6

    .line 934
    .end local v36    # "_arg1":I
    .end local v82    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_2a
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2a

    .line 945
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v36    # "_arg1":I
    .restart local v82    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 951
    .end local v36    # "_arg1":I
    .end local v82    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_39
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 955
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 956
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v96

    .line 957
    .local v96, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    move-object/from16 v0, p3

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 959
    const/4 v6, 0x1

    return v6

    .line 963
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v96    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_3a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 967
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v22

    .line 969
    .local v22, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 971
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 973
    .local v24, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    .line 974
    sget-object v6, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/VerificationParams;

    .line 980
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .local v26, "_arg5":Ljava/lang/String;
    move-object/from16 v20, p0

    move-object/from16 v21, v7

    move/from16 v23, v9

    .line 981
    invoke-virtual/range {v20 .. v26}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    const/4 v6, 0x1

    return v6

    .line 977
    .end local v26    # "_arg5":Ljava/lang/String;
    :cond_2c
    const/16 v25, 0x0

    .local v25, "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_2c

    .line 987
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_3b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 991
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v22

    .line 993
    .restart local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 995
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 997
    .restart local v24    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    .line 998
    sget-object v6, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/VerificationParams;

    .line 1004
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1006
    .restart local v26    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg6":I
    move-object/from16 v20, p0

    move-object/from16 v21, v7

    move/from16 v23, v9

    move/from16 v27, v19

    .line 1007
    invoke-virtual/range {v20 .. v27}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;I)V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    const/4 v6, 0x1

    return v6

    .line 1001
    .end local v19    # "_arg6":I
    .end local v26    # "_arg5":Ljava/lang/String;
    :cond_2d
    const/16 v25, 0x0

    .restart local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    goto :goto_2d

    .line 1013
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v22    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":Landroid/content/pm/VerificationParams;
    :sswitch_3c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1016
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    const/4 v6, 0x1

    return v6

    .line 1022
    .end local v46    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1026
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1027
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    const/4 v6, 0x1

    return v6

    .line 1033
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1037
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v65

    .line 1039
    .local v65, "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1041
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1042
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    const/4 v6, 0x1

    return v6

    .line 1048
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v65    # "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    :sswitch_3f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1052
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v64

    .line 1054
    .local v64, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1056
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1057
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    const/4 v6, 0x1

    return v6

    .line 1063
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v64    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    :sswitch_40
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1066
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v93

    .line 1067
    .restart local v93    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1068
    move-object/from16 v0, p3

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1069
    const/4 v6, 0x1

    return v6

    .line 1073
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v93    # "_result":Ljava/lang/String;
    :sswitch_41
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1076
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    const/4 v6, 0x1

    return v6

    .line 1082
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_42
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1085
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    const/4 v6, 0x1

    return v6

    .line 1091
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1094
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v98

    .line 1095
    .local v98, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    move-object/from16 v0, p3

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1097
    const/4 v6, 0x1

    return v6

    .line 1101
    .end local v46    # "_arg0":I
    .end local v98    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_44
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1104
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    .line 1105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    const/4 v6, 0x1

    return v6

    .line 1110
    .end local v46    # "_arg0":I
    :sswitch_45
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 1113
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 1119
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1121
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1122
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v90

    .line 1123
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    if-eqz v90, :cond_2f

    .line 1125
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1126
    const/4 v6, 0x1

    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1131
    :goto_2f
    const/4 v6, 0x1

    return v6

    .line 1116
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_2e
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_2e

    .line 1129
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_2f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 1135
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_46
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    .line 1138
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 1144
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1146
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1148
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    .line 1149
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/IntentFilter;

    .line 1155
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1157
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    .line 1158
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/ComponentName;

    :goto_32
    move-object/from16 v27, p0

    move-object/from16 v29, v8

    move/from16 v30, v9

    move/from16 v32, v11

    .line 1163
    invoke-virtual/range {v27 .. v33}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    const/4 v6, 0x1

    return v6

    .line 1141
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    :cond_30
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_30

    .line 1152
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    :cond_31
    const/16 v31, 0x0

    .local v31, "_arg3":Landroid/content/IntentFilter;
    goto :goto_31

    .line 1161
    .end local v31    # "_arg3":Landroid/content/IntentFilter;
    .restart local v11    # "_arg4":I
    :cond_32
    const/16 v33, 0x0

    .local v33, "_arg5":Landroid/content/ComponentName;
    goto :goto_32

    .line 1169
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":I
    .end local v33    # "_arg5":Landroid/content/ComponentName;
    :sswitch_47
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    .line 1172
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1178
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1180
    .restart local v36    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/content/ComponentName;

    .line 1182
    .local v37, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    .line 1183
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 1189
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v34, p0

    move/from16 v39, v11

    .line 1190
    invoke-virtual/range {v34 .. v39}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    const/4 v6, 0x1

    return v6

    .line 1175
    .end local v11    # "_arg4":I
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_33
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/content/IntentFilter;
    goto :goto_33

    .line 1186
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    .restart local v36    # "_arg1":I
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_34
    const/16 v38, 0x0

    .local v38, "_arg3":Landroid/content/ComponentName;
    goto :goto_34

    .line 1196
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    .end local v38    # "_arg3":Landroid/content/ComponentName;
    :sswitch_48
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    .line 1199
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1205
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1207
    .restart local v36    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Landroid/content/ComponentName;

    .line 1209
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    .line 1210
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 1216
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v34, p0

    move/from16 v39, v11

    .line 1217
    invoke-virtual/range {v34 .. v39}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    const/4 v6, 0x1

    return v6

    .line 1202
    .end local v11    # "_arg4":I
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_35
    const/16 v35, 0x0

    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_35

    .line 1213
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    .restart local v36    # "_arg1":I
    .restart local v37    # "_arg2":[Landroid/content/ComponentName;
    :cond_36
    const/16 v38, 0x0

    .restart local v38    # "_arg3":Landroid/content/ComponentName;
    goto :goto_36

    .line 1223
    .end local v36    # "_arg1":I
    .end local v37    # "_arg2":[Landroid/content/ComponentName;
    .end local v38    # "_arg3":Landroid/content/ComponentName;
    :sswitch_49
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1226
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1228
    const/4 v6, 0x1

    return v6

    .line 1232
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_4a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    .line 1236
    .local v53, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v67, Ljava/util/ArrayList;

    invoke-direct/range {v67 .. v67}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .local v67, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 1239
    .restart local v75    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v67

    move-object/from16 v3, v75

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v77

    .line 1240
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1243
    move-object/from16 v0, p3

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1244
    const/4 v6, 0x1

    return v6

    .line 1248
    .end local v53    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v67    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v75    # "_arg2":Ljava/lang/String;
    .end local v77    # "_result":I
    :sswitch_4b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    .line 1251
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1257
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    .line 1258
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/ComponentName;

    .line 1264
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1265
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    const/4 v6, 0x1

    return v6

    .line 1254
    .end local v9    # "_arg2":I
    :cond_37
    const/16 v35, 0x0

    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_37

    .line 1261
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    :cond_38
    const/16 v59, 0x0

    .local v59, "_arg1":Landroid/content/ComponentName;
    goto :goto_38

    .line 1271
    .end local v59    # "_arg1":Landroid/content/ComponentName;
    :sswitch_4c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1275
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1276
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    const/4 v6, 0x1

    return v6

    .line 1282
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    :sswitch_4d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    .line 1285
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1291
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1293
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1295
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1297
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg4":I
    move-object/from16 v39, p0

    move-object/from16 v40, v35

    move-object/from16 v41, v8

    move/from16 v42, v9

    move/from16 v43, v10

    move/from16 v44, v11

    .line 1298
    invoke-virtual/range {v39 .. v44}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 1299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    const/4 v6, 0x1

    return v6

    .line 1288
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :cond_39
    const/16 v35, 0x0

    .restart local v35    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_39

    .line 1304
    .end local v35    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_4e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1308
    .restart local v46    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1309
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 1310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    const/4 v6, 0x1

    return v6

    .line 1315
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v46    # "_arg0":I
    :sswitch_4f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1318
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v104

    .line 1319
    .local v104, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1321
    const/4 v6, 0x1

    return v6

    .line 1325
    .end local v46    # "_arg0":I
    .end local v104    # "_result":[B
    :sswitch_50
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v57

    .line 1329
    .local v57, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1330
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    .line 1331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    const/4 v6, 0x1

    return v6

    .line 1336
    .end local v36    # "_arg1":I
    .end local v57    # "_arg0":[B
    :sswitch_51
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1339
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v104

    .line 1340
    .restart local v104    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1342
    const/4 v6, 0x1

    return v6

    .line 1346
    .end local v46    # "_arg0":I
    .end local v104    # "_result":[B
    :sswitch_52
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v57

    .line 1350
    .restart local v57    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1351
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    .line 1352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    const/4 v6, 0x1

    return v6

    .line 1357
    .end local v36    # "_arg1":I
    .end local v57    # "_arg0":[B
    :sswitch_53
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1360
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    move-result-object v104

    .line 1361
    .restart local v104    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1362
    move-object/from16 v0, p3

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1363
    const/4 v6, 0x1

    return v6

    .line 1367
    .end local v46    # "_arg0":I
    .end local v104    # "_result":[B
    :sswitch_54
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v57

    .line 1371
    .restart local v57    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1372
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    const/4 v6, 0x1

    return v6

    .line 1378
    .end local v36    # "_arg1":I
    .end local v57    # "_arg0":[B
    :sswitch_55
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v54, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v78

    .line 1382
    .local v78, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1383
    if-eqz v78, :cond_3a

    .line 1384
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1385
    const/4 v6, 0x1

    move-object/from16 v0, v78

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1390
    :goto_3a
    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1391
    const/4 v6, 0x1

    return v6

    .line 1388
    :cond_3a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 1395
    .end local v54    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v78    # "_result":Landroid/content/ComponentName;
    :sswitch_56
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 1398
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1404
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1406
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1408
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1409
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    const/4 v6, 0x1

    return v6

    .line 1401
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v36    # "_arg1":I
    :cond_3b
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3b

    .line 1415
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_57
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    .line 1418
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 1424
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1425
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v77

    .line 1426
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    const/4 v6, 0x1

    return v6

    .line 1421
    .end local v36    # "_arg1":I
    .end local v77    # "_result":I
    :cond_3c
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3c

    .line 1432
    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_58
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1436
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1438
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1440
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1442
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg4":Ljava/lang/String;
    move-object/from16 v39, p0

    move-object/from16 v40, v7

    move/from16 v41, v36

    move/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v44, v17

    .line 1443
    invoke-virtual/range {v39 .. v44}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1445
    const/4 v6, 0x1

    return v6

    .line 1449
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v36    # "_arg1":I
    :sswitch_59
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1453
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1454
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v77

    .line 1455
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1456
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1457
    const/4 v6, 0x1

    return v6

    .line 1461
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v77    # "_result":I
    :sswitch_5a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1465
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v69, 0x1

    .line 1467
    .local v69, "_arg1":Z
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1468
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 1469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    const/4 v6, 0x1

    return v6

    .line 1465
    .end local v9    # "_arg2":I
    .end local v69    # "_arg1":Z
    :cond_3d
    const/16 v69, 0x0

    .restart local v69    # "_arg1":Z
    goto :goto_3d

    .line 1474
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v69    # "_arg1":Z
    :sswitch_5b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1478
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v60

    .line 1480
    .local v60, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v73

    .line 1481
    .local v73, "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    move-object/from16 v3, v73

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    .line 1482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1483
    const/4 v6, 0x1

    return v6

    .line 1487
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v60    # "_arg1":J
    .end local v73    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1491
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v60

    .line 1493
    .restart local v60    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 1494
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/IntentSender;

    .line 1499
    :goto_3e
    move-object/from16 v0, p0

    move-wide/from16 v1, v60

    move-object/from16 v3, v72

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    .line 1500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1501
    const/4 v6, 0x1

    return v6

    .line 1497
    :cond_3e
    const/16 v72, 0x0

    .local v72, "_arg2":Landroid/content/IntentSender;
    goto :goto_3e

    .line 1505
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v60    # "_arg1":J
    .end local v72    # "_arg2":Landroid/content/IntentSender;
    :sswitch_5d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1509
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v63

    .line 1510
    .local v63, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    const/4 v6, 0x1

    return v6

    .line 1516
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v63    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1520
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v63

    .line 1522
    .restart local v63    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1523
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 1524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    const/4 v6, 0x1

    return v6

    .line 1529
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v63    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_5f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1533
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1535
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v74

    .line 1536
    .local v74, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v74

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    const/4 v6, 0x1

    return v6

    .line 1542
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v74    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_60
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v107

    .line 1544
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1545
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1546
    const/4 v6, 0x1

    return v6

    .line 1550
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_61
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v106

    .line 1552
    .local v106, "_result":[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v106

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1554
    const/4 v6, 0x1

    return v6

    .line 1558
    .end local v106    # "_result":[Landroid/content/pm/FeatureInfo;
    :sswitch_62
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1561
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v103

    .line 1562
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    if-eqz v103, :cond_3f

    const/4 v6, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1564
    const/4 v6, 0x1

    return v6

    .line 1563
    :cond_3f
    const/4 v6, 0x0

    goto :goto_3f

    .line 1568
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_63
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 1570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    const/4 v6, 0x1

    return v6

    .line 1575
    :sswitch_64
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v103

    .line 1577
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    if-eqz v103, :cond_40

    const/4 v6, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    const/4 v6, 0x1

    return v6

    .line 1578
    :cond_40
    const/4 v6, 0x0

    goto :goto_40

    .line 1583
    .end local v103    # "_result":Z
    :sswitch_65
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1584
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 1585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1586
    const/4 v6, 0x1

    return v6

    .line 1590
    :sswitch_66
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1591
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v103

    .line 1592
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    if-eqz v103, :cond_41

    const/4 v6, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1594
    const/4 v6, 0x1

    return v6

    .line 1593
    :cond_41
    const/4 v6, 0x0

    goto :goto_41

    .line 1598
    .end local v103    # "_result":Z
    :sswitch_67
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->performBootDexOpt()V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    const/4 v6, 0x1

    return v6

    .line 1605
    :sswitch_68
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1608
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->enforceDexOpt(Ljava/lang/String;)Z

    move-result v103

    .line 1609
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    if-eqz v103, :cond_42

    const/4 v6, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1611
    const/4 v6, 0x1

    return v6

    .line 1610
    :cond_42
    const/4 v6, 0x0

    goto :goto_42

    .line 1615
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_69
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1619
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1620
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->performDexOptIfNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v103

    .line 1621
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    if-eqz v103, :cond_43

    const/4 v6, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1623
    const/4 v6, 0x1

    return v6

    .line 1622
    :cond_43
    const/4 v6, 0x0

    goto :goto_43

    .line 1627
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_6a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1630
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    const/4 v6, 0x1

    return v6

    .line 1636
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_6b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    const/16 v56, 0x1

    .line 1640
    .local v56, "_arg0":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    const/16 v69, 0x1

    .line 1641
    .restart local v69    # "_arg1":Z
    :goto_45
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 1642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    const/4 v6, 0x1

    return v6

    .line 1638
    .end local v56    # "_arg0":Z
    .end local v69    # "_arg1":Z
    :cond_44
    const/16 v56, 0x0

    .restart local v56    # "_arg0":Z
    goto :goto_44

    .line 1640
    :cond_45
    const/16 v69, 0x0

    .restart local v69    # "_arg1":Z
    goto :goto_45

    .line 1647
    .end local v56    # "_arg0":Z
    .end local v69    # "_arg1":Z
    :sswitch_6c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    .line 1650
    sget-object v6, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/pm/PackageCleanItem;

    .line 1655
    :goto_46
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v84

    .line 1656
    .local v84, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    if-eqz v84, :cond_47

    .line 1658
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    const/4 v6, 0x1

    move-object/from16 v0, v84

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1664
    :goto_47
    const/4 v6, 0x1

    return v6

    .line 1653
    .end local v84    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_46
    const/16 v50, 0x0

    .local v50, "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_46

    .line 1662
    .end local v50    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .restart local v84    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_47
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_47

    .line 1668
    .end local v84    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_6d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1671
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v77

    .line 1672
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1673
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    const/4 v6, 0x1

    return v6

    .line 1678
    .end local v46    # "_arg0":I
    .end local v77    # "_result":I
    :sswitch_6e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v49

    .line 1681
    .local v49, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1683
    const/4 v6, 0x1

    return v6

    .line 1687
    .end local v49    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_6f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v49

    .line 1690
    .restart local v49    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 1691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    const/4 v6, 0x1

    return v6

    .line 1696
    .end local v49    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_70
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1700
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1701
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v77

    .line 1702
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    const/4 v6, 0x1

    return v6

    .line 1708
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v77    # "_result":I
    :sswitch_71
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1711
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v77

    .line 1712
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    const/4 v6, 0x1

    return v6

    .line 1718
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v77    # "_result":I
    :sswitch_72
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    .line 1721
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/content/pm/PermissionInfo;

    .line 1726
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v103

    .line 1727
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    if-eqz v103, :cond_49

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    const/4 v6, 0x1

    return v6

    .line 1724
    .end local v103    # "_result":Z
    :cond_48
    const/16 v51, 0x0

    .restart local v51    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_48

    .line 1728
    .end local v51    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v103    # "_result":Z
    :cond_49
    const/4 v6, 0x0

    goto :goto_49

    .line 1733
    .end local v103    # "_result":Z
    :sswitch_73
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1736
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v103

    .line 1737
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    if-eqz v103, :cond_4a

    const/4 v6, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    const/4 v6, 0x1

    return v6

    .line 1738
    :cond_4a
    const/4 v6, 0x0

    goto :goto_4a

    .line 1743
    .end local v46    # "_arg0":I
    .end local v103    # "_result":Z
    :sswitch_74
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v77

    .line 1745
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1747
    const/4 v6, 0x1

    return v6

    .line 1751
    .end local v77    # "_result":I
    :sswitch_75
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1755
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1756
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v77

    .line 1757
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    const/4 v6, 0x1

    return v6

    .line 1763
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v77    # "_result":I
    :sswitch_76
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1767
    .restart local v46    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1768
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 1769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1770
    const/4 v6, 0x1

    return v6

    .line 1774
    .end local v36    # "_arg1":I
    .end local v46    # "_arg0":I
    :sswitch_77
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1778
    .restart local v46    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1780
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v70

    .line 1781
    .local v70, "_arg2":J
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    move-wide/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    const/4 v6, 0x1

    return v6

    .line 1787
    .end local v36    # "_arg1":I
    .end local v46    # "_arg0":I
    .end local v70    # "_arg2":J
    :sswitch_78
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1791
    .restart local v46    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1793
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v76

    .line 1794
    .local v76, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v36

    move-object/from16 v3, v76

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    .line 1795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    const/4 v6, 0x1

    return v6

    .line 1800
    .end local v36    # "_arg1":I
    .end local v46    # "_arg0":I
    .end local v76    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_79
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1804
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1805
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v77

    .line 1806
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1807
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1808
    const/4 v6, 0x1

    return v6

    .line 1812
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v77    # "_result":I
    :sswitch_7a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1816
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1818
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1819
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v103

    .line 1820
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    if-eqz v103, :cond_4b

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1822
    const/4 v6, 0x1

    return v6

    .line 1821
    :cond_4b
    const/4 v6, 0x0

    goto :goto_4b

    .line 1826
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v103    # "_result":Z
    :sswitch_7b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1829
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v97

    .line 1830
    .local v97, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    move-object/from16 v0, p3

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1832
    const/4 v6, 0x1

    return v6

    .line 1836
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v97    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/IntentFilterVerificationInfo;>;"
    :sswitch_7c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1839
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v94

    .line 1840
    .local v94, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1841
    move-object/from16 v0, p3

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1842
    const/4 v6, 0x1

    return v6

    .line 1846
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v94    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    :sswitch_7d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1850
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1851
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v103

    .line 1852
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    if-eqz v103, :cond_4c

    const/4 v6, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1854
    const/4 v6, 0x1

    return v6

    .line 1853
    :cond_4c
    const/4 v6, 0x0

    goto :goto_4c

    .line 1858
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v103    # "_result":Z
    :sswitch_7e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1861
    .restart local v46    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v93

    .line 1862
    .restart local v93    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    move-object/from16 v0, p3

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1864
    const/4 v6, 0x1

    return v6

    .line 1868
    .end local v46    # "_arg0":I
    .end local v93    # "_result":Ljava/lang/String;
    :sswitch_7f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v92

    .line 1870
    .local v92, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1871
    if-eqz v92, :cond_4d

    .line 1872
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1873
    const/4 v6, 0x1

    move-object/from16 v0, v92

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1878
    :goto_4d
    const/4 v6, 0x1

    return v6

    .line 1876
    :cond_4d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    .line 1882
    .end local v92    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_80
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v103

    .line 1884
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    if-eqz v103, :cond_4e

    const/4 v6, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    const/4 v6, 0x1

    return v6

    .line 1885
    :cond_4e
    const/4 v6, 0x0

    goto :goto_4e

    .line 1890
    .end local v103    # "_result":Z
    :sswitch_81
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v103

    .line 1892
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1893
    if-eqz v103, :cond_4f

    const/4 v6, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    const/4 v6, 0x1

    return v6

    .line 1893
    :cond_4f
    const/4 v6, 0x0

    goto :goto_4f

    .line 1898
    .end local v103    # "_result":Z
    :sswitch_82
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    move-result v103

    .line 1900
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    if-eqz v103, :cond_50

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    const/4 v6, 0x1

    return v6

    .line 1901
    :cond_50
    const/4 v6, 0x0

    goto :goto_50

    .line 1906
    .end local v103    # "_result":Z
    :sswitch_83
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1909
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->checkAPKSignatures(Ljava/lang/String;)I

    move-result v77

    .line 1910
    .restart local v77    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    move-object/from16 v0, p3

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1912
    const/4 v6, 0x1

    return v6

    .line 1916
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v77    # "_result":I
    :sswitch_84
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1920
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/16 v69, 0x1

    .line 1921
    .restart local v69    # "_arg1":Z
    :goto_51
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 1922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1923
    const/4 v6, 0x1

    return v6

    .line 1920
    .end local v69    # "_arg1":Z
    :cond_51
    const/16 v69, 0x0

    .restart local v69    # "_arg1":Z
    goto :goto_51

    .line 1927
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v69    # "_arg1":Z
    :sswitch_85
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1930
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v103

    .line 1931
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    if-eqz v103, :cond_52

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1933
    const/4 v6, 0x1

    return v6

    .line 1932
    :cond_52
    const/4 v6, 0x0

    goto :goto_52

    .line 1937
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_86
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1938
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v103

    .line 1939
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1940
    if-eqz v103, :cond_53

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    const/4 v6, 0x1

    return v6

    .line 1940
    :cond_53
    const/4 v6, 0x0

    goto :goto_53

    .line 1945
    .end local v103    # "_result":Z
    :sswitch_87
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1949
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/16 v69, 0x1

    .line 1951
    .restart local v69    # "_arg1":Z
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1952
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v103

    .line 1953
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1954
    if-eqz v103, :cond_55

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1955
    const/4 v6, 0x1

    return v6

    .line 1949
    .end local v9    # "_arg2":I
    .end local v69    # "_arg1":Z
    .end local v103    # "_result":Z
    :cond_54
    const/16 v69, 0x0

    .restart local v69    # "_arg1":Z
    goto :goto_54

    .line 1954
    .restart local v9    # "_arg2":I
    .restart local v103    # "_result":Z
    :cond_55
    const/4 v6, 0x0

    goto :goto_55

    .line 1959
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v69    # "_arg1":Z
    .end local v103    # "_result":Z
    :sswitch_88
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1963
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1964
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v103

    .line 1965
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1966
    if-eqz v103, :cond_56

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    const/4 v6, 0x1

    return v6

    .line 1966
    :cond_56
    const/4 v6, 0x0

    goto :goto_56

    .line 1971
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v103    # "_result":Z
    :sswitch_89
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v81

    .line 1973
    .local v81, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1974
    if-eqz v81, :cond_57

    invoke-interface/range {v81 .. v81}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1975
    const/4 v6, 0x1

    return v6

    .line 1974
    :cond_57
    const/4 v6, 0x0

    goto :goto_57

    .line 1979
    .end local v81    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_8a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1983
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v69, 0x1

    .line 1985
    .restart local v69    # "_arg1":Z
    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1986
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v7, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v103

    .line 1987
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1988
    if-eqz v103, :cond_59

    const/4 v6, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1989
    const/4 v6, 0x1

    return v6

    .line 1983
    .end local v9    # "_arg2":I
    .end local v69    # "_arg1":Z
    .end local v103    # "_result":Z
    :cond_58
    const/16 v69, 0x0

    .restart local v69    # "_arg1":Z
    goto :goto_58

    .line 1988
    .restart local v9    # "_arg2":I
    .restart local v103    # "_result":Z
    :cond_59
    const/4 v6, 0x0

    goto :goto_59

    .line 1993
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v69    # "_arg1":Z
    .end local v103    # "_result":Z
    :sswitch_8b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1997
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 1998
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v103

    .line 1999
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2000
    if-eqz v103, :cond_5a

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    const/4 v6, 0x1

    return v6

    .line 2000
    :cond_5a
    const/4 v6, 0x0

    goto :goto_5a

    .line 2005
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v36    # "_arg1":I
    .end local v103    # "_result":Z
    :sswitch_8c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2009
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2010
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v83

    .line 2011
    .local v83, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2012
    if-eqz v83, :cond_5b

    .line 2013
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2014
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2019
    :goto_5b
    const/4 v6, 0x1

    return v6

    .line 2017
    :cond_5b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5b

    .line 2023
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v83    # "_result":Landroid/content/pm/KeySet;
    :sswitch_8d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2026
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v83

    .line 2027
    .restart local v83    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2028
    if-eqz v83, :cond_5c

    .line 2029
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2030
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2035
    :goto_5c
    const/4 v6, 0x1

    return v6

    .line 2033
    :cond_5c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5c

    .line 2039
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v83    # "_result":Landroid/content/pm/KeySet;
    :sswitch_8e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2043
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    .line 2044
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/content/pm/KeySet;

    .line 2049
    :goto_5d
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v103

    .line 2050
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2051
    if-eqz v103, :cond_5e

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2052
    const/4 v6, 0x1

    return v6

    .line 2047
    .end local v103    # "_result":Z
    :cond_5d
    const/16 v66, 0x0

    .local v66, "_arg1":Landroid/content/pm/KeySet;
    goto :goto_5d

    .line 2051
    .end local v66    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v103    # "_result":Z
    :cond_5e
    const/4 v6, 0x0

    goto :goto_5e

    .line 2056
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_8f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2060
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    .line 2061
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/content/pm/KeySet;

    .line 2066
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v103

    .line 2067
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2068
    if-eqz v103, :cond_60

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    const/4 v6, 0x1

    return v6

    .line 2064
    .end local v103    # "_result":Z
    :cond_5f
    const/16 v66, 0x0

    .restart local v66    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_5f

    .line 2068
    .end local v66    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v103    # "_result":Z
    :cond_60
    const/4 v6, 0x0

    goto :goto_60

    .line 2073
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_90
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v48

    .line 2076
    .local v48, "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2077
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2078
    const/4 v6, 0x1

    return v6

    .line 2082
    .end local v48    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_91
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v48

    .line 2085
    .restart local v48    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2087
    const/4 v6, 0x1

    return v6

    .line 2091
    .end local v48    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_92
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v58

    .line 2095
    .restart local v58    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 2096
    .restart local v36    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 2097
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    const/4 v6, 0x1

    return v6

    .line 2102
    .end local v36    # "_arg1":I
    .end local v58    # "_arg0":[Ljava/lang/String;
    :sswitch_93
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2106
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2108
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2109
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v103

    .line 2110
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2111
    if-eqz v103, :cond_61

    const/4 v6, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    const/4 v6, 0x1

    return v6

    .line 2111
    :cond_61
    const/4 v6, 0x0

    goto :goto_61

    .line 2116
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v103    # "_result":Z
    :sswitch_94
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v93

    .line 2118
    .restart local v93    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2119
    move-object/from16 v0, p3

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2120
    const/4 v6, 0x1

    return v6

    .line 2124
    .end local v93    # "_result":Ljava/lang/String;
    :sswitch_95
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2127
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/pm/IPackageManager$Stub;->recoverySystemInstallPackage(Ljava/lang/String;)V

    .line 2128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2129
    const/4 v6, 0x1

    return v6

    .line 2133
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_96
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2137
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 2139
    .restart local v36    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2141
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    .local v44, "_arg3":J
    move-object/from16 v40, p0

    move-object/from16 v41, v7

    move/from16 v42, v36

    move/from16 v43, v9

    .line 2142
    invoke-virtual/range {v40 .. v45}, Landroid/content/pm/IPackageManager$Stub;->pmScanPackageLI(Ljava/lang/String;IIJ)V

    .line 2143
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2144
    const/4 v6, 0x1

    return v6

    .line 2148
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v36    # "_arg1":I
    .end local v44    # "_arg3":J
    :sswitch_97
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/ILaunchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILaunchObserver;

    move-result-object v47

    .line 2151
    .local v47, "_arg0":Landroid/content/pm/ILaunchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerLaunchedObserver(Landroid/content/pm/ILaunchObserver;)V

    .line 2152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2153
    const/4 v6, 0x1

    return v6

    .line 2157
    .end local v47    # "_arg0":Landroid/content/pm/ILaunchObserver;
    :sswitch_98
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2158
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->unRegisterLaunchedObserver()V

    .line 2159
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2160
    const/4 v6, 0x1

    return v6

    .line 2164
    :sswitch_99
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    .line 2167
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 2173
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2174
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->setLaunchedPackage(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    const/4 v6, 0x1

    return v6

    .line 2170
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_62
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_62

    .line 2180
    .end local v28    # "_arg0":Landroid/content/Intent;
    :sswitch_9a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->adbDialog()Z

    move-result v103

    .line 2182
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    if-eqz v103, :cond_63

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    const/4 v6, 0x1

    return v6

    .line 2183
    :cond_63
    const/4 v6, 0x0

    goto :goto_63

    .line 2188
    .end local v103    # "_result":Z
    :sswitch_9b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2192
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2194
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 2195
    .restart local v75    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v7, v8, v1}, Landroid/content/pm/IPackageManager$Stub;->authentificationFeatureMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v103

    .line 2196
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    if-eqz v103, :cond_64

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    const/4 v6, 0x1

    return v6

    .line 2197
    :cond_64
    const/4 v6, 0x0

    goto :goto_64

    .line 2202
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v75    # "_arg2":Ljava/lang/String;
    .end local v103    # "_result":Z
    :sswitch_9c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2206
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2207
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->getFeatureMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v102

    .line 2208
    .local v102, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2209
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2210
    const/4 v6, 0x1

    return v6

    .line 2214
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v102    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2218
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    const/16 v69, 0x1

    .line 2219
    .restart local v69    # "_arg1":Z
    :goto_65
    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/IPackageManager$Stub;->setPermByList(Ljava/lang/String;Z)Z

    move-result v103

    .line 2220
    .restart local v103    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2221
    if-eqz v103, :cond_66

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2222
    const/4 v6, 0x1

    return v6

    .line 2218
    .end local v69    # "_arg1":Z
    .end local v103    # "_result":Z
    :cond_65
    const/16 v69, 0x0

    .restart local v69    # "_arg1":Z
    goto :goto_65

    .line 2221
    .restart local v103    # "_result":Z
    :cond_66
    const/4 v6, 0x0

    goto :goto_66

    .line 2226
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v69    # "_arg1":Z
    .end local v103    # "_result":Z
    :sswitch_9e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    .line 2229
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 2235
    :goto_67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2237
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2239
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2240
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/content/pm/IPackageManager$Stub;->queryDefaultPreferredActivity(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v90

    .line 2241
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2242
    if-eqz v90, :cond_68

    .line 2243
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2244
    const/4 v6, 0x1

    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2249
    :goto_68
    const/4 v6, 0x1

    return v6

    .line 2232
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_67
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/Intent;
    goto :goto_67

    .line 2247
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v8    # "_arg1":Ljava/lang/String;
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_68
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_68

    .line 2253
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v90    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_9f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2254
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->onBootPhase()V

    .line 2255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    const/4 v6, 0x1

    return v6

    .line 45
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
