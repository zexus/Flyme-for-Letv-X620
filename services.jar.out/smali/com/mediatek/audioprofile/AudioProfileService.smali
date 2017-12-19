.class public Lcom/mediatek/audioprofile/AudioProfileService;
.super Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileService$Record;,
        Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;,
        Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;,
        Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;,
        Lcom/mediatek/audioprofile/AudioProfileService$1;,
        Lcom/mediatek/audioprofile/AudioProfileService$2;,
        Lcom/mediatek/audioprofile/AudioProfileService$3;,
        Lcom/mediatek/audioprofile/AudioProfileService$4;,
        Lcom/mediatek/audioprofile/AudioProfileService$5;,
        Lcom/mediatek/audioprofile/AudioProfileService$6;,
        Lcom/mediatek/audioprofile/AudioProfileService$7;,
        Lcom/mediatek/audioprofile/AudioProfileService$8;
    }
.end annotation


# static fields
.field private static synthetic -com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I = null

.field private static final BESSURROUND_MOIVE:Ljava/lang/String; = "BesSurround_Mode=0"

.field private static final BESSURROUND_MUSIC:Ljava/lang/String; = "BesSurround_Mode=1"

.field private static final BESSURROUND_OFF:Ljava/lang/String; = "BesSurround_OnOff=0"

.field private static final BESSURROUND_ON:Ljava/lang/String; = "BesSurround_OnOff=1"

.field private static final BUNDLE_DEFAULT_SIZE:I = 0x4

.field private static final DEFAULT_NOTIFICATION_INDEX:I

.field private static final DEFAULT_RINGER_INDEX:I

.field private static final DEFAULT_RINGTONE_TYPE_CONUT:I = 0x4

.field private static final DEFAULT_SIPCALL_INDEX:I

.field private static final DEFAULT_VIDEOCALL_INDEX:I

.field private static final DELAY_TIME_AVOID_CTS_FAIL:J = 0x4e20L

.field private static final IS_SUPPORT_OUTDOOR_EDITABLE:Z = false

.field private static final MSG_DELAY_SET_VIBRATE_AVOID_CTS_FAIL:I = 0x15

.field private static final MSG_PERSIST_ALARM_VOLUME_TO_DATABASE:I = 0xa

.field private static final MSG_PERSIST_DTMF_TONE_TO_DATABASE:I = 0xf

.field private static final MSG_PERSIST_DTMF_TONE_TO_SYSTEM:I = 0x4

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_DATABASE:I = 0x12

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_SYSTEM:I = 0x7

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_DATABASE:I = 0x11

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_SYSTEM:I = 0x6

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_DATABASE:I = 0xc

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_SYSTEM:I = 0x2

.field private static final MSG_PERSIST_NOTIFICATION_VOLUME_TO_DATABASE:I = 0x9

.field private static final MSG_PERSIST_PROFILE_NAME_TO_DATABASE:I = 0x13

.field private static final MSG_PERSIST_RINGER_VOLUME_TO_DATABASE:I = 0x8

.field private static final MSG_PERSIST_SIPCALL_RINGTONE_TO_DATABASE:I = 0x17

.field private static final MSG_PERSIST_SIPCALL_RINGTONE_TO_SYSTEM:I = 0x16

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_DATABASE:I = 0x10

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_SYSTEM:I = 0x5

.field private static final MSG_PERSIST_VALUES_TO_SYSTEM_BY_BATCH:I = 0x14

.field private static final MSG_PERSIST_VIBRATION_TO_DATABASE:I = 0xe

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_DATABASE:I = 0xd

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_SYSTEM:I = 0x3

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE:I = 0xb

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM:I = 0x1

.field public static final MTK_BESSURROUND_SUPPORT:Z

.field private static final PROFILE_UPGRADED_KEY:Ljava/lang/String; = "mtk_audioprofile_upgraded"

.field private static final PROFILE_UPGRADED_VALUE:I = 0x1

.field public static final SILENT_NOTIFICATION_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "AudioProfileService"


# instance fields
.field private mActiveProfileKey:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioProfileHandler:Landroid/os/Handler;

.field private mBesSurroundMode:I

.field private final mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCustomProfileName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultRingtone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDelaySetVibrate:Z

.field private final mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

.field private mIsBesSurroundEnable:Z

.field private mIsLastCustomActiveProfileDeleted:Z

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActiveProfileKey:Ljava/lang/String;

.field private mLastVibrateType:I

.field private final mLock:Ljava/lang/Object;

.field private final mNotificationObserver:Landroid/database/ContentObserver;

.field private final mPredefinedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

.field private final mProfileStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfileService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mResetFlag:Z

.field private mRingerMode:I

.field private final mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mRingtoneObserver:Landroid/database/ContentObserver;

.field private mShouldGetDefaultRingtoneAfterScanFinish:Z

.field private mShouldOverrideSystem:Z

.field private final mShouldSyncToSystem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSimId:J

.field private mSingleSIM:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private final mUpgradeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private final mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    return v0
.end method

