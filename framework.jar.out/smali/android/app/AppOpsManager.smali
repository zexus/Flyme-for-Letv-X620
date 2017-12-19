.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$PermissionInstallResult;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x4

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field private static final OPSTR_ALARM_WAKEUP:Ljava/lang/String; = "android:alarm_wakeup"

.field private static final OPSTR_BLUETOOTH_ON_OFF:Ljava/lang/String; = "android:bluetooth_on_off"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field private static final OPSTR_BOOT_COMPLETED:Ljava/lang/String; = "android:boot_completed"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field private static final OPSTR_DATA_CONNECT_ON_OFF:Ljava/lang/String; = "android:data_connect_on_off"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field private static final OPSTR_ICON_MARK:Ljava/lang/String; = "android:icon_mark"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field private static final OPSTR_NFC_ON_OFF:Ljava/lang/String; = "android:nfc_on_off"

.field private static final OPSTR_NOTIFICATION_FAVOURITE:Ljava/lang/String; = "android:notification_favourite"

.field private static final OPSTR_NOTIFICATION_SOUND:Ljava/lang/String; = "android:notification_sound"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field private static final OPSTR_READ_MMS:Ljava/lang/String; = "android:read_mms"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field private static final OPSTR_SEND_MMS:Ljava/lang/String; = "android:send_mms"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field private static final OPSTR_THREE_WAY_CALLING:Ljava/lang/String; = "android:three_way_calling"

.field private static final OPSTR_TRUST_BG_APP:Ljava/lang/String; = "android:trust_bg_app"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field private static final OPSTR_WIFI_ON_OFF:Ljava/lang/String; = "android:wifi_on_off"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field private static final OPSTR_WRITE_MMS:Ljava/lang/String; = "android:write_mms"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ALARM_WAKEUP:I = 0x42

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BLUETOOTH_ON_OFF:I = 0x40

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_BOOT_COMPLETED:I = 0x46

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_DATA_CONNECT_ON_OFF:I = 0x41

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_ICON_MARK:I = 0x4b

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NFC_ON_OFF:I = 0x47

.field public static final OP_NONE:I = -0x1

.field public static final OP_NOTIFICATION_FAVOURITE:I = 0x49

.field public static final OP_NOTIFICATION_SOUND:I = 0x48

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_MMS:I = 0x44

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_MMS:I = 0x43

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_THREE_WAY_CALLING:I = 0x4a

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TRUST_BG_APP:I = 0x4c

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_ON_OFF:I = 0x3f

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MMS:I = 0x45

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field public static final _NUM_OP:I = 0x4d