.method static synthetic -get10(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    return-object v0
.end method

.method static synthetic -get11(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get12(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    return v0
.end method

.method static synthetic -get14(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get16(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    return-object v0
.end method

.method static synthetic -get17(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get18(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    return v0
.end method

.method static synthetic -get19(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    return v0
.end method

.method static synthetic -get20(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return v0
.end method

.method static synthetic -get21(Lcom/mediatek/audioprofile/AudioProfileService;)J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    return-wide v0
.end method

.method static synthetic -get22(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    return v0
.end method

.method static synthetic -get23(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get24(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mTeleManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get25(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    return-object v0
.end method

.method private static synthetic -getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/audioprofile/AudioProfileService;Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    return-object p1
.end method

.method static synthetic -set4(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return p1
.end method

.method static synthetic -set5(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return p1
.end method

.method static synthetic -set6(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->needUpgradeProfileSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->upgradeProfileSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/audioprofile/AudioProfileService;Z)V
    .locals 0
    .param p1, "overrideSystem"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->reInit()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 0
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;
    .param p4, "simId"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    .line 130
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 129
    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    .line 131
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    .line 132
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    .line 142
    const-string/jumbo v0, "com.mediatek.uri.silent_notificaton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 230
    const-string/jumbo v0, "ro.mtk_bessurround_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    sput-boolean v0, Lcom/mediatek/audioprofile/AudioProfileService;->MTK_BESSURROUND_SUPPORT:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;-><init>()V

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    .line 163
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 168
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 170
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    .line 171
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 174
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 179
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 183
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 187
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    .line 194
    new-instance v2, Ljava/util/HashMap;

    .line 195
    const/16 v3, 0xa

    .line 194
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 201
    new-instance v2, Ljava/util/HashMap;

    .line 202
    const/4 v3, 0x6

    .line 201
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 200
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 209
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 211
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 220
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 221
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    .line 235
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 302
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 368
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 385
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService$4;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 461
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService$5;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 536
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$6;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 634
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$7;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 4239
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$8;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 813
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "Initial AudioProfileService start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 815
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getInstance(I)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 818
    const-string/jumbo v2, "storage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 820
    const-string/jumbo v2, "audioprofile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 821
    .local v17, "audioProfileManager":Lcom/mediatek/audioprofile/AudioProfileManager;
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 824
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    .line 827
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readPredefinedProfileKeys()V

    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readAllProfileKeys()V

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v3, "mtk_audioprofile_active"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 834
    .local v16, "activeProfileKey":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 834
    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v3, "mtk_audioprofile_last_active"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 839
    .local v19, "lastActiveProfileKey":Ljava/lang/String;
    if-nez v19, :cond_1

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 838
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 843
    const-string/jumbo v3, "mtk_audioprofile_custom_deleted"

    const-string/jumbo v4, "false"

    .line 842
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 841
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "profileKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 849
    .local v20, "profileKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_2

    .end local v19    # "lastActiveProfileKey":Ljava/lang/String;
    .end local v20    # "profileKey":Ljava/lang/String;
    .end local v21    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v2, v16

    .line 835
    goto :goto_0

    .restart local v19    # "lastActiveProfileKey":Ljava/lang/String;
    :cond_1
    move-object/from16 v2, v19

    .line 840
    goto :goto_1

    .line 853
    .restart local v21    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 855
    const/4 v4, 0x2

    .line 854
    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 857
    const/4 v4, 0x4

    .line 856
    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 860
    const/16 v4, 0x8

    .line 859
    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 864
    const-string/jumbo v3, "ringtone"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 865
    const/4 v6, 0x0

    .line 863
    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 868
    const-string/jumbo v3, "notification_sound"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 868
    const/4 v6, 0x0

    .line 867
    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 872
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 881
    .local v18, "defRingUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 882
    .local v5, "scanerFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    const-string/jumbo v2, "file"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 885
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 887
    const/4 v6, 0x0

    .line 888
    const/4 v7, 0x0

    .line 884
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 891
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 892
    .local v9, "bootFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 894
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 896
    const/4 v10, 0x0

    .line 897
    const/4 v11, 0x0

    .line 893
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 900
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 901
    .local v13, "userSwitchFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 903
    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 905
    const/4 v14, 0x0

    .line 906
    const/4 v15, 0x0

    .line 902
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 908
    if-nez v18, :cond_6

    .line 909
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 923
    :cond_3
    :goto_3
    const-class v2, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 922
    invoke-static {v2, v3}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 924
    .local v22, "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    if-eqz v22, :cond_9

    .line 925
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 931
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldCheckDefaultProfiles()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 938
    :cond_4
    sget-boolean v2, Lcom/mediatek/audioprofile/AudioProfileService;->MTK_BESSURROUND_SUPPORT:Z

    if-eqz v2, :cond_5

    .line 940
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->initBesSurroundStatus()V

    .line 943
    :cond_5
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "Initial AudioProfileService end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 910
    .end local v22    # "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 911
    const/4 v3, 0x1

    .line 910
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_7

    .line 913
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 914
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 915
    const/16 v3, 0x8

    .line 914
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_8

    .line 916
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 917
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 918
    const/16 v3, 0x10

    .line 917
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    .line 919
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 927
    .restart local v22    # "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    :cond_9
    new-instance v2, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;

    invoke-direct {v2}, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    goto :goto_4
.end method

.method private checkDefaultProfiles()V
    .locals 7

    .prologue
    .line 3410
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "checkDefaultProfiles>>>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3413
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3416
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v4}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3418
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3419
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 3420
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3419
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 3421
    .local v0, "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 3422
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3421
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 3424
    .local v1, "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3425
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3426
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3427
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3431
    .end local v0    # "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v1    # "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "profileKey$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3432
    .local v2, "profileKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 3433
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/AudioProfileState;

    iget v5, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3432
    iput v5, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    goto :goto_0

    .line 3435
    .end local v2    # "profileKey":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "checkDefaultProfiles<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    return-void
.end method

.method private createOverrideSystemThread()V
    .locals 4

    .prologue
    .line 3646
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 3647
    .local v1, "overrideSystemThread":Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->start()V

    .line 3649
    monitor-enter p0

    .line 3650
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3653
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3654
    :catch_0
    move-exception v0

    .line 3655
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "Interrupted while waiting on AudioProfileHandler."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3649
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    .line 3645
    return-void
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simid"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2274
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2277
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 2278
    .local v1, "state":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move-object v0, p0

    move v2, p2

    move-object v3, p5

    move-wide v4, p3

    .line 2279
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2283
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 2272
    :cond_0
    return-void

    .line 2278
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2269
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2268
    return-void
.end method

.method private genCustomKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1477
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 1478
    .local v2, "rand":Ljava/util/Random;
    const/4 v1, 0x0

    .line 1480
    :cond_0
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v0, v3, 0x6

    .line 1481
    .local v0, "customNo":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mtk_audioprofile_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1483
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1482
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1484
    const-string/jumbo v4, "_"

    .line 1482
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1484
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1482
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1485
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1486
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "genCustomKey: newKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    return-object v1
.end method

.method private getAllOldKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "profile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4197
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4198
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_notifications_use_ring_volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_lockscreen_sounds_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_haptic_feedback_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_dtmf_tone_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_sound_effects_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4204
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4206
    const/4 v3, 0x4

    .line 4205
    invoke-static {p1, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4208
    const/4 v3, 0x5

    .line 4207
    invoke-static {p1, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4209
    invoke-static {p1, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4212
    invoke-static {p1, v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4215
    invoke-static {p1, v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4214
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4218
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 4219
    .local v1, "simCount":I
    const/4 v2, 0x1

    .local v2, "simId":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 4221
    int-to-long v4, v2

    .line 4220
    invoke-static {p1, v6, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4224
    int-to-long v4, v2

    .line 4223
    invoke-static {p1, v6, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v3

    .line 4222
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4226
    :cond_0
    invoke-static {p1, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4229
    invoke-static {p1, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4228
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4231
    invoke-static {p1, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4234
    invoke-static {p1, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4233
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4236
    return-object v0
.end method

.method private getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3765
    if-nez p1, :cond_0

    .line 3766
    return-object v3

    .line 3769
    :cond_0
    const/4 v7, 0x0

    .line 3770
    .local v7, "data":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3771
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3772
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 3770
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3777
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3778
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 3781
    .end local v7    # "data":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 3782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3783
    const/4 v6, 0x0

    .line 3786
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExternalUriData for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    return-object v7

    .line 3780
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "data":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 3781
    if-eqz v6, :cond_3

    .line 3782
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3783
    const/4 v6, 0x0

    .line 3780
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    throw v0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3498
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 3499
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3500
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    .line 3502
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return p3
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 3478
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 3479
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3480
    .local v0, "uriString":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p3    # "defaultUri":Landroid/net/Uri;
    :goto_0
    return-object p3

    .restart local p3    # "defaultUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    .line 3482
    .end local v0    # "uriString":Ljava/lang/String;
    :cond_1
    return-object p3
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 3518
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 3519
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3520
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p3    # "defaultValue":Z
    :goto_0
    return p3

    .restart local p3    # "defaultValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0

    .line 3522
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return p3
.end method

.method private getStreamValidVolume(II)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 1873
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamMaxVolume(I)I

    move-result v0

    .line 1874
    .local v0, "max":I
    move v1, p2

    .line 1875
    .local v1, "validVolume":I
    if-gez p2, :cond_1

    .line 1876
    const/4 v1, 0x0

    .line 1880
    :cond_0
    :goto_0
    return v1

    .line 1877
    :cond_1
    if-le p2, v0, :cond_0

    .line 1878
    move v1, v0

    goto :goto_0
.end method

.method private initBesSurroundStatus()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3791
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 3792
    const-string/jumbo v5, "mtk_audioprofile_bessuround"

    const-string/jumbo v6, "-1"

    .line 3791
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3793
    .local v3, "bessuroundState":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3794
    .local v0, "BesSurroundCode":I
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 3795
    const-string/jumbo v5, "mtk_audioprofile_bessuround_mode"

    const-string/jumbo v6, "-1"

    .line 3794
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3796
    .local v2, "bessuroundMode":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3797
    .local v1, "BesSurroundMode":I
    if-ne v0, v9, :cond_0

    .line 3798
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v5, "mtk_audioprofile_bessuround"

    .line 3799
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 3798
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3802
    :cond_0
    if-nez v0, :cond_1

    .line 3803
    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundState(Z)I

    .line 3806
    :cond_1
    if-ne v0, v8, :cond_2

    .line 3807
    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundState(Z)I

    .line 3810
    :cond_2
    if-ne v1, v9, :cond_3

    .line 3811
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v5, "mtk_audioprofile_bessuround_mode"

    .line 3812
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 3811
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3815
    :cond_3
    if-nez v1, :cond_4

    .line 3816
    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundMode(I)I

    .line 3819
    :cond_4
    if-ne v1, v8, :cond_5

    .line 3820
    iput v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 3821
    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundMode(I)I

    .line 3790
    :cond_5
    return-void
.end method

.method private isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2328
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isRingtoneUriChanged(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z
    .locals 1
    .param p1, "profileState"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2205
    sparse-switch p2, :sswitch_data_0

    .line 2218
    const/4 v0, 0x1

    return v0

    .line 2207
    :sswitch_0
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2210
    :sswitch_1
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2213
    :sswitch_2
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2216
    :sswitch_3
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2205
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private isValidRingtoneType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 2197
    if-eq v0, p1, :cond_0

    .line 2198
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 2197
    :cond_0
    :goto_0
    return v0

    .line 2199
    :cond_1
    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    .line 2200
    const/16 v1, 0x10

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needUpgradeProfileSettings()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4101
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 4102
    const-string/jumbo v2, "mtk_audioprofile_upgraded"

    .line 4104
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 4101
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4105
    .local v0, "upgraded":I
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needUpgradeProfileSettings() upgraded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4106
    if-ne v0, v5, :cond_0

    .line 4107
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "needUpgradeProfileSettings() already upgraded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    return v4

    .line 4110
    :cond_0
    return v5
.end method

.method private notifyAudioProfileChanged()V
    .locals 7

    .prologue
    .line 1272
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1273
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "notifyAudioProfileChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-void

    .line 1277
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1278
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1279
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "notifyAudioProfileChanged falled, because there are no listener!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1280
    return-void

    .line 1283
    :cond_1
    :try_start_1
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyAudioProfileChanged: New profile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1284
    const-string/jumbo v6, ", clients = "

    .line 1283
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1284
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1283
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1286
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 1288
    .local v2, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1290
    :try_start_2
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onProfileChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1293
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1295
    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1295
    const-string/jumbo v6, ", clients = "

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1296
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1296
    const-string/jumbo v6, ", exception = "

    .line 1293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1277
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    monitor-exit v4

    .line 1271
    return-void
.end method

.method private persistDtmfToneToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2757
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2758
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2759
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistDtmfToneToDatabase() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2762
    const/16 v4, 0xf

    .line 2761
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2763
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2764
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2756
    return-void
.end method

.method private persistDtmfToneToSystem()V
    .locals 6

    .prologue
    .line 2991
    const-string/jumbo v2, "dtmf_tone"

    .line 2992
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 2993
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2994
    const/4 v4, 0x4

    const/4 v5, -0x1

    .line 2993
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2995
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2990
    return-void

    .line 2992
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0
.end method

.method private persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2817
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2818
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2819
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistDtmfToneToDatabase() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2822
    const/16 v4, 0x12

    .line 2821
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2823
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2824
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2816
    return-void
.end method

.method private persistHapticFeedbackToSystem()V
    .locals 6

    .prologue
    .line 3024
    const-string/jumbo v2, "haptic_feedback_enabled"

    .line 3025
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3026
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3027
    const/4 v4, 0x7

    const/4 v5, -0x1

    .line 3026
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3028
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3023
    return-void

    .line 3025
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0
.end method

.method private persistLockScreenToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2797
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2798
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2799
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistDtmfToneToDatabase() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2802
    const/16 v4, 0x11

    .line 2801
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2803
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2804
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2796
    return-void
.end method

.method private persistLockScreenToSystem()V
    .locals 6

    .prologue
    .line 3013
    const-string/jumbo v2, "lockscreen_sounds_enabled"

    .line 3014
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3015
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3016
    const/4 v4, 0x6

    const/4 v5, -0x1

    .line 3015
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3017
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3012
    return-void

    .line 3014
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0
.end method

.method private persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 2836
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2837
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2838
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2840
    const/16 v4, 0x13

    .line 2839
    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2841
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2842
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2835
    return-void
.end method

.method private persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 2649
    const/4 v2, 0x0

    .line 2650
    .local v2, "name":Ljava/lang/String;
    iget v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_0

    .line 2651
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2656
    .local v2, "name":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2657
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p5, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    sparse-switch p2, :sswitch_data_0

    .line 2680
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "persistRingtoneUriToDatabase with undefined stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    return-void

    .line 2653
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v2, "name":Ljava/lang/String;
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    goto :goto_0

    .line 2657
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2660
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2661
    const/16 v4, 0xb

    .line 2660
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2683
    .local v1, "msg":Landroid/os/Message;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2684
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2646
    return-void

    .line 2665
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2666
    const/16 v4, 0xc

    .line 2665
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 2670
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2671
    const/16 v4, 0xd

    .line 2670
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 2675
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2676
    const/16 v4, 0x17

    .line 2675
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 2658
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private persistRingtoneUriToSystem(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 2861
    new-instance v0, Landroid/os/Bundle;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 2862
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 2863
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2865
    .local v3, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2899
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "persistRingtoneUriToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    return-void

    .line 2867
    :sswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2868
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2869
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2870
    const/4 v6, 0x1

    .line 2869
    invoke-virtual {v5, v6, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2902
    .end local v3    # "uri":Landroid/net/Uri;
    .local v1, "msg":Landroid/os/Message;
    :goto_0
    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2904
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2859
    return-void

    .line 2874
    .end local v1    # "msg":Landroid/os/Message;
    .local v2, "name":Ljava/lang/String;
    .local v3, "uri":Landroid/net/Uri;
    :sswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2875
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2877
    .local v3, "uri":Landroid/net/Uri;
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2878
    const/4 v3, 0x0

    .line 2880
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2881
    const/4 v6, 0x2

    .line 2880
    invoke-virtual {v5, v6, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2885
    .end local v1    # "msg":Landroid/os/Message;
    .local v2, "name":Ljava/lang/String;
    .local v3, "uri":Landroid/net/Uri;
    :sswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2886
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 2887
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2888
    const/4 v6, 0x3

    .line 2887
    invoke-virtual {v5, v6, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2892
    .end local v1    # "msg":Landroid/os/Message;
    .local v2, "name":Ljava/lang/String;
    .local v3, "uri":Landroid/net/Uri;
    :sswitch_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2893
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 2894
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2895
    const/16 v6, 0x16

    .line 2894
    invoke-virtual {v5, v6, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2902
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2865
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private persistSoundEffectToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2777
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2778
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2779
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistDtmfToneToDatabase() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2782
    const/16 v4, 0x10

    .line 2781
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2783
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2784
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2776
    return-void
.end method

.method private persistSoundEffectToSystem()V
    .locals 6

    .prologue
    .line 3002
    const-string/jumbo v2, "sound_effects_enabled"

    .line 3003
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3004
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3005
    const/4 v4, 0x5

    const/4 v5, -0x1

    .line 3004
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3006
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3001
    return-void

    .line 3003
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0
.end method

.method private persistStreamVolumeToDatabase(Ljava/lang/String;II)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, -0x1

    .line 2702
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2703
    .local v1, "name":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2720
    :pswitch_0
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "persistStreamVolumeToDatabase with undefined stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    return-void

    .line 2705
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2706
    const/16 v3, 0x8

    .line 2705
    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2723
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2700
    return-void

    .line 2710
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2711
    const/16 v3, 0x9

    .line 2710
    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2715
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2716
    const/16 v3, 0xa

    .line 2715
    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2703
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistStreamVolumeToSystem(I)V
    .locals 7
    .param p1, "streamType"    # I

    .prologue
    .line 2917
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v4, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->persistStreamVolumeToSystem(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2918
    return-void

    .line 2921
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2924
    .local v2, "ident":J
    const/4 v0, 0x0

    .line 2925
    .local v0, "flags":I
    const/4 v1, 0x0

    .line 2926
    .local v1, "volume":I
    packed-switch p1, :pswitch_data_0

    .line 2940
    :pswitch_0
    :try_start_0
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "persistStreamVolumeToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2946
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2941
    return-void

    .line 2928
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2929
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2943
    :goto_0
    const-string/jumbo v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persistStreamVolumeToSystem: streamType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", volume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2946
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2916
    return-void

    .line 2932
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2933
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2945
    :catchall_0
    move-exception v4

    .line 2946
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2945
    throw v4

    .line 2936
    :pswitch_3
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2937
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2926
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistValues(Z)V
    .locals 5
    .param p1, "overrideSystem"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1573
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1574
    .local v0, "activeProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1575
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistValues error with no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1576
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 1575
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 1585
    if-eqz p1, :cond_0

    .line 1586
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1587
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1588
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1589
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1590
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1591
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1592
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1595
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 1596
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 1597
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 1598
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 1572
    return-void

    .line 1578
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistValues: override = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1579
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1578
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistValuesToSystemByBatch(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3038
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3039
    const/16 v2, 0x14

    .line 3038
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3040
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3037
    return-void
.end method

.method private persistVibrationToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2736
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2737
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2738
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    const-string/jumbo v3, "Vibration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2741
    const/16 v4, 0xe

    .line 2740
    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2742
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2743
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2735
    return-void
.end method

.method private persistVibrationToSystem()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2955
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 2956
    .local v1, "vibratinRinger":I
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 2958
    .local v0, "vibratinNotification":I
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistVibrationToSystem current vibrate status: ringer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2959
    const-string/jumbo v5, ", notification = "

    .line 2958
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    if-eq v1, v0, :cond_0

    .line 2962
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "persistVibrationToSystem different vibrate settings, so CTS test running, delay 10 sec to set vibration!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2965
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2966
    const-wide/16 v4, 0x4e20

    .line 2965
    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2967
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 2968
    return-void

    .line 2970
    :cond_0
    iget-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    if-eqz v3, :cond_1

    .line 2971
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "persistVibrationToSystem: CTS test running, delay 20 sec to set vibration!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    return-void

    .line 2978
    :cond_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v3, :cond_2

    .line 2979
    const/4 v2, 0x1

    .line 2981
    .local v2, "vibrationStatus":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 2982
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 2983
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistVibrationToSystem set ringer and notification vibrate to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    return-void

    .line 2979
    .end local v2    # "vibrationStatus":I
    :cond_2
    const/4 v2, 0x2

    .restart local v2    # "vibrationStatus":I
    goto :goto_0
.end method

.method private reInit()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 948
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    .line 950
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readPredefinedProfileKeys()V

    .line 951
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readAllProfileKeys()V

    .line 954
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 956
    .local v4, "oldActiveProfileKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v9, "mtk_audioprofile_active"

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "activeProfileKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 958
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 957
    :goto_0
    iput-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 960
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v9, "mtk_audioprofile_last_active"

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, "lastActiveProfileKey":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 963
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 961
    :goto_1
    iput-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 965
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 966
    const-string/jumbo v9, "mtk_audioprofile_custom_deleted"

    const-string/jumbo v10, "false"

    .line 965
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 964
    iput-boolean v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 967
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 969
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "profileKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 970
    .local v6, "profileKey":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_2

    .end local v3    # "lastActiveProfileKey":Ljava/lang/String;
    .end local v6    # "profileKey":Ljava/lang/String;
    .end local v7    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_0
    move-object v8, v0

    .line 958
    goto :goto_0

    .restart local v3    # "lastActiveProfileKey":Ljava/lang/String;
    :cond_1
    move-object v8, v3

    .line 963
    goto :goto_1

    .line 973
    .restart local v7    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 974
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 975
    .local v1, "defRingUri":Landroid/net/Uri;
    if-nez v1, :cond_9

    .line 976
    iput-boolean v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 989
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-interface {v8, p0, v9}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V

    .line 991
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v8}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldCheckDefaultProfiles()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 993
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 996
    :cond_4
    sget-boolean v8, Lcom/mediatek/audioprofile/AudioProfileService;->MTK_BESSURROUND_SUPPORT:Z

    if-eqz v8, :cond_5

    .line 998
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->initBesSurroundStatus()V

    .line 1001
    :cond_5
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1002
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 1003
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1002
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1001
    if-eqz v8, :cond_7

    .line 1004
    :cond_6
    const-string/jumbo v8, "AudioProfileService"

    const-string/jumbo v9, "Sync general to outdoor."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 1006
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1005
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1007
    .local v2, "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 1008
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1007
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1010
    .local v5, "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v8, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    iput-object v8, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1011
    iget-object v8, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    iput-object v8, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1012
    iget-object v8, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    iput-object v8, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1013
    iget-object v8, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    iput-object v8, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1017
    .end local v2    # "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v5    # "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_7
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1018
    invoke-direct {p0, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1019
    iput v12, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1027
    :goto_4
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1030
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-eq v4, v8, :cond_8

    .line 1031
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 946
    :cond_8
    return-void

    .line 977
    :cond_9
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_a

    .line 980
    invoke-direct {p0, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto/16 :goto_3

    .line 981
    :cond_a
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v8, v13}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_b

    .line 983
    invoke-direct {p0, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto/16 :goto_3

    .line 984
    :cond_b
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v8, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_3

    .line 986
    invoke-direct {p0, v14}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto/16 :goto_3

    .line 1020
    :cond_c
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1021
    invoke-direct {p0, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1022
    iput v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    goto :goto_4

    .line 1024
    :cond_d
    invoke-direct {p0, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1025
    const/4 v8, 0x2

    iput v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    goto :goto_4
.end method

.method private readAllProfileKeys()V
    .locals 20

    .prologue
    .line 3114
    const-string/jumbo v16, "AudioProfileService"

    const-string/jumbo v17, "readProfileKeys: started"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3117
    const/4 v11, 0x6

    .line 3119
    .local v11, "maxCustom":I
    sget-object v16, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v16 .. v16}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3120
    .local v2, "customPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getAllKeys()Ljava/util/List;

    move-result-object v3

    .line 3121
    .local v3, "customeKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 3122
    .local v4, "customizeProfiles":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3123
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v16, "_key"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 3124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3125
    .local v12, "profile":Ljava/lang/String;
    const-string/jumbo v16, "AudioProfileService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readProfileKeys() profile key = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", profile = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_0

    .line 3129
    invoke-static {v12}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCreateDateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3130
    .local v13, "strDateKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v16, v0

    .line 3131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    .line 3130
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3132
    .local v14, "strDateVal":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3137
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "profile":Ljava/lang/String;
    .end local v13    # "strDateKey":Ljava/lang/String;
    .end local v14    # "strDateVal":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3138
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 3139
    .local v7, "key":Ljava/lang/Long;
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3141
    .end local v7    # "key":Ljava/lang/Long;
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v5, v0, :cond_5

    .line 3142
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    sub-int v16, v16, v5

    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    .line 3144
    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v16

    if-lez v16, :cond_3

    .line 3145
    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 3146
    .local v15, "tmpVal":Ljava/lang/Long;
    add-int/lit8 v17, v6, -0x1

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3147
    invoke-interface {v10, v6, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3142
    .end local v15    # "tmpVal":Ljava/lang/Long;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3141
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3151
    .end local v6    # "j":I
    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_6

    .line 3152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3151
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3154
    :cond_6
    const-string/jumbo v16, "AudioProfileService"

    const-string/jumbo v17, "readProfileKeys: finised"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    return-void
.end method

.method private readDefaultRingtones()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3300
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readDefaultRingtones: mUserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 3303
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v3, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3307
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3308
    const-string/jumbo v4, "mtk_audioprofile_default_ringtone"

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3307
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3309
    .local v2, "uriString":Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 3310
    :goto_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3313
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3314
    const-string/jumbo v4, "mtk_audioprofile_default_notification"

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3313
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3315
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 3316
    :goto_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3319
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3320
    const-string/jumbo v4, "mtk_audioprofile_default_video_call"

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3319
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3321
    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 3322
    :goto_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3325
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3326
    const-string/jumbo v4, "mtk_audioprofile_default_sip_call"

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3325
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3327
    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 3328
    :goto_4
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3330
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readDefaultRingtones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    return-void

    .line 3309
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_1

    .line 3315
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 3321
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 3327
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_4
.end method

.method private readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 2048
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileState of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null, so create new one instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;J)V

    .line 2050
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    return-object v0
.end method

.method private readPersistedSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 3292
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;J)V

    .line 3291
    return-void
.end method

.method private readPersistedSettings(Ljava/lang/String;J)V
    .locals 32
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 3180
    if-nez p1, :cond_0

    .line 3181
    const-string/jumbo v28, "AudioProfileService"

    const-string/jumbo v29, "readPersistedSettings() with Null profile key!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    return-void

    .line 3184
    :cond_0
    const-string/jumbo v28, "AudioProfileService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "readPersistedSettings()  mUserId = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3188
    .local v9, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getAllKeys()Ljava/util/List;

    move-result-object v11

    .line 3189
    .local v11, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getAllValues()Ljava/util/List;

    move-result-object v23

    .line 3190
    .local v23, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 3191
    .local v12, "keysSize":I
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v24

    .line 3192
    .local v24, "valuesSize":I
    move/from16 v0, v24

    if-ne v12, v0, :cond_2

    .line 3193
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_2

    .line 3194
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3195
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3196
    .local v22, "value":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 3197
    const-string/jumbo v28, ""

    move-object/from16 v0, v28

    if-eq v10, v0, :cond_1

    .line 3198
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 3196
    if-eqz v28, :cond_1

    .line 3199
    if-eqz v22, :cond_1

    .line 3200
    const-string/jumbo v28, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 3201
    const-string/jumbo v28, "AudioProfileService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "readPersistedSettings() key = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ", value = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    move-object/from16 v0, v22

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3207
    .end local v8    # "i":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    .line 3208
    .local v14, "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    .line 3212
    .local v5, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/16 v28, 0x1

    .line 3211
    move-object/from16 v0, p1

    move/from16 v1, v28

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v14

    .line 3215
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    move-object/from16 v28, v0

    sget v29, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 3214
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v27

    .line 3218
    .local v27, "voiceCallUri":Landroid/net/Uri;
    const/16 v28, 0x2

    .line 3217
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    move-object/from16 v28, v0

    sget v29, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 3219
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 3223
    .local v15, "notificationUri":Landroid/net/Uri;
    const/16 v28, 0x8

    .line 3222
    move-object/from16 v0, p1

    move/from16 v1, v28

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v14

    .line 3225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    move-object/from16 v28, v0

    sget v29, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 3224
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v26

    .line 3228
    .local v26, "videoCallUri":Landroid/net/Uri;
    const/16 v28, 0x10

    .line 3227
    move-object/from16 v0, p1

    move/from16 v1, v28

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v14

    .line 3230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    move-object/from16 v28, v0

    sget v29, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 3229
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v20

    .line 3233
    .local v20, "sipCallUri":Landroid/net/Uri;
    const/16 v28, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3234
    iget v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v19

    .line 3237
    .local v19, "ringerVolume":I
    const/16 v28, 0x5

    .line 3236
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3239
    iget v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    move/from16 v28, v0

    .line 3238
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v16

    .line 3242
    .local v16, "notificationVolume":I
    const/16 v28, 0x4

    .line 3241
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3243
    iget v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v4

    .line 3247
    .local v4, "alarmVolume":I
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3248
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v25

    .line 3250
    .local v25, "vibration":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3251
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v6

    .line 3253
    .local v6, "dtmfTone":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3254
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v21

    .line 3256
    .local v21, "soundEffect":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3258
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    move/from16 v28, v0

    .line 3257
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v13

    .line 3260
    .local v13, "lockScreensound":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3262
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    move/from16 v28, v0

    .line 3261
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v7

    .line 3265
    .local v7, "hapticFeedback":Z
    new-instance v28, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->simId(J)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v17

    .line 3275
    .local v17, "persistedState":Lcom/mediatek/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3277
    sget-object v28, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 3278
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3279
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 3280
    .local v18, "profileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3283
    .end local v18    # "profileName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v28, "AudioProfileService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "readPersistedSettings with "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ": "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    return-void
.end method

.method private readPredefinedProfileKeys()V
    .locals 3

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3162
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    .line 3163
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3162
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3164
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    .line 3165
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3164
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3166
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    .line 3167
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3166
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3168
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    .line 3169
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3168
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3170
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readPredefindProfileKeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3160
    return-void
.end method

.method private readShouldSyncToSystem()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 3340
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v7

    array-length v4, v7

    .line 3341
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 3342
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3344
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 3348
    .local v0, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3350
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3351
    .local v6, "systemVolume":I
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3352
    .local v3, "profileVolume":I
    if-eq v3, v6, :cond_2

    .line 3353
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3356
    :cond_2
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3357
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3358
    if-eq v3, v6, :cond_3

    .line 3359
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3362
    :cond_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3363
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3364
    if-eq v3, v6, :cond_4

    .line 3365
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3369
    :cond_4
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3371
    .local v5, "systemUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3372
    .local v2, "profileUri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3373
    :cond_5
    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    .line 3374
    :cond_6
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3377
    :cond_7
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3379
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3380
    if-eqz v2, :cond_8

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3381
    :cond_8
    if-nez v2, :cond_a

    if-eqz v5, :cond_a

    .line 3382
    :cond_9
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3385
    :cond_a
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 3386
    const/16 v8, 0x8

    .line 3385
    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3387
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3388
    if-eqz v2, :cond_b

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3389
    :cond_b
    if-nez v2, :cond_d

    if-eqz v5, :cond_d

    .line 3390
    :cond_c
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3393
    :cond_d
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 3394
    const/16 v8, 0x10

    .line 3393
    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3395
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3396
    if-eqz v2, :cond_e

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 3397
    :cond_e
    if-nez v2, :cond_10

    if-eqz v5, :cond_10

    .line 3398
    :cond_f
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3401
    .end local v2    # "profileUri":Landroid/net/Uri;
    .end local v3    # "profileVolume":I
    .end local v5    # "systemUri":Landroid/net/Uri;
    .end local v6    # "systemVolume":I
    :cond_10
    const-string/jumbo v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readShouldSyncToSystem: mShouldSyncToSystem = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3596
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3597
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3598
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 3600
    .local v1, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget-object v2, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3601
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3602
    const-string/jumbo v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removed AudioProfile change listener for: record.mBinder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3603
    iget-object v5, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3602
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3603
    const-string/jumbo v5, ", clients = "

    .line 3602
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3603
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3602
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3596
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v1    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    monitor-exit v3

    .line 3595
    return-void
.end method

.method private restoreToDefaultValues(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1609
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1610
    .local v0, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1611
    .local v2, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1612
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1613
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1614
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1615
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1617
    iget v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1618
    iget v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    iput v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1619
    iget v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    iput v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1621
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1622
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1623
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1624
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1625
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1627
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1628
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-virtual {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->remove(Ljava/util/List;)Z

    .line 1629
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreToDefaultValues: profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    return-void

    .line 1611
    .end local v1    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setActiveKey(Ljava/lang/String;)Z
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1211
    .local v2, "token":J
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v4, "mtk_audioprofile_active"

    invoke-virtual {v1, v4, p1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1213
    .local v0, "succeed":Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 1214
    const-string/jumbo v1, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setActiveKey: succeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    return v0
.end method

.method private setLastActiveKey(Ljava/lang/String;)Z
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1223
    .local v4, "token":J
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v6, "mtk_audioprofile_last_active"

    invoke-virtual {v3, v6, p1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1224
    .local v2, "succeed":Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 1225
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1227
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1228
    .local v1, "sizeOfShouldSyncToSystem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1229
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1231
    :cond_0
    const-string/jumbo v3, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setLastActiveKey: succeed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", profileKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return v2
.end method

.method private setLastCustomActiveDeleted(Z)Z
    .locals 4
    .param p1, "deleted"    # Z

    .prologue
    .line 1236
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v2, "mtk_audioprofile_custom_deleted"

    .line 1237
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 1236
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1238
    .local v0, "succeed":Z
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 1239
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCustomActiveDeleted: changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return v0
.end method

.method private setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldScenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .param p2, "oldProfileKey"    # Ljava/lang/String;

    .prologue
    .line 1176
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1177
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v0

    .line 1182
    .local v0, "lastActiveChanged":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v1, :cond_0

    .line 1183
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    goto :goto_0
.end method

.method private setRingerModeMatchProfile(ZI)V
    .locals 4
    .param p1, "shouldSetRingerMode"    # Z
    .param p2, "expectRingerMode"    # I

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 1190
    .local v0, "actualRingerMode":I
    if-eqz p1, :cond_0

    if-eq v0, p2, :cond_0

    .line 1191
    iput p2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1192
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1194
    :cond_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerModeMatchProfile: actual = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1195
    const-string/jumbo v3, ", expect = "

    .line 1194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "state"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "value"    # Landroid/net/Uri;

    .prologue
    .line 2289
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V

    .line 2288
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V
    .locals 2
    .param p1, "state"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "value"    # Landroid/net/Uri;
    .param p4, "simId"    # J

    .prologue
    .line 2294
    sparse-switch p2, :sswitch_data_0

    .line 2315
    :goto_0
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 2316
    iput-wide p4, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSimId:J

    .line 2293
    :cond_0
    return-void

    .line 2296
    :sswitch_0
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    goto :goto_0

    .line 2300
    :sswitch_1
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    goto :goto_0

    .line 2304
    :sswitch_2
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2308
    :sswitch_3
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2294
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2252
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V

    .line 2251
    return-void
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;
    .param p4, "simId"    # J

    .prologue
    .line 2260
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 2261
    .local v0, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2262
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "outdoorKey":Ljava/lang/String;
    move-object v1, p0

    move v3, p2

    move-wide v4, p4

    move-object v6, p3

    .line 2263
    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2264
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "synchronize general to outdoor! ringtone type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    .end local v2    # "outdoorKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncRingtoneToSystem()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1691
    const/4 v1, 0x0

    .line 1692
    .local v1, "systemUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1695
    .local v0, "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1696
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1698
    .local v1, "systemUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1699
    .local v0, "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1700
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1701
    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1702
    :cond_1
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1703
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1704
    const-string/jumbo v4, ", Uri = "

    .line 1703
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    .end local v0    # "profileUri":Landroid/net/Uri;
    .end local v1    # "systemUri":Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1710
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1712
    .restart local v1    # "systemUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1713
    .restart local v0    # "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1714
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1715
    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1716
    :cond_4
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1717
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1718
    const-string/jumbo v4, ", Uri = "

    .line 1717
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    .end local v0    # "profileUri":Landroid/net/Uri;
    .end local v1    # "systemUri":Landroid/net/Uri;
    :cond_5
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1724
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1726
    .restart local v1    # "systemUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1727
    .restart local v0    # "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1728
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1729
    :cond_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 1730
    :cond_7
    invoke-direct {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1731
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1732
    const-string/jumbo v4, ", Uri = "

    .line 1731
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    .end local v0    # "profileUri":Landroid/net/Uri;
    .end local v1    # "systemUri":Landroid/net/Uri;
    :cond_8
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1738
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 1739
    const/16 v3, 0x10

    .line 1738
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1740
    .restart local v1    # "systemUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1741
    .restart local v0    # "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1742
    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1743
    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    .line 1744
    :cond_a
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1745
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1746
    const/16 v4, 0x10

    .line 1745
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1746
    const-string/jumbo v4, ", Uri = "

    .line 1745
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    .end local v0    # "profileUri":Landroid/net/Uri;
    .end local v1    # "systemUri":Landroid/net/Uri;
    :cond_b
    return-void
.end method

.method private syncVolumeToSystem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 1641
    const/4 v1, 0x0

    .line 1642
    .local v1, "systemVolume":I
    const/4 v0, 0x0

    .line 1644
    .local v0, "profileVolume":I
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1645
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1646
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1647
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1648
    if-eq v0, v1, :cond_0

    .line 1649
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1650
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1651
    const-string/jumbo v4, ", streamType = "

    .line 1650
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1651
    const-string/jumbo v4, ", volume = "

    .line 1650
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1658
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1659
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1661
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1662
    if-eq v0, v1, :cond_1

    .line 1663
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1664
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1665
    const-string/jumbo v4, ", streamType = "

    .line 1664
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1666
    const-string/jumbo v4, ", volume = "

    .line 1664
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1670
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1671
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1672
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1673
    if-eq v0, v1, :cond_2

    .line 1674
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1675
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1676
    const-string/jumbo v4, ", streamType = "

    .line 1675
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1676
    const-string/jumbo v4, ", volume = "

    .line 1675
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_2
    return-void
.end method

.method private updateRintoneUri(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Landroid/net/Uri;
    .locals 22
    .param p1, "dataKey"    # Ljava/lang/String;
    .param p2, "profileKey"    # Ljava/lang/String;
    .param p3, "streamType"    # I
    .param p4, "volumePath"    # [Ljava/lang/String;

    .prologue
    .line 735
    const-string/jumbo v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRintoneUri :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with ringtoneType  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 736
    const-string/jumbo v6, "  -  "

    .line 735
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v18

    .line 738
    .local v18, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/16 v17, 0x0

    .line 740
    .local v17, "oldUri":Landroid/net/Uri;
    sparse-switch p3, :sswitch_data_0

    .line 758
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "updateRintoneUri with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v4, 0x0

    return-object v4

    .line 742
    :sswitch_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 762
    .local v17, "oldUri":Landroid/net/Uri;
    :goto_0
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 763
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 762
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 764
    const/4 v15, 0x0

    .line 765
    .local v15, "newUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 766
    .local v20, "uriData":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 767
    const/4 v4, 0x0

    return-object v4

    .line 746
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "uriData":Ljava/lang/String;
    .local v17, "oldUri":Landroid/net/Uri;
    :sswitch_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .local v17, "oldUri":Landroid/net/Uri;
    goto :goto_0

    .line 750
    .local v17, "oldUri":Landroid/net/Uri;
    :sswitch_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .local v17, "oldUri":Landroid/net/Uri;
    goto :goto_0

    .line 754
    .local v17, "oldUri":Landroid/net/Uri;
    :sswitch_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .local v17, "oldUri":Landroid/net/Uri;
    goto :goto_0

    .line 769
    .restart local v15    # "newUri":Landroid/net/Uri;
    .restart local v20    # "uriData":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v21, v4, v5

    .line 770
    .local v21, "uriSdPath":Ljava/lang/String;
    move-object/from16 v0, p4

    array-length v14, v0

    .line 774
    .local v14, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v14, :cond_5

    .line 775
    aget-object v4, p4, v11

    aget-object v5, p4, v11

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 776
    .local v19, "sdPath":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 777
    .local v16, "newUriData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 778
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 779
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 780
    const-string/jumbo v7, "_data=?"

    .line 781
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v16, v8, v9

    .line 782
    const/4 v9, 0x0

    .line 777
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 785
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 786
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 788
    .local v12, "id":J
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 787
    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 789
    .local v15, "newUri":Landroid/net/Uri;
    const-string/jumbo v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update ringtone uri for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 790
    const-string/jumbo v6, " with new uri: "

    .line 789
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    if-eqz v10, :cond_1

    .line 795
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 796
    const/4 v10, 0x0

    .line 791
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v15

    .line 794
    .end local v12    # "id":J
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .local v15, "newUri":Landroid/net/Uri;
    :cond_2
    if-eqz v10, :cond_3

    .line 795
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 796
    const/4 v10, 0x0

    .line 774
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 793
    .end local v15    # "newUri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    .line 794
    if-eqz v10, :cond_4

    .line 795
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 796
    const/4 v10, 0x0

    .line 793
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    throw v4

    .line 801
    .end local v16    # "newUriData":Ljava/lang/String;
    .end local v19    # "sdPath":Ljava/lang/String;
    .restart local v15    # "newUri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update ringtone uri for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    return-object v15

    .line 804
    .end local v11    # "i":I
    .end local v14    # "length":I
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "uriData":Ljava/lang/String;
    .end local v21    # "uriSdPath":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    return-object v4

    .line 740
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;

    .prologue
    .line 725
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRintoneUriWithType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 726
    const-string/jumbo v2, " with ringtoneType  "

    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 724
    return-void
.end method

.method private updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 16
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;
    .param p4, "simId"    # J

    .prologue
    .line 669
    const-string/jumbo v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRintoneUriWithType  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with ringtoneType  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 670
    const-string/jumbo v7, " simId = "

    .line 669
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v5

    .line 673
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "dataKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUri(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 676
    .local v10, "newUri":Landroid/net/Uri;
    const-string/jumbo v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRintoneUriWithType   uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 677
    const-string/jumbo v7, "  with ringtoneType  "

    .line 676
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    if-eqz v10, :cond_0

    .line 680
    new-instance v14, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v14, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 682
    .local v14, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    .line 683
    .local v13, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    sparse-switch p2, :sswitch_data_0

    .line 705
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "getRingtoneUri with unsupport type!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p4

    .line 708
    invoke-direct/range {v5 .. v10}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 709
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 710
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 709
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 712
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v10, v14, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v13    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 685
    .restart local v13    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :sswitch_0
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 686
    const-string/jumbo v5, "is_ringtone"

    const-string/jumbo v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :sswitch_1
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 691
    const-string/jumbo v5, "is_notification"

    const-string/jumbo v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :sswitch_2
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 696
    const-string/jumbo v5, "is_ringtone"

    const-string/jumbo v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :sswitch_3
    const-string/jumbo v5, "is_ringtone"

    const-string/jumbo v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 715
    :catch_0
    move-exception v12

    .line 716
    .local v12, "ex1":Landroid/database/sqlite/SQLiteFullException;
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "SQLite is full or disk is full. So update ringtone uri error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 713
    .end local v12    # "ex1":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v11

    .line 714
    .local v11, "ex":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "couldn\'t set ringtone flag for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 683
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private upgradeProfileSettings()Z
    .locals 22

    .prologue
    .line 4117
    const-string/jumbo v18, "AudioProfileService"

    const-string/jumbo v19, "upgradeProfileSettings() start"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    new-instance v15, Ljava/util/ArrayList;

    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4121
    .local v15, "profileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v18, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v18 .. v18}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4122
    sget-object v18, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v18 .. v18}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4123
    sget-object v18, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v18 .. v18}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4124
    sget-object v18, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v18 .. v18}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4128
    const/16 v16, 0x0

    .line 4126
    .local v16, "serial":I
    :goto_0
    const/16 v18, 0x6

    .line 4128
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 4129
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4130
    const-string/jumbo v19, "_"

    .line 4129
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4130
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 4129
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4131
    .local v7, "customKey":Ljava/lang/String;
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4128
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 4134
    .end local v7    # "customKey":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4135
    const-string/jumbo v19, "mtk_audioprofile_active"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4134
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 4136
    .local v4, "activeProfile":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_1

    .line 4137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_active"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4140
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4141
    const-string/jumbo v19, "mtk_audioprofile_last_active"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4140
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 4142
    .local v12, "lastActiveProfile":Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 4143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_last_active"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4146
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4147
    const-string/jumbo v19, "mtk_audioprofile_custom_deleted"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4146
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 4148
    .local v13, "lastActiveProfileDeleted":Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 4149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_custom_deleted"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4153
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4154
    const-string/jumbo v19, "mtk_audioprofile_bessuround"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4153
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 4155
    .local v6, "bessuroundState":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v6, v0, :cond_4

    .line 4156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_bessuround"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4159
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4160
    const-string/jumbo v19, "mtk_audioprofile_bessuround_mode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4159
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 4161
    .local v5, "bessuroundMode":Ljava/lang/String;
    if-eqz v5, :cond_5

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_5

    .line 4162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_bessuround_mode"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4165
    :cond_5
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ge v8, v0, :cond_8

    .line 4166
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4167
    .local v14, "profile":Ljava/lang/String;
    const-string/jumbo v18, "AudioProfileService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "upgradeProfileSettings()-profile = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4168
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/audioprofile/AudioProfileService;->getAllOldKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 4169
    .local v11, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "key$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4170
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v9, v0, :cond_6

    .line 4173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 4174
    .local v17, "value":Ljava/lang/String;
    if-eqz v17, :cond_6

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 4177
    const-string/jumbo v18, "AudioProfileService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "upgradeProfileSettings()-key="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " , value="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 4165
    .end local v9    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 4181
    .end local v10    # "key$iterator":Ljava/util/Iterator;
    .end local v11    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "profile":Ljava/lang/String;
    :cond_8
    const-string/jumbo v18, "AudioProfileService"

    const-string/jumbo v19, "upgradeProfileSettings() Settings.System set KEY_PROFILE_UPGRADED as PROFILE_UPGRADED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4184
    const-string/jumbo v19, "mtk_audioprofile_upgraded"

    .line 4186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4185
    const/16 v21, 0x1

    .line 4183
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4187
    const-string/jumbo v18, "AudioProfileService"

    const-string/jumbo v19, "upgradeProfileSettings() end"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    const/16 v18, 0x1

    return v18
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 11

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    .line 1346
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "addProfile: Number of custom audio profile has reached upper limit!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v5, 0x0

    return-object v5

    .line 1351
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->genCustomKey()Ljava/lang/String;

    move-result-object v2

    .line 1352
    .local v2, "newKey":Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1353
    .local v0, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    new-instance v9, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    invoke-direct {v9, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    .line 1354
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v6, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1355
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v7, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1356
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1357
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v10, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1353
    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1358
    iget v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1359
    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1353
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1360
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1353
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1361
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1353
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1362
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1353
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1363
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1353
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1364
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1353
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    .line 1368
    .local v3, "newProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1369
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-virtual {v5, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1371
    .local v4, "succeed":Z
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCreateDateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1371
    invoke-virtual {v5, v6, v7}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1374
    if-eqz v4, :cond_1

    .line 1375
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1376
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1379
    const-string/jumbo v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addProfile: key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :goto_0
    return-object v2

    .line 1375
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1381
    :cond_1
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "addProfile: Failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1393
    if-nez p1, :cond_0

    .line 1394
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "deleteProfile: Null key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/4 v2, 0x0

    return v2

    .line 1398
    :cond_0
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1399
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->remove(Ljava/util/List;)Z

    move-result v1

    .line 1400
    .local v1, "removed":Z
    if-eqz v1, :cond_4

    .line 1401
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1402
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1403
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1405
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1406
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1409
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    .line 1412
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1413
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "deleteProfile: Custom active deleted and set to default."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1415
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    .line 1418
    :cond_4
    return v1

    .line 1401
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1251
    :try_start_0
    const-string/jumbo v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getActiveProfile: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1524
    :try_start_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllProfileKeys: UserManager.supportsMultipleUsers()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1526
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    .line 1525
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllProfileKeys: mUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1528
    const-string/jumbo v4, "  UserHandle.USER_OWNER = "

    .line 1527
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1528
    const/4 v4, 0x0

    .line 1527
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1531
    .local v0, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1532
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1533
    return-object v0

    .line 1523
    .end local v0    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getBesSurroundMode()I
    .locals 1

    .prologue
    .line 3862
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    return v0
.end method

.method public getBesSurroundState()Z
    .locals 1

    .prologue
    .line 3832
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    return v0
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1556
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 1557
    const/4 v1, 0x0

    return-object v1

    .line 1560
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    .local v0, "customizedProfileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1562
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1563
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCustomizedProfileKeys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return-object v0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 3083
    const/4 v0, 0x0

    .line 3084
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 3102
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    const/4 v1, 0x0

    return-object v1

    .line 3086
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 3105
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultRingtone: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", default uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    return-object v0

    .line 3090
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 3094
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 3098
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 3084
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1263
    :try_start_0
    const-string/jumbo v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLastActiveProfileKey: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1262
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    .local v0, "predefinedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1545
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPredefinedProfileKeys: keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    return-object v0
.end method

.method public getProfileCount()I
    .locals 5

    .prologue
    .line 1510
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1511
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1512
    .local v0, "count":I
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProfileCount: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1513
    return v0

    .line 1510
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2113
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2114
    .local v0, "profileName":Ljava/lang/String;
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2115
    const-string/jumbo v3, ", profileName = "

    .line 2114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2062
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 2029
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2030
    :try_start_0
    iget v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-eqz v1, :cond_0

    .line 2031
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 2034
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 2035
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2037
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProfileState of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2038
    const-string/jumbo v4, "is null, so create new one instead!"

    .line 2037
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    .line 2040
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_1
    monitor-exit v2

    .line 2042
    return-object v0

    .line 2029
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2074
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 2075
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v3

    array-length v1, v3

    .line 2076
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2077
    .local v2, "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2078
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2079
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2080
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2082
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2083
    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2082
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2084
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2085
    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2084
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2086
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2087
    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2086
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2089
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2090
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2089
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2091
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2092
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2091
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2093
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2094
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2093
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2095
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2096
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2095
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2097
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2098
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2097
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2100
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getProfileStateString for profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 1767
    if-nez p1, :cond_0

    .line 1768
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    return-object v3

    .line 1772
    :cond_0
    const/4 v0, 0x0

    .line 1773
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1791
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    return-object v3

    .line 1775
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1794
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1797
    const/4 v0, 0x0

    .line 1802
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1803
    const-string/jumbo v3, ", uri = "

    .line 1802
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    return-object v0

    .line 1779
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1783
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1787
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1798
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1800
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1773
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getRingtoneUriWithSIM(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J

    .prologue
    const/4 v3, 0x0

    .line 1808
    if-nez p1, :cond_0

    .line 1809
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    return-object v3

    .line 1812
    :cond_0
    iput-wide p3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 1813
    const/4 v0, 0x0

    .line 1814
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1832
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    return-object v3

    .line 1816
    :sswitch_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1835
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1838
    const/4 v0, 0x0

    .line 1843
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRingtoneUriWithSIM: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1844
    const-string/jumbo v3, ", uri = "

    .line 1843
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1844
    const-string/jumbo v3, ", simId = "

    .line 1843
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    return-object v0

    .line 1820
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1824
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1828
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_3
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1839
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1841
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1814
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1898
    if-nez p1, :cond_0

    .line 1899
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "getStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    return v4

    .line 1903
    :cond_0
    const/4 v1, 0x0

    .line 1904
    .local v1, "volume":I
    packed-switch p2, :pswitch_data_0

    .line 1918
    :pswitch_0
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "getStreamVolume with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return v4

    .line 1906
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1921
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v0

    .line 1922
    .local v0, "validVolume":I
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1923
    const-string/jumbo v4, ", volume = "

    .line 1922
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    return v0

    .line 1910
    .end local v0    # "validVolume":I
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    goto :goto_0

    .line 1914
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    goto :goto_0

    .line 1904
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isActiveProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 3055
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v2

    .line 3056
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3057
    :goto_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", actived = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3058
    return v0

    .line 3056
    :cond_0
    const/4 v0, 0x0

    .local v0, "actived":Z
    goto :goto_0

    .line 3055
    .end local v0    # "actived":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1954
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1955
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1956
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1957
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1959
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDtmfToneEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    return v1
.end method

.method public isLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1990
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1991
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1992
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1993
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1995
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLockScreenEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    return v1
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1497
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1498
    .local v0, "isExisted":Z
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNameExist: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isExisted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1499
    const-string/jumbo v3, ", mCustomProfileName = "

    .line 1498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1499
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 1498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    return v0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3070
    const/4 v0, 0x1

    return v0
.end method

.method public isSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1972
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1973
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1974
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1975
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1977
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSoundEffectEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    return v1
.end method

.method public isVibrateOnTouchEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2009
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2010
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 2011
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 2012
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2014
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVibrateOnTouchEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    return v1
.end method

.method public isVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1936
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1937
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1938
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1939
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1941
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    return v1
.end method

.method public listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    .locals 10
    .param p1, "callback"    # Lcom/mediatek/common/audioprofile/IAudioProfileListener;
    .param p2, "event"    # I

    .prologue
    .line 3540
    if-nez p2, :cond_0

    .line 3541
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3542
    const-string/jumbo v6, "AudioProfileService"

    const-string/jumbo v7, "listenAudioProfie with LISTEN_NONE, so remove this listener\'s callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    return-void

    .line 3546
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3549
    const/4 v3, 0x0

    .line 3551
    .local v3, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3552
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 3553
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .local v4, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :goto_0
    if-ge v2, v5, :cond_3

    .line 3554
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3555
    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .local v3, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_2
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    if-ne v0, v6, :cond_2

    .line 3564
    :goto_1
    iput p2, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3566
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 3568
    :try_start_3
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onProfileChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3576
    :cond_1
    :goto_2
    :try_start_4
    const-string/jumbo v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listenAudioProfie with event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " sucessed, record.mBinder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3577
    iget-object v9, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3576
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3577
    const-string/jumbo v9, " ,clients = "

    .line 3576
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3577
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3576
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    .line 3539
    return-void

    .line 3553
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_0

    .line 3559
    :cond_3
    :try_start_5
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService$Record;-><init>(Lcom/mediatek/audioprofile/AudioProfileService$Record;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3560
    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_6
    iput-object v0, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3561
    iput-object p1, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    .line 3562
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 3546
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    .line 3569
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v5    # "size":I
    :catch_0
    move-exception v1

    .line 3570
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3571
    const-string/jumbo v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 3546
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_3
.end method

.method public notifyRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1308
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1309
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "notifyRingerVolumeChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return-void

    .line 1313
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1314
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1315
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1316
    return-void

    .line 1319
    :cond_1
    :try_start_1
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyRingerVolumeChanged: oldVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", newVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1320
    const-string/jumbo v6, ", profile = "

    .line 1319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1320
    const-string/jumbo v6, ", client = "

    .line 1319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1320
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1322
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1323
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 1324
    .local v2, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 1326
    :try_start_2
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1329
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Dead object in notifyRingerVolumeChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1331
    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1331
    const-string/jumbo v6, ", clients = "

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    const-string/jumbo v6, ", exception = "

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1313
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    monitor-exit v4

    .line 1307
    return-void
.end method

.method public persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2643
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2642
    return-void
.end method

.method public reset()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1425
    const-string/jumbo v7, "AudioProfileService"

    const-string/jumbo v8, "reset start!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iput-boolean v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 1427
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1428
    .local v1, "generalKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v2

    .line 1429
    .local v2, "isGeneralActive":Z
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1434
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 1435
    if-eqz v2, :cond_0

    .line 1436
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1446
    :goto_0
    const-string/jumbo v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reset: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1447
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1446
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1452
    .local v0, "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1453
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1454
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "profileKey$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1455
    .local v3, "profileKey":Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v6

    .line 1456
    .local v6, "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1457
    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1461
    :goto_2
    const-string/jumbo v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "reset: profileKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1462
    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1461
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1429
    .end local v0    # "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "profileKey":Ljava/lang/String;
    .end local v4    # "profileKey$iterator":Ljava/util/Iterator;
    .end local v6    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1438
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1439
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    .line 1440
    .local v5, "ringerMode":I
    if-eq v5, v10, :cond_1

    .line 1441
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1443
    :cond_1
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1444
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    goto/16 :goto_0

    .line 1459
    .end local v5    # "ringerMode":I
    .restart local v0    # "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "profileKey":Ljava/lang/String;
    .restart local v4    # "profileKey$iterator":Ljava/util/Iterator;
    .restart local v6    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    invoke-direct {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    goto :goto_2

    .line 1464
    .end local v3    # "profileKey":Ljava/lang/String;
    .end local v6    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_3
    const-string/jumbo v7, "AudioProfileService"

    const-string/jumbo v9, "reset end!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 1466
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 1424
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1205
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    .line 1204
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "shouldSetRingerMode"    # Z

    .prologue
    .line 1048
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v6

    .line 1049
    .local v6, "oldProfileKey":Ljava/lang/String;
    move-object/from16 v4, p1

    .line 1050
    .local v4, "newProfileKey":Ljava/lang/String;
    const-string/jumbo v13, "AudioProfileService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setActiveProfile>>>: oldProfileKey = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1051
    const-string/jumbo v15, ", newProfileKey = "

    .line 1050
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1052
    const-string/jumbo v15, ", shouldSetRingerMode = "

    .line 1050
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1056
    const-string/jumbo v13, "AudioProfileService"

    const-string/jumbo v14, "setActiveProfile with same profile key with active profile, do nothing!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void

    .line 1060
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1061
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1062
    const/4 v8, 0x1

    .line 1065
    .local v8, "overrideSystem":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 1066
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 1065
    move/from16 v0, p2

    invoke-interface {v13, v0, v6, v4, v15}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;

    move-result-object v2

    .line 1068
    .local v2, "apcInfo":Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    if-nez v2, :cond_5

    .line 1069
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v5

    .line 1070
    .local v5, "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v7

    .line 1072
    .local v7, "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    .line 1073
    .local v9, "ringerMode":I
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v15

    aget v13, v13, v15

    packed-switch v13, :pswitch_data_0

    .line 1099
    const/4 v13, 0x2

    .line 1098
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1103
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    iget v13, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-nez v13, :cond_1

    .line 1104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 1105
    const/4 v15, 0x2

    .line 1104
    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    .line 1106
    .local v12, "volume":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 1107
    const-string/jumbo v13, "AudioProfileService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setActiveProfile: profile volume is 0, change to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    .end local v12    # "volume":I
    :cond_1
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1112
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1111
    if-eqz v13, :cond_3

    .line 1113
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1111
    if-eqz v13, :cond_3

    .line 1118
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-nez v13, :cond_4

    .line 1119
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 1123
    .end local v8    # "overrideSystem":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 1124
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 1126
    :cond_3
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 1158
    .end local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v9    # "ringerMode":I
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1160
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 1162
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    iget v11, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1163
    .local v11, "ringerVolume":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v11, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 1164
    const-string/jumbo v13, "AudioProfileService"

    const-string/jumbo v15, "setActiveProfile<<<"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    .line 1046
    return-void

    .line 1077
    .end local v11    # "ringerVolume":I
    .restart local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v8    # "overrideSystem":Z
    .restart local v9    # "ringerMode":I
    :pswitch_0
    const/4 v13, 0x0

    .line 1076
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1080
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 1082
    const/4 v8, 0x0

    .line 1083
    goto :goto_1

    .line 1088
    :pswitch_1
    const/4 v13, 0x1

    .line 1087
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1091
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 1093
    const/4 v8, 0x0

    .line 1094
    goto :goto_1

    .line 1118
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 1130
    .end local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v9    # "ringerMode":I
    :cond_5
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->getRingerModeToUpdate()I

    move-result v10

    .line 1131
    .local v10, "ringerModeToUpdate":I
    const/16 v13, -0x3e7

    if-eq v10, v13, :cond_6

    .line 1133
    move-object/from16 v0, p0

    iput v10, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13, v10}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1135
    const-string/jumbo v13, "AudioProfileService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CMCC: setActiveProfile: RingerMode now set "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_6
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSetLastActiveKey()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1141
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v3

    .line 1142
    .local v3, "lastActiveChanged":Z
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v13, :cond_7

    .line 1143
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1147
    .end local v3    # "lastActiveChanged":Z
    :cond_7
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSyncToSystem()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1151
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 1152
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 1154
    :cond_8
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldOverrideSystem()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .local v8, "overrideSystem":Z
    goto/16 :goto_1

    .line 1060
    .end local v2    # "apcInfo":Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .end local v8    # "overrideSystem":Z
    .end local v10    # "ringerModeToUpdate":I
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1073
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBesSurroundMode(I)I
    .locals 4
    .param p1, "besSurroundMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 3872
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    if-nez v0, :cond_0

    .line 3873
    const/4 v0, -0x1

    return v0

    .line 3875
    :cond_0
    if-nez p1, :cond_2

    .line 3876
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "BesSurround_Mode=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3880
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v1, "mtk_audioprofile_bessuround_mode"

    .line 3881
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3880
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3882
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 3884
    return v3

    .line 3877
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3878
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "BesSurround_Mode=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBesSurroundState(Z)I
    .locals 4
    .param p1, "isEnableBes"    # Z

    .prologue
    .line 3842
    const/4 v0, 0x0

    .line 3843
    .local v0, "stateCode":I
    if-eqz p1, :cond_0

    .line 3844
    const/4 v0, 0x1

    .line 3845
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "BesSurround_OnOff=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3849
    :goto_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v2, "mtk_audioprofile_bessuround"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3850
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    .line 3852
    const/4 v1, 0x0

    return v1

    .line 3847
    :cond_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "BesSurround_OnOff=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2490
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2491
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2492
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2493
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v3, "setDtmfToneEnabled profile state not exist!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2494
    return-void

    .line 2496
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eq v1, p2, :cond_2

    .line 2498
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToDatabase(Ljava/lang/String;Z)V

    .line 2499
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 2501
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2502
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 2504
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDtmfToneEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2489
    return-void

    .line 2490
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2550
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2551
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2552
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2553
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v3, "setLockScreenEnabled profile state not exist!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2554
    return-void

    .line 2557
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eq v1, p2, :cond_2

    .line 2559
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToDatabase(Ljava/lang/String;Z)V

    .line 2560
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 2562
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2563
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 2565
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockScreenEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2549
    return-void

    .line 2550
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 2613
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2614
    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2615
    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2617
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2619
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", newName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :goto_0
    return-void

    .line 2621
    :cond_2
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "setProfileName with Null name!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 9
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2153
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2154
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2155
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "setRingtoneUri profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    return-void

    .line 2159
    :cond_0
    iput-wide p3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 2161
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->isValidRingtoneType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2162
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "setRingtoneUri with undefined stream type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_1
    move-object v6, p5

    .line 2166
    .local v6, "newRingtoneUri":Landroid/net/Uri;
    invoke-direct {p0, v0, p2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneUriChanged(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2167
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "setRingtoneUri with ringtone uri unchanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_3

    .line 2173
    if-nez v6, :cond_3

    .line 2174
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 2179
    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2183
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2184
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 2188
    :cond_4
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v7, p3

    .line 2189
    invoke-direct/range {v3 .. v8}, Lcom/mediatek/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V

    .line 2192
    :cond_5
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2193
    const-string/jumbo v3, ", uri = "

    .line 2192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    return-void
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2136
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2135
    return-void
.end method

.method public setShouldSyncToSystemFlag(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "shouldSync"    # Z

    .prologue
    .line 2229
    sparse-switch p1, :sswitch_data_0

    .line 2228
    :goto_0
    return-void

    .line 2231
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2235
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2239
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2243
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2229
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2520
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2521
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2522
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2523
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v3, "setSoundEffectEnabled profile state not exist!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2524
    return-void

    .line 2526
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eq v1, p2, :cond_2

    .line 2528
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToDatabase(Ljava/lang/String;Z)V

    .line 2529
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 2531
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2532
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 2534
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSoundEffectEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2519
    return-void

    .line 2520
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "index"    # I

    .prologue
    .line 2345
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2346
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v1

    .line 2347
    .local v1, "validIndex":I
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2348
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2349
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v4, "setStreamVolume profile state not exist!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2350
    return-void

    .line 2353
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2404
    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v4, "setStreamVolume with undefind stream type!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_1
    :goto_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStreamVolume: profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", streamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2408
    const-string/jumbo v5, ", volume = "

    .line 2407
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 2344
    return-void

    .line 2355
    :pswitch_1
    :try_start_2
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v2, v1, :cond_1

    .line 2359
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2360
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2364
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2365
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2345
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v1    # "validIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2371
    .restart local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v1    # "validIndex":I
    :pswitch_2
    :try_start_3
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    if-eq v2, v1, :cond_1

    .line 2375
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2376
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2380
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2381
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 2382
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2381
    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2388
    :pswitch_3
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    if-eq v2, v1, :cond_1

    .line 2392
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2393
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2397
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2398
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2353
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setUserId(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3588
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserId() lastUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,mUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    if-eq v0, p1, :cond_0

    .line 3590
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3591
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->reInit()V

    .line 3587
    :cond_0
    return-void
.end method

.method public setVibrateOnTouchEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2582
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2583
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2584
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2585
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v3, "setVibrateOnTouchEnabled profile state not exist!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2586
    return-void

    .line 2589
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eq v1, p2, :cond_2

    .line 2591
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V

    .line 2592
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2594
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2595
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 2597
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVibrateOnTouchEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2581
    return-void

    .line 2582
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2423
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setVibrationEnabled(Ljava/lang/String;ZZ)V

    .line 2421
    return-void
.end method

.method public setVibrationEnabled(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "shouldSetRingerMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2439
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2440
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2441
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2442
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v4, "setVibrationEnabled profile state not exist!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 2443
    return-void

    .line 2446
    :cond_0
    :try_start_1
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eq v6, p2, :cond_2

    .line 2449
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2450
    .local v2, "token":J
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2451
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 2452
    const-string/jumbo v7, "vibrate_in_silent"

    if-eqz p2, :cond_4

    :goto_0
    iget v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 2451
    invoke-static {v6, v7, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2454
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 2455
    if-eqz p2, :cond_5

    .line 2456
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 2457
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2458
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v4, "setVibrationEnabled true,change RingerMode to VIBRATE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2468
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToDatabase(Ljava/lang/String;Z)V

    .line 2469
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 2472
    .end local v2    # "token":J
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2473
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 2475
    :cond_3
    const-string/jumbo v1, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVibrationEnabled: profileKey = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", enabled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2476
    const-string/jumbo v6, ", shouldSetRingerMode = "

    .line 2475
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 2438
    return-void

    .restart local v2    # "token":J
    :cond_4
    move v1, v4

    .line 2452
    goto :goto_0

    .line 2460
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 2461
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2462
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v4, "setVibrationEnabled false,change RingerMode to SILENT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2439
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1
.end method

.method public syncRingerVolumeToProfile(Ljava/lang/String;I)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 3452
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v0, p2, :cond_0

    .line 3453
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3454
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3455
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3456
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3458
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3459
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3460
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncRingerVolumeToProfile: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    :cond_0
    return-void
.end method