.field private static sNameToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultCTAMode:[I

.field private static sOpDefaultMode:[I

.field private static sOpDefaultStrictMode:[I

.field private static sOpDisableReset:[Z

.field public static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpStrictMode:[Z

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x4d

    const/4 v4, 0x0

    .line 419
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 505
    new-array v1, v5, [Ljava/lang/String;

    .line 506
    const-string/jumbo v2, "android:coarse_location"

    aput-object v2, v1, v6

    .line 507
    const-string/jumbo v2, "android:fine_location"

    aput-object v2, v1, v7

    .line 508
    aput-object v4, v1, v8

    .line 509
    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 510
    const-string/jumbo v2, "android:read_contacts"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 511
    const-string/jumbo v2, "android:write_contacts"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 512
    const-string/jumbo v2, "android:read_call_log"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 513
    const-string/jumbo v2, "android:write_call_log"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 514
    const-string/jumbo v2, "android:read_calendar"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 515
    const-string/jumbo v2, "android:write_calendar"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 516
    const/16 v2, 0xa

    aput-object v4, v1, v2

    .line 517
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 518
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 519
    const-string/jumbo v2, "android:call_phone"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 520
    const-string/jumbo v2, "android:read_sms"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 521
    const/16 v2, 0xf

    aput-object v4, v1, v2

    .line 522
    const-string/jumbo v2, "android:receive_sms"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 523
    const/16 v2, 0x11

    aput-object v4, v1, v2

    .line 524
    const-string/jumbo v2, "android:receive_mms"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 525
    const-string/jumbo v2, "android:receive_wap_push"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 526
    const-string/jumbo v2, "android:send_sms"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 527
    const/16 v2, 0x15

    aput-object v4, v1, v2

    .line 528
    const/16 v2, 0x16

    aput-object v4, v1, v2

    .line 529
    const-string/jumbo v2, "android:write_settings"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 530
    const-string/jumbo v2, "android:system_alert_window"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 531
    const/16 v2, 0x19

    aput-object v4, v1, v2

    .line 532
    const-string/jumbo v2, "android:camera"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 533
    const-string/jumbo v2, "android:record_audio"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 534
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 535
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 536
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 537
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 538
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 539
    const/16 v2, 0x21

    aput-object v4, v1, v2

    .line 540
    const/16 v2, 0x22

    aput-object v4, v1, v2

    .line 541
    const/16 v2, 0x23

    aput-object v4, v1, v2

    .line 542
    const/16 v2, 0x24

    aput-object v4, v1, v2

    .line 543
    const/16 v2, 0x25

    aput-object v4, v1, v2

    .line 544
    const/16 v2, 0x26

    aput-object v4, v1, v2

    .line 545
    const/16 v2, 0x27

    aput-object v4, v1, v2

    .line 546
    const/16 v2, 0x28

    aput-object v4, v1, v2

    .line 547
    const-string/jumbo v2, "android:monitor_location"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 548
    const-string/jumbo v2, "android:monitor_location_high_power"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 549
    const-string/jumbo v2, "android:get_usage_stats"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 550
    const/16 v2, 0x2c

    aput-object v4, v1, v2

    .line 551
    const/16 v2, 0x2d

    aput-object v4, v1, v2

    .line 552
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 553
    const-string/jumbo v2, "android:activate_vpn"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 554
    const/16 v2, 0x30

    aput-object v4, v1, v2

    .line 555
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 556
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 557
    const-string/jumbo v2, "android:read_phone_state"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 558
    const-string/jumbo v2, "android:add_voicemail"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 559
    const-string/jumbo v2, "android:use_sip"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 560
    const/16 v2, 0x36

    aput-object v4, v1, v2

    .line 561
    const-string/jumbo v2, "android:use_fingerprint"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 562
    const-string/jumbo v2, "android:body_sensors"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 563
    const-string/jumbo v2, "android:read_cell_broadcasts"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 564
    const-string/jumbo v2, "android:mock_location"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    .line 565
    const-string/jumbo v2, "android:read_external_storage"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 566
    const-string/jumbo v2, "android:write_external_storage"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 567
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 568
    const-string/jumbo v2, "android:get_accounts"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 570
    const-string/jumbo v2, "android:wifi_on_off"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    .line 571
    const-string/jumbo v2, "android:bluetooth_on_off"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    .line 572
    const-string/jumbo v2, "android:data_connect_on_off"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    .line 573
    const-string/jumbo v2, "android:alarm_wakeup"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    .line 574
    const-string/jumbo v2, "android:send_mms"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    .line 575
    const-string/jumbo v2, "android:read_mms"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    .line 576
    const-string/jumbo v2, "android:write_mms"

    const/16 v3, 0x45

    aput-object v2, v1, v3

    .line 577
    const-string/jumbo v2, "android:boot_completed"

    const/16 v3, 0x46

    aput-object v2, v1, v3

    .line 578
    const-string/jumbo v2, "android:nfc_on_off"

    const/16 v3, 0x47

    aput-object v2, v1, v3

    .line 579
    const-string/jumbo v2, "android:notification_sound"

    const/16 v3, 0x48

    aput-object v2, v1, v3

    .line 580
    const-string/jumbo v2, "android:notification_favourite"

    const/16 v3, 0x49

    aput-object v2, v1, v3

    .line 581
    const-string/jumbo v2, "android:three_way_calling"

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    .line 582
    const-string/jumbo v2, "android:icon_mark"

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    .line 583
    const-string/jumbo v2, "android:trust_bg_app"

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    .line 505
    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 592
    new-array v1, v5, [Ljava/lang/String;

    .line 593
    const-string/jumbo v2, "COARSE_LOCATION"

    aput-object v2, v1, v6

    .line 594
    const-string/jumbo v2, "FINE_LOCATION"

    aput-object v2, v1, v7

    .line 595
    const-string/jumbo v2, "GPS"

    aput-object v2, v1, v8

    .line 596
    const-string/jumbo v2, "VIBRATE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 597
    const-string/jumbo v2, "READ_CONTACTS"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 598
    const-string/jumbo v2, "WRITE_CONTACTS"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 599
    const-string/jumbo v2, "READ_CALL_LOG"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 600
    const-string/jumbo v2, "WRITE_CALL_LOG"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 601
    const-string/jumbo v2, "READ_CALENDAR"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 602
    const-string/jumbo v2, "WRITE_CALENDAR"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 603
    const-string/jumbo v2, "WIFI_SCAN"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 604
    const-string/jumbo v2, "POST_NOTIFICATION"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 605
    const-string/jumbo v2, "NEIGHBORING_CELLS"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 606
    const-string/jumbo v2, "CALL_PHONE"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 607
    const-string/jumbo v2, "READ_SMS"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 608
    const-string/jumbo v2, "WRITE_SMS"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 609
    const-string/jumbo v2, "RECEIVE_SMS"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 610
    const-string/jumbo v2, "RECEIVE_EMERGECY_SMS"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 611
    const-string/jumbo v2, "RECEIVE_MMS"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 612
    const-string/jumbo v2, "RECEIVE_WAP_PUSH"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 613
    const-string/jumbo v2, "SEND_SMS"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 614
    const-string/jumbo v2, "READ_ICC_SMS"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 615
    const-string/jumbo v2, "WRITE_ICC_SMS"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 616
    const-string/jumbo v2, "WRITE_SETTINGS"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 617
    const-string/jumbo v2, "SYSTEM_ALERT_WINDOW"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 618
    const-string/jumbo v2, "ACCESS_NOTIFICATIONS"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 619
    const-string/jumbo v2, "CAMERA"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 620
    const-string/jumbo v2, "RECORD_AUDIO"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 621
    const-string/jumbo v2, "PLAY_AUDIO"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 622
    const-string/jumbo v2, "READ_CLIPBOARD"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 623
    const-string/jumbo v2, "WRITE_CLIPBOARD"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 624
    const-string/jumbo v2, "TAKE_MEDIA_BUTTONS"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 625
    const-string/jumbo v2, "TAKE_AUDIO_FOCUS"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 626
    const-string/jumbo v2, "AUDIO_MASTER_VOLUME"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 627
    const-string/jumbo v2, "AUDIO_VOICE_VOLUME"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 628
    const-string/jumbo v2, "AUDIO_RING_VOLUME"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 629
    const-string/jumbo v2, "AUDIO_MEDIA_VOLUME"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 630
    const-string/jumbo v2, "AUDIO_ALARM_VOLUME"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 631
    const-string/jumbo v2, "AUDIO_NOTIFICATION_VOLUME"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 632
    const-string/jumbo v2, "AUDIO_BLUETOOTH_VOLUME"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 633
    const-string/jumbo v2, "WAKE_LOCK"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 634
    const-string/jumbo v2, "MONITOR_LOCATION"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 635
    const-string/jumbo v2, "MONITOR_HIGH_POWER_LOCATION"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 636
    const-string/jumbo v2, "GET_USAGE_STATS"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 637
    const-string/jumbo v2, "MUTE_MICROPHONE"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 638
    const-string/jumbo v2, "TOAST_WINDOW"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 639
    const-string/jumbo v2, "PROJECT_MEDIA"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    .line 640
    const-string/jumbo v2, "ACTIVATE_VPN"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 641
    const-string/jumbo v2, "WRITE_WALLPAPER"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 642
    const-string/jumbo v2, "ASSIST_STRUCTURE"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    .line 643
    const-string/jumbo v2, "ASSIST_SCREENSHOT"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    .line 644
    const-string/jumbo v2, "OP_READ_PHONE_STATE"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 645
    const-string/jumbo v2, "ADD_VOICEMAIL"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 646
    const-string/jumbo v2, "USE_SIP"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 647
    const-string/jumbo v2, "PROCESS_OUTGOING_CALLS"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    .line 648
    const-string/jumbo v2, "USE_FINGERPRINT"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 649
    const-string/jumbo v2, "BODY_SENSORS"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 650
    const-string/jumbo v2, "READ_CELL_BROADCASTS"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 651
    const-string/jumbo v2, "MOCK_LOCATION"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    .line 652
    const-string/jumbo v2, "READ_EXTERNAL_STORAGE"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 653
    const-string/jumbo v2, "WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 654
    const-string/jumbo v2, "TURN_ON_SCREEN"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    .line 655
    const-string/jumbo v2, "GET_ACCOUNTS"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 657
    const-string/jumbo v2, "WIFI_CHANGE"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    .line 658
    const-string/jumbo v2, "BLUETOOTH_CHANGE"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    .line 659
    const-string/jumbo v2, "DATA_CONNECT_CHANGE"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    .line 660
    const-string/jumbo v2, "ALARM_WAKEUP"

    const/16 v3, 0x42

    aput-object v2, v1, v3

    .line 661
    const-string/jumbo v2, "SEND_MMS"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    .line 662
    const-string/jumbo v2, "READ_MMS"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    .line 663
    const-string/jumbo v2, "WRITE_MMS"

    const/16 v3, 0x45

    aput-object v2, v1, v3

    .line 664
    const-string/jumbo v2, "BOOT_COMPLETED"

    const/16 v3, 0x46

    aput-object v2, v1, v3

    .line 665
    const-string/jumbo v2, "NFC"

    const/16 v3, 0x47

    aput-object v2, v1, v3

    .line 666
    const-string/jumbo v2, "NOTIFICATION_SOUND"

    const/16 v3, 0x48

    aput-object v2, v1, v3

    .line 667
    const-string/jumbo v2, "NOTIFICATION FAVOURITE"

    const/16 v3, 0x49

    aput-object v2, v1, v3

    .line 668
    const-string/jumbo v2, "THREE-WAY CALLING"

    const/16 v3, 0x4a

    aput-object v2, v1, v3

    .line 669
    const-string/jumbo v2, "ICON_MARK"

    const/16 v3, 0x4b

    aput-object v2, v1, v3

    .line 670
    const-string/jumbo v2, "TRUST_BG_APP"

    const/16 v3, 0x4c

    aput-object v2, v1, v3

    .line 592
    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 678
    new-array v1, v5, [Ljava/lang/String;

    .line 679
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v6

    .line 680
    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v7

    .line 681
    aput-object v4, v1, v8

    .line 682
    const-string/jumbo v2, "android.permission.VIBRATE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 683
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 684
    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 685
    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 686
    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 687
    const-string/jumbo v2, "android.permission.READ_CALENDAR"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 688
    const-string/jumbo v2, "android.permission.WRITE_CALENDAR"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 689
    const-string/jumbo v2, "android.permission.ACCESS_WIFI_STATE"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 690
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 691
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 692
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 693
    const-string/jumbo v2, "android.permission.READ_SMS"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 694
    const/16 v2, 0xf

    aput-object v4, v1, v2

    .line 695
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 696
    const-string/jumbo v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 697
    const-string/jumbo v2, "android.permission.RECEIVE_MMS"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 698
    const-string/jumbo v2, "android.permission.RECEIVE_WAP_PUSH"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 699
    const-string/jumbo v2, "android.permission.SEND_SMS"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 700
    const-string/jumbo v2, "android.permission.READ_SMS"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 701
    const/16 v2, 0x16

    aput-object v4, v1, v2

    .line 702
    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 703
    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 704
    const-string/jumbo v2, "android.permission.ACCESS_NOTIFICATIONS"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 705
    const-string/jumbo v2, "android.permission.CAMERA"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 706
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 707
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 708
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 709
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 710
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 711
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 712
    const/16 v2, 0x21

    aput-object v4, v1, v2

    .line 713
    const/16 v2, 0x22

    aput-object v4, v1, v2

    .line 714
    const/16 v2, 0x23

    aput-object v4, v1, v2

    .line 715
    const/16 v2, 0x24

    aput-object v4, v1, v2

    .line 716
    const/16 v2, 0x25

    aput-object v4, v1, v2

    .line 717
    const/16 v2, 0x26

    aput-object v4, v1, v2

    .line 718
    const/16 v2, 0x27

    aput-object v4, v1, v2

    .line 719
    const-string/jumbo v2, "android.permission.WAKE_LOCK"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 720
    const/16 v2, 0x29

    aput-object v4, v1, v2

    .line 721
    const/16 v2, 0x2a

    aput-object v4, v1, v2

    .line 722
    const-string/jumbo v2, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 723
    const/16 v2, 0x2c

    aput-object v4, v1, v2

    .line 724
    const/16 v2, 0x2d

    aput-object v4, v1, v2

    .line 725
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 726
    const/16 v2, 0x2f

    aput-object v4, v1, v2

    .line 727
    const/16 v2, 0x30

    aput-object v4, v1, v2

    .line 728
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 729
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 730
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 731
    const-string/jumbo v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 732
    const-string/jumbo v2, "android.permission.USE_SIP"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 733
    const-string/jumbo v2, "android.permission.PROCESS_OUTGOING_CALLS"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    .line 734
    const-string/jumbo v2, "android.permission.USE_FINGERPRINT"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 735
    const-string/jumbo v2, "android.permission.BODY_SENSORS"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 736
    const-string/jumbo v2, "android.permission.READ_CELL_BROADCASTS"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 737
    const/16 v2, 0x3a

    aput-object v4, v1, v2

    .line 738
    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 739
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 740
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 741
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 743
    const-string/jumbo v2, "android.permission.CHANGE_WIFI_STATE"

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    .line 744
    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const/16 v3, 0x40

    aput-object v2, v1, v3

    .line 745
    const-string/jumbo v2, "android.permission.CHANGE_NETWORK_STATE"

    const/16 v3, 0x41

    aput-object v2, v1, v3

    .line 746
    const/16 v2, 0x42

    aput-object v4, v1, v2

    .line 747
    const-string/jumbo v2, "android.permission.SEND_SMS"

    const/16 v3, 0x43

    aput-object v2, v1, v3

    .line 748
    const-string/jumbo v2, "android.permission.READ_SMS"

    const/16 v3, 0x44

    aput-object v2, v1, v3

    .line 749
    const/16 v2, 0x45

    aput-object v4, v1, v2

    .line 750
    const-string/jumbo v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/16 v3, 0x46

    aput-object v2, v1, v3

    .line 751
    const-string/jumbo v2, "android.permission.NFC"

    const/16 v3, 0x47

    aput-object v2, v1, v3

    .line 752
    const/16 v2, 0x48

    aput-object v4, v1, v2

    .line 753
    const/16 v2, 0x49

    aput-object v4, v1, v2

    .line 754
    const/16 v2, 0x4a

    aput-object v4, v1, v2

    .line 755
    const/16 v2, 0x4b

    aput-object v4, v1, v2

    .line 756
    const/16 v2, 0x4c

    aput-object v4, v1, v2

    .line 678
    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 765
    new-array v1, v5, [Ljava/lang/String;

    .line 766
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v6

    .line 767
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v7

    .line 768
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v8

    .line 769
    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 770
    const/4 v2, 0x4

    aput-object v4, v1, v2

    .line 771
    const/4 v2, 0x5

    aput-object v4, v1, v2

    .line 772
    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 773
    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 774
    const/16 v2, 0x8

    aput-object v4, v1, v2

    .line 775
    const/16 v2, 0x9

    aput-object v4, v1, v2

    .line 776
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 777
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 778
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 779
    const/16 v2, 0xd

    aput-object v4, v1, v2

    .line 780
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 781
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 782
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 783
    const/16 v2, 0x11

    aput-object v4, v1, v2

    .line 784
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 785
    const/16 v2, 0x13

    aput-object v4, v1, v2

    .line 786
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 787
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 788
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 789
    const/16 v2, 0x17

    aput-object v4, v1, v2

    .line 790
    const-string/jumbo v2, "no_create_windows"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 791
    const/16 v2, 0x19

    aput-object v4, v1, v2

    .line 792
    const/16 v2, 0x1a

    aput-object v4, v1, v2

    .line 793
    const-string/jumbo v2, "no_record_audio"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 794
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 795
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 796
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 797
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 798
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 799
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 800
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 801
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 802
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 803
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 804
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 805
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 806
    const/16 v2, 0x28

    aput-object v4, v1, v2

    .line 807
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 808
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 809
    const/16 v2, 0x2b

    aput-object v4, v1, v2

    .line 810
    const-string/jumbo v2, "no_unmute_microphone"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 811
    const-string/jumbo v2, "no_create_windows"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 812
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 813
    const-string/jumbo v2, "no_config_vpn"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 814
    const-string/jumbo v2, "no_wallpaper"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 815
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 816
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 817
    const/16 v2, 0x33

    aput-object v4, v1, v2

    .line 818
    const/16 v2, 0x34

    aput-object v4, v1, v2

    .line 819
    const/16 v2, 0x35

    aput-object v4, v1, v2

    .line 820
    const/16 v2, 0x36

    aput-object v4, v1, v2

    .line 821
    const/16 v2, 0x37

    aput-object v4, v1, v2

    .line 822
    const/16 v2, 0x38

    aput-object v4, v1, v2

    .line 823
    const/16 v2, 0x39

    aput-object v4, v1, v2

    .line 824
    const/16 v2, 0x3a

    aput-object v4, v1, v2

    .line 825
    const/16 v2, 0x3b

    aput-object v4, v1, v2

    .line 826
    const/16 v2, 0x3c

    aput-object v4, v1, v2

    .line 827
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 828
    const/16 v2, 0x3e

    aput-object v4, v1, v2

    .line 830
    const/16 v2, 0x3f

    aput-object v4, v1, v2

    .line 831
    const/16 v2, 0x40

    aput-object v4, v1, v2

    .line 832
    const/16 v2, 0x41

    aput-object v4, v1, v2

    .line 833
    const/16 v2, 0x42

    aput-object v4, v1, v2

    .line 834
    const/16 v2, 0x43

    aput-object v4, v1, v2

    .line 835
    const/16 v2, 0x44

    aput-object v4, v1, v2

    .line 836
    const/16 v2, 0x45

    aput-object v4, v1, v2

    .line 837
    const/16 v2, 0x46

    aput-object v4, v1, v2

    .line 838
    const/16 v2, 0x47

    aput-object v4, v1, v2

    .line 839
    const/16 v2, 0x48

    aput-object v4, v1, v2

    .line 840
    const/16 v2, 0x49

    aput-object v4, v1, v2

    .line 841
    const/16 v2, 0x4a

    aput-object v4, v1, v2

    .line 842
    const/16 v2, 0x4b

    aput-object v4, v1, v2

    .line 843
    const/16 v2, 0x4c

    aput-object v4, v1, v2

    .line 765
    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 851
    new-array v1, v5, [Z

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 936
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 1020
    new-array v1, v5, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    .line 1104
    new-array v1, v5, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultCTAMode:[I

    .line 1186
    new-array v1, v5, [Z

    fill-array-data v1, :array_5

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    .line 1275
    new-array v1, v5, [Z

    fill-array-data v1, :array_6

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 1360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 1363
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sNameToOp:Ljava/util/HashMap;

    .line 1369
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 1372
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    if-eq v1, v5, :cond_0

    .line 1373
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1374
    const-string/jumbo v3, " should be "

    .line 1373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1376
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_1

    .line 1377
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1378
    const-string/jumbo v3, " should be "

    .line 1377
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1380
    :cond_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_2

    .line 1381
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1382
    const-string/jumbo v3, " should be "

    .line 1381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1384
    :cond_2
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_3

    .line 1385
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1386
    const-string/jumbo v3, " should be "

    .line 1385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1388
    :cond_3
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_4

    .line 1389
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1390
    const-string/jumbo v3, " should be "

    .line 1389
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1393
    :cond_4
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_5

    .line 1394
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1395
    const-string/jumbo v3, " should be "

    .line 1394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1397
    :cond_5
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_6

    .line 1398
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1399
    sget-object v3, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v3, v3

    .line 1398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1399
    const-string/jumbo v3, " should be "

    .line 1398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1402
    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_7

    .line 1403
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1404
    const-string/jumbo v3, " should be "

    .line 1403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1406
    :cond_7
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_8

    .line 1407
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1408
    const-string/jumbo v3, " should be "

    .line 1407
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1410
    :cond_8
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_9

    .line 1411
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1412
    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    .line 1411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1412
    const-string/jumbo v3, " should be "

    .line 1411
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1414
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_b

    .line 1415
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    .line 1416
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1419
    :cond_b
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_d

    .line 1420
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    .line 1421
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1424
    :cond_d
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_e

    .line 1425
    sget-object v1, Landroid/app/AppOpsManager;->sNameToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1424
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 50
    :cond_e
    return-void

    .line 419
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
    .end array-data

    .line 851
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 936
    nop

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    .line 1020
    :array_3
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x0
        0x3
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x1
        0x4
        0x0
        0x1
        0x0
        0x0
        0x1
    .end array-data

    .line 1104
    :array_4
    .array-data 4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x4
        0x0
        0x4
        0x4
        0x4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x0
        0x3
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x1
        0x4
        0x0
        0x1
        0x0
        0x0
        0x1
    .end array-data

    .line 1186
    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 1275
    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 75
    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1693
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 1694
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 1692
    return-void
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pId"    # I

    .prologue
    .line 2321
    if-nez p0, :cond_0

    .line 2322
    const-string/jumbo v7, ""

    return-object v7

    .line 2324
    :cond_0
    const-string/jumbo v4, ""

    .line 2326
    .local v4, "processName":Ljava/lang/String;
    const-string/jumbo v7, "activity"

    .line 2325
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2327
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 2328
    .local v5, "processesList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 2329
    :cond_1
    const-string/jumbo v7, ""

    return-object v7

    .line 2331
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 2333
    :try_start_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2335
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_4

    .line 2336
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 2337
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2338
    const-string/jumbo v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2339
    .local v6, "strings":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v4, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_3
    return-object v4

    .line 2343
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v1

    .line 2331
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2346
    :cond_5
    return-object v4
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 3
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 2164
    const-class v2, Landroid/app/AppOpsManager;

    monitor-enter v2

    .line 2165
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 2166
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 2169
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2173
    :goto_0
    :try_start_2
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 2164
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2170
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static insert([II)[I
    .locals 4
    .param p0, "arr"    # [I
    .param p1, "str"    # I

    .prologue
    const/4 v3, 0x0

    .line 2677
    array-length v0, p0

    .line 2678
    .local v0, "size":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 2679
    .local v1, "tmp":[I
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2680
    aput p1, v1, v0

    .line 2681
    return-object v1
.end method

.method private static insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "arr"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2668
    array-length v0, p0

    .line 2669
    .local v0, "size":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 2670
    .local v1, "tmp":[Ljava/lang/String;
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2671
    aput-object p1, v1, v0

    .line 2672
    return-object v1
.end method

.method public static isStrictEnable()Z
    .locals 2

    .prologue
    .line 2246
    const-string/jumbo v0, "persist.sys.strict_op_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStrictOp(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 2254
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1489
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1516
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 2703
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToDefaultMode(IZ)I
    .locals 1
    .param p0, "op"    # I
    .param p1, "isStrict"    # Z

    .prologue
    .line 1497
    if-eqz p1, :cond_0

    .line 1498
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    aget v0, v0, p0

    return v0

    .line 1499
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToDefaultMode(IZZ)I
    .locals 1
    .param p0, "op"    # I
    .param p1, "isStrict"    # Z
    .param p2, "isCTA"    # Z

    .prologue
    .line 1506
    if-eqz p2, :cond_0

    .line 1507
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultCTAMode:[I

    aget v0, v0, p0

    return v0

    .line 1508
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .prologue
    .line 1442
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "NONE"

    return-object v0

    .line 1443
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1463
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1471
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1434
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1788
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1789
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1790
    return-object v2

    .line 1792
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1479
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1480
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1451
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    return v0

    .line 1450
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1860
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1861
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1862
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1864
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringOpToOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 2271
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2272
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2273
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2275
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringToMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 2259
    const-string/jumbo v0, "allowed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    const/4 v0, 0x0

    return v0

    .line 2261
    :cond_0
    const-string/jumbo v0, "ignored"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2262
    const/4 v0, 0x1

    return v0

    .line 2263
    :cond_1
    const-string/jumbo v0, "ask"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2264
    const/4 v0, 0x4

    return v0

    .line 2266
    :cond_2
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2051
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 2052
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2053
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 2058
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 2055
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2068
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2069
    :catch_0
    move-exception v0

    .line 2071
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2005
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    .line 2006
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2007
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 2012
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 2009
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1884
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2022
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2023
    :catch_0
    move-exception v0

    .line 2025
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1892
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2036
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2037
    new-instance v1, Ljava/lang/SecurityException;

    .line 2038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2037
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Unable to verify package ownership"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2034
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2240
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2239
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2233
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2231
    :goto_0
    return-void

    .line 2234
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1983
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1982
    return-void
.end method

.method public getAllowAutoBootList()Ljava/util/List;
    .locals 10
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
    const/16 v9, 0x46

    const/4 v8, 0x1

    .line 2294
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2295
    .local v5, "packagenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v6, v8, [I

    const/4 v7, 0x0

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 2296
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_1

    .line 2297
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$PackageOps;

    .line 2298
    .local v0, "item":Landroid/app/AppOpsManager$PackageOps;
    invoke-static {v0}, Landroid/app/AppOpsManager$PackageOps;->-get1(Landroid/app/AppOpsManager$PackageOps;)I

    move-result v6

    invoke-static {v0}, Landroid/app/AppOpsManager$PackageOps;->-get0(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v9, v6, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 2299
    .local v3, "mode":I
    if-eq v3, v8, :cond_0

    .line 2300
    invoke-static {v0}, Landroid/app/AppOpsManager$PackageOps;->-get0(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v4

    .line 2301
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2305
    .end local v0    # "item":Landroid/app/AppOpsManager$PackageOps;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v3    # "mode":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1721
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1722
    :catch_0
    move-exception v0

    .line 1724
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1705
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1706
    :catch_0
    move-exception v0

    .line 1708
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPermissionInstllResult([Ljava/lang/String;ILjava/lang/String;)Landroid/app/AppOpsManager$PermissionInstallResult;
    .locals 9
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2354
    new-instance v1, Landroid/app/AppOpsManager$PermissionInstallResult;

    invoke-direct {v1, p0}, Landroid/app/AppOpsManager$PermissionInstallResult;-><init>(Landroid/app/AppOpsManager;)V

    .line 2355
    .local v1, "result":Landroid/app/AppOpsManager$PermissionInstallResult;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2356
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/app/AppOpsUtils;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p2, p3}, Landroid/app/AppOpsUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 2357
    .local v3, "utils":Landroid/app/AppOpsUtils;
    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_21

    aget-object v0, p1, v4

    .line 2358
    .local v0, "perm":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Landroid/app/AppOpsUtils;->APPOPS_FEATURE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2360
    const-string/jumbo v6, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2361
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2362
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2363
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.CALL_PHONE"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2364
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2365
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2456
    :cond_0
    :goto_1
    const-string/jumbo v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2457
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 2458
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2459
    iget-object v6, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2462
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2357
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2368
    :cond_2
    const-string/jumbo v6, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2369
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2370
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2371
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.READ_CONTACTS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2372
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2374
    :cond_3
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.READ_CONTACTS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto :goto_1

    .line 2376
    :cond_4
    const-string/jumbo v6, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2377
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2378
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2379
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.WRITE_CONTACTS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2380
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2382
    :cond_5
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.WRITE_CONTACTS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2384
    :cond_6
    const-string/jumbo v6, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2385
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2386
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2387
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.READ_CALL_LOG"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2388
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2390
    :cond_7
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.READ_CALL_LOG"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2392
    :cond_8
    const-string/jumbo v6, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2393
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 2394
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2395
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.WRITE_CALL_LOG"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2396
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2398
    :cond_9
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.WRITE_CALL_LOG"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2402
    :cond_a
    const-string/jumbo v6, "android.permission.READ_SMS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2403
    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2404
    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2405
    iget-object v6, v3, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.READ_SMS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2406
    iget-object v6, v3, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.READ_SMS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2407
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2408
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2410
    :cond_b
    iget-object v6, v3, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.READ_SMS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2411
    iget-object v6, v3, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.READ_SMS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2426
    :cond_c
    const-string/jumbo v6, "android.permission.SEND_SMS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2427
    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2428
    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2429
    iget-object v6, v3, Landroid/app/AppOpsUtils;->SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.SEND_SMS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2430
    iget-object v6, v3, Landroid/app/AppOpsUtils;->SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.SEND_SMS"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2431
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2432
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2436
    :cond_d
    const-string/jumbo v6, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2437
    :cond_e
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2438
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2439
    iget-object v6, v3, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2440
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2442
    :cond_f
    iget-object v6, v3, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2444
    :cond_10
    const-string/jumbo v6, "android.permission.READ_SMS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string/jumbo v6, "android.permission.SEND_SMS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2445
    :cond_11
    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 2446
    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2447
    iget-object v6, v3, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2448
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2450
    :cond_12
    iget-object v6, v3, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2464
    :cond_13
    iget-object v6, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_2

    .line 2467
    :cond_14
    const-string/jumbo v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2468
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 2469
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2470
    iget-object v6, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2473
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2475
    :cond_15
    iget-object v6, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_2

    .line 2479
    :cond_16
    const-string/jumbo v6, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2480
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 2481
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2482
    iget-object v6, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2485
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2487
    :cond_17
    iget-object v6, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_2

    .line 2521
    :cond_18
    const-string/jumbo v6, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2522
    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2523
    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2524
    iget-object v6, v3, Landroid/app/AppOpsUtils;->WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2526
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2529
    :cond_19
    const-string/jumbo v6, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2530
    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2531
    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2532
    iget-object v6, v3, Landroid/app/AppOpsUtils;->BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.BLUETOOTH"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2534
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2537
    :cond_1a
    const-string/jumbo v6, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2538
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2539
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2540
    iget-object v6, v3, Landroid/app/AppOpsUtils;->DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.CHANGE_NETWORK_STATE"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2542
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2545
    :cond_1b
    const-string/jumbo v6, "android.permission.NFC"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2546
    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2547
    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2548
    iget-object v6, v3, Landroid/app/AppOpsUtils;->NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.NFC"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2550
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2609
    :cond_1c
    const-string/jumbo v6, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 2610
    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2611
    const/16 v6, 0x15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2612
    iget-object v6, v3, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2614
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2621
    :cond_1d
    const-string/jumbo v6, "android.permission.CAMERA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2622
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2623
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2624
    iget-object v6, v3, Landroid/app/AppOpsUtils;->CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.CAMERA"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2626
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2628
    :cond_1e
    const-string/jumbo v6, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 2629
    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2630
    const/16 v6, 0xb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2631
    iget-object v6, v3, Landroid/app/AppOpsUtils;->RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.RECORD_AUDIO"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2633
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2640
    :cond_1f
    const-string/jumbo v6, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 2641
    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2642
    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2643
    iget-object v6, v3, Landroid/app/AppOpsUtils;->AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v7, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string/jumbo v8, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static {v7, v8}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2645
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v7, v3, Landroid/app/AppOpsUtils;->AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2658
    :cond_20
    iget-object v6, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->noPassPerms:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2662
    .end local v0    # "perm":Ljava/lang/String;
    :cond_21
    iget-object v4, v1, Landroid/app/AppOpsManager$PermissionInstallResult;->customPermsItems:Ljava/util/List;

    iget-object v5, v3, Landroid/app/AppOpsUtils;->BG_APP_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2665
    return-object v1
.end method

.method public getTrustBgAppList()Ljava/util/List;
    .locals 15
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
    const/16 v14, 0x7d0

    const/16 v13, 0x4c

    const/4 v10, 0x0

    .line 2712
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2713
    .local v6, "packagenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    new-array v9, v9, [I

    aput v13, v9, v10

    invoke-virtual {p0, v9}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    .line 2714
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2742
    :cond_0
    return-object v6

    .line 2715
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 2716
    .local v3, "item":Landroid/app/AppOpsManager$PackageOps;
    invoke-static {v3}, Landroid/app/AppOpsManager$PackageOps;->-get0(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "com.android.cts"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2717
    invoke-static {v3}, Landroid/app/AppOpsManager$PackageOps;->-get0(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "com.google.android.xts"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 2716
    if-eqz v9, :cond_4

    .line 2718
    :cond_3
    invoke-static {v3}, Landroid/app/AppOpsManager$PackageOps;->-get0(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2720
    :cond_4
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 2721
    .local v2, "entry":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 2722
    .local v0, "e":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-ne v13, v9, :cond_5

    .line 2723
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v9

    if-nez v9, :cond_5

    .line 2724
    invoke-static {v3}, Landroid/app/AppOpsManager$PackageOps;->-get1(Landroid/app/AppOpsManager$PackageOps;)I

    move-result v9

    if-ne v9, v14, :cond_7

    .line 2725
    iget-object v9, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 2726
    .local v7, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 2727
    array-length v11, v7

    move v9, v10

    :goto_1
    if-ge v9, v11, :cond_2

    aget-object v8, v7, v9

    .line 2728
    .local v8, "pkg":Ljava/lang/String;
    const-string/jumbo v12, "com.android.shell"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 2729
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2727
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2734
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_7
    invoke-static {v3}, Landroid/app/AppOpsManager$PackageOps;->-get0(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 3
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2280
    const/4 v1, 0x1

    .line 2282
    .local v1, "isShow":Z
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IAppOpsService;->isControlAllowed(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2285
    .end local v1    # "isShow":Z
    :goto_0
    return v1

    .line 2283
    .restart local v1    # "isShow":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2159
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2091
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    .line 2092
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2093
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2096
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 2095
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1910
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpForBinder(I)I
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 2312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2151
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2152
    :catch_0
    move-exception v0

    .line 2154
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1918
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 2120
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    .line 2121
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2122
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2123
    const-string/jumbo v3, " from uid "

    .line 2122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2123
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 2122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2123
    const-string/jumbo v3, " or calling package "

    .line 2122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2124
    const-string/jumbo v3, " from uid "

    .line 2122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2125
    const-string/jumbo v3, " not allowed to perform "

    .line 2122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2125
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 2122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2127
    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1937
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 2137
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2137
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2139
    :catch_0
    move-exception v0

    .line 2141
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1945
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .locals 4

    .prologue
    .line 1774
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    :goto_0
    return-void

    .line 1775
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1738
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMode(Landroid/app/AppOpsUtils$AppOpsItem;ILjava/lang/String;I)V
    .locals 4
    .param p1, "item"    # Landroid/app/AppOpsUtils$AppOpsItem;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1746
    iget-object v2, p1, Landroid/app/AppOpsUtils$AppOpsItem;->ops:[I

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 1747
    .local v0, "code":I
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1746
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1745
    .end local v0    # "code":I
    :cond_0
    return-void
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1765
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1766
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 1767
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1730
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    :goto_0
    return-void

    .line 1731
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2221
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2196
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v1

    .line 2197
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2198
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2201
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 2203
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 2200
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1965
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2213
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2214
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1973
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1814
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1815
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 1816
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 1817
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1827
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 1813
    return-void

    .line 1814
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1831
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1803
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1802
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1841
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1842
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 1845
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 1840
    return-void

    .line 1841
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1846
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hook_noteOp(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public hook_noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1, p3, p2, v0}, Lmeizu/security/FlymePermissionManager;->isGranted(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
