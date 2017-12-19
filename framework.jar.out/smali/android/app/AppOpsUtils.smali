.class public Landroid/app/AppOpsUtils;
.super Ljava/lang/Object;
.source "AppOpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsUtils$AppOpsItem;
    }
.end annotation


# static fields
.field public static APPOPS_FEATURE:Ljava/lang/String; = null

.field public static final CTA_SYSTEM_BLACK_APPS:[Ljava/lang/String;

.field public static final GROUP_TYPE_EIGHT:I = 0x8

.field public static final GROUP_TYPE_FIFTH:I = 0x5

.field public static final GROUP_TYPE_FIRST:I = 0x1

.field public static final GROUP_TYPE_FOURTH:I = 0x4

.field public static final GROUP_TYPE_SECOND:I = 0x2

.field public static final GROUP_TYPE_SEVENTH:I = 0x7

.field public static final GROUP_TYPE_SIXTH:I = 0x6

.field public static final GROUP_TYPE_THIRD:I = 0x3

.field public static final GROUP_TYPE_ZERO:I = 0x0

.field public static final ORDER_TYPE_EIGHTH:I = 0x8

.field public static final ORDER_TYPE_FIFTH:I = 0x5

.field public static final ORDER_TYPE_FIRST:I = 0x1

.field public static final ORDER_TYPE_FOURTH:I = 0x4

.field public static final ORDER_TYPE_SECOND:I = 0x2

.field public static final ORDER_TYPE_SEVENTH:I = 0x7

.field public static final ORDER_TYPE_SIXTH:I = 0x6

.field public static final ORDER_TYPE_THIRD:I = 0x3

.field public static final SYSTEM_BLACK_APPS:[Ljava/lang/String;

.field public static final SYSTEM_WHITE_APPS:[Ljava/lang/String;

.field public static final TYPE_ACCESS_NOTIFICATION:I = 0x9

.field public static TYPE_ACCESS_NOTIFICATION_OPS:[I = null

.field public static TYPE_ACCESS_NOTIFICATION_PERMS:[Ljava/lang/String; = null

.field public static TYPE_ALL_PHONE_OPS:[I = null

.field public static TYPE_ALL_SMS_OPS:[I = null

.field public static final TYPE_AUTOBOOT:I = 0xf

.field public static final TYPE_CALENDAR:I = 0x3

.field public static TYPE_CALENDAR_OPS:[I = null

.field public static TYPE_CALENDAR_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CALL_LOG:I = 0x2

.field public static TYPE_CALL_LOG_OPS:[I = null

.field public static TYPE_CALL_LOG_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CALL_PHONE:I = 0x4

.field public static TYPE_CALL_PHONE_OPS:[I = null

.field public static TYPE_CALL_PHONE_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CAMERA:I = 0xa

.field public static TYPE_CAMERA_OPS:[I = null

.field public static TYPE_CAMERA_PERMS:[Ljava/lang/String; = null

.field public static TYPE_CHANGE_BLUETOOTH_OPS:[I = null

.field public static TYPE_CHANGE_BLUETOOTH_PERMS:[Ljava/lang/String; = null

.field public static TYPE_CHANGE_DATACONNECT_OPS:[I = null

.field public static TYPE_CHANGE_DATACONNECT_PERMS:[Ljava/lang/String; = null

.field public static TYPE_CHANGE_WIFI_OPS:[I = null

.field public static TYPE_CHANGE_WIFI_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CLIPBOARD:I = 0x14

.field public static TYPE_CLIPBOARD_OPS:[I = null

.field public static TYPE_CLIPBOARD_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CONTACT_LOG:I = 0x1

.field public static TYPE_CONTACT_LOG_OPS:[I = null

.field public static TYPE_CONTACT_LOG_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_LOCATION:I = 0x0

.field public static TYPE_LOCATION_OPS:[I = null

.field public static TYPE_LOCATION_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_MMS_LOG:I = 0x13

.field public static TYPE_MMS_LOG_OPS:[I = null

.field public static TYPE_MMS_LOG_PERMS:[Ljava/lang/String; = null

.field public static TYPE_NFC_OPS:[I = null

.field public static TYPE_NFC_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_PHONE_INFO:I = 0x11

.field public static TYPE_PHONE_INFO_OPS:[I = null

.field public static TYPE_PHONE_INFO_PERMS:[Ljava/lang/String; = null

.field public static TYPE_RECEIVE_BOOT_COMPLETED_OPS:[I = null

.field public static TYPE_RECEIVE_BOOT_COMPLETED_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_RECEIVE_SMS:I = 0x6

.field public static TYPE_RECEIVE_SMS_OPS:[I = null

.field public static TYPE_RECEIVE_SMS_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_RECORD_AUDIO:I = 0xb

.field public static TYPE_RECORD_AUDIO_OPS:[I = null

.field public static TYPE_RECORD_AUDIO_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_SEND_MMS:I = 0x12

.field public static TYPE_SEND_MMS_OPS:[I = null

.field public static TYPE_SEND_MMS_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_SEND_SMS:I = 0x7

.field public static TYPE_SEND_SMS_OPS:[I = null

.field public static TYPE_SEND_SMS_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_SMS_LOG:I = 0x5

.field public static TYPE_SMS_LOG_OPS:[I = null

.field public static TYPE_SMS_LOG_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_SYSTEM_ALERT_WINDOW:I = 0x15

.field public static TYPE_SYSTEM_ALERT_WINDOW_OPS:[I = null

.field public static TYPE_SYSTEM_ALERT_WINDOW_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_THREE_WAY_CALLING:I = 0x16

.field public static TYPE_THREE_WAY_CALLING_OPS:[I = null

.field public static final TYPE_TURN_ONOFF_BLUETOOTH:I = 0xd

.field public static final TYPE_TURN_ONOFF_DATACONNECT:I = 0xe

.field public static final TYPE_TURN_ONOFF_NFC:I = 0x10

.field public static final TYPE_TURN_ONOFF_WIFI:I = 0xc

.field public static final TYPE_WRITE_SETTINGS:I = 0x8

.field public static TYPE_WRITE_SETTINGS_OPS:[I

.field public static TYPE_WRITE_SETTINGS_PERMS:[Ljava/lang/String;


# instance fields
.field public ACCESS_NOTIFICATION_GORUP_DESC:Ljava/lang/String;

.field public ACCESS_NOTIFICATION_GROUP_NAME:Ljava/lang/String;

.field public ACCESS_NOTIFICATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public AUTOBOOT_GROUP_DESC:Ljava/lang/String;

.field public AUTOBOOT_GROUP_NAME:Ljava/lang/String;

.field public AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public BG_APP_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public BLUETOOTH_GROUP_DESC:Ljava/lang/String;

.field public BLUETOOTH_GROUP_NAME:Ljava/lang/String;

.field public BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CALENDAR_GROUP_DESC:Ljava/lang/String;

.field public CALENDAR_GROUP_NAME:Ljava/lang/String;

.field public CALENDAR_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CALL_LOG_GROUP_DESC:Ljava/lang/String;

.field public CALL_LOG_GROUP_NAME:Ljava/lang/String;

.field public CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CALL_PHONE_GROUP_DESC:Ljava/lang/String;

.field public CALL_PHONE_GROUP_NAME:Ljava/lang/String;

.field public CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CAMERA_GROUP_DESC:Ljava/lang/String;

.field public CAMERA_GROUP_NAME:Ljava/lang/String;

.field public CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CLIPBOARD_GROUP_DESC:Ljava/lang/String;

.field public CLIPBOARD_GROUP_NAME:Ljava/lang/String;

.field public CONTACT_LOG_GROUP_DESC:Ljava/lang/String;

.field public CONTACT_LOG_GROUP_NAME:Ljava/lang/String;

.field public CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public DATACONNECT_GROUP_DESC:Ljava/lang/String;

.field public DATACONNECT_GROUP_NAME:Ljava/lang/String;

.field public DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public LOCATION_GROUP_DESC:Ljava/lang/String;

.field public LOCATION_GROUP_NAME:Ljava/lang/String;

.field public LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public MMS_LOG_GROUP_DESC:Ljava/lang/String;

.field public MMS_LOG_GROUP_NAME:Ljava/lang/String;

.field public MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public NFC_GROUP_DESC:Ljava/lang/String;

.field public NFC_GROUP_NAME:Ljava/lang/String;

.field public NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public PHONE_INFO_GROUP_DESC:Ljava/lang/String;

.field public PHONE_INFO_GROUP_NAME:Ljava/lang/String;

.field public PHONE_INFO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public RECEIVE_SMS_GROUP_DESC:Ljava/lang/String;

.field public RECEIVE_SMS_GROUP_NAME:Ljava/lang/String;

.field public RECEIVE_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public RECORD_AUDIO_GROUP_DESC:Ljava/lang/String;

.field public RECORD_AUDIO_GROUP_NAME:Ljava/lang/String;

.field public RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public SEND_MMS_GROUP_DESC:Ljava/lang/String;

.field public SEND_MMS_GROUP_NAME:Ljava/lang/String;

.field public SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public SEND_SMS_GROUP_DESC:Ljava/lang/String;

.field public SEND_SMS_GROUP_NAME:Ljava/lang/String;

.field public SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public SMS_LOG_GROUP_DESC:Ljava/lang/String;

.field public SMS_LOG_GROUP_NAME:Ljava/lang/String;

.field public SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public SYSTEM_ALERT_WINDOW_GROUP_DESC:Ljava/lang/String;

.field public SYSTEM_ALERT_WINDOW_GROUP_NAME:Ljava/lang/String;

.field public SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public THREE_WAY_CALLING_GROUP_DESC:Ljava/lang/String;

.field public THREE_WAY_CALLING_GROUP_NAME:Ljava/lang/String;

.field public THREE_WAY_CALLING_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public WIFI_GROUP_DESC:Ljava/lang/String;

.field public WIFI_GROUP_NAME:Ljava/lang/String;

.field public WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public WRITE_SETTINGS_GROUP_DESC:Ljava/lang/String;

.field public WRITE_SETTINGS_GROUP_NAME:Ljava/lang/String;

.field public WRITE_SETTINGS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public aom:Landroid/app/AppOpsManager;

.field public isFirst:Z

.field private mContext:Landroid/content/Context;

.field public packageName:Ljava/lang/String;

.field pm:Landroid/content/pm/PackageManager;

.field res:Landroid/content/res/Resources;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 17
    const-string/jumbo v0, "com.letv.leui.safe_show_phone_and_sms_permisson_detail"

    sput-object v0, Landroid/app/AppOpsUtils;->APPOPS_FEATURE:Ljava/lang/String;

    .line 123
    new-array v0, v5, [Ljava/lang/String;

    .line 124
    const-string/jumbo v1, "sina.mobile.tianqitongletv"

    aput-object v1, v0, v4

    .line 123
    sput-object v0, Landroid/app/AppOpsUtils;->SYSTEM_WHITE_APPS:[Ljava/lang/String;

    .line 130
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 131
    const-string/jumbo v1, "cn.wps.moffice_eng"

    aput-object v1, v0, v4

    .line 132
    const-string/jumbo v1, "com.letv.letvshop"

    aput-object v1, v0, v5

    .line 133
    const-string/jumbo v1, "com.baidu.BaiduMap"

    aput-object v1, v0, v6

    .line 135
    const-string/jumbo v1, "com.letv.android.account"

    aput-object v1, v0, v8

    .line 136
    const-string/jumbo v1, "com.baidu.input_letv"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "com.letv.android.client"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "com.sina.weibo"

    aput-object v1, v0, v7

    .line 139
    const-string/jumbo v1, "com.letv.lesophoneclient"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "com.lesports.glivesports"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "com.letv.games"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "com.letv.android.letvlive"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 130
    sput-object v0, Landroid/app/AppOpsUtils;->SYSTEM_BLACK_APPS:[Ljava/lang/String;

    .line 146
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    .line 147
    const-string/jumbo v1, "com.baidu.input_letv"

    aput-object v1, v0, v4

    .line 148
    const-string/jumbo v1, "com.letv.android.sports"

    aput-object v1, v0, v5

    .line 149
    const-string/jumbo v1, "com.sina.weibo"

    aput-object v1, v0, v6

    .line 151
    const-string/jumbo v1, "com.letv.app.appstore"

    aput-object v1, v0, v8

    .line 152
    const-string/jumbo v1, "com.letv.android.wallpaperonline"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "com.letv.android.voiceassistant"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "com.baidu.android.speechengine"

    aput-object v1, v0, v7

    .line 155
    const-string/jumbo v1, "com.letv.letvshop"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "cn.wps.moffice_eng"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "com.letv.android.weather"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "com.letv.android.ota"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "com.mtk.telephony"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "com.mediatek.mtklogger"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "com.letv.android.account"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "com.letv.tracker"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "com.letv.android.LetvShareProvider"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "com.letv.android.note"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "com.mediatek.voiceextension"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "com.mediatek.apst.target"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "com.mediatek.engineermode"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "com.letv.android.recorder"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "com.letv.android.remotecontrol"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "com.letv.android.setupwizard"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "com.letv.android.filemanager"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "com.mediatek.dataprotection"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "com.mediatek.schpwronoff"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "com.letv.android.wallpaper"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "com.letv.android.cloudservice"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "com.letv.android.push"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "com.letv.bsp.crashhandler"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "com.mediatek.mco"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "com.mediatek.calendarimporter"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 180
    const-string/jumbo v1, "com.mediatek.batterywarning"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 181
    const-string/jumbo v1, "com.letv.android.bugreporter"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "com.mediatek.floatmenu"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "com.letv.android.voiceassistant"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "com.letv.android.theme"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "com.mediatek.thermalmanager"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "com.mediatek.connectivity"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "com.android.calendar"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "com.android.contacts"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 146
    sput-object v0, Landroid/app/AppOpsUtils;->CTA_SYSTEM_BLACK_APPS:[Ljava/lang/String;

    .line 283
    new-array v0, v8, [Ljava/lang/String;

    .line 284
    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    .line 285
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v5

    .line 286
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v6

    .line 283
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_LOCATION_PERMS:[Ljava/lang/String;

    .line 289
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_LOCATION_OPS:[I

    .line 299
    new-array v0, v6, [Ljava/lang/String;

    .line 300
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v4

    .line 301
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v5

    .line 299
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CONTACT_LOG_PERMS:[Ljava/lang/String;

    .line 305
    const/4 v0, 0x4

    .line 306
    const/4 v1, 0x5

    .line 304
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CONTACT_LOG_OPS:[I

    .line 309
    new-array v0, v6, [Ljava/lang/String;

    .line 310
    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v4

    .line 311
    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    aput-object v1, v0, v5

    .line 309
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALL_LOG_PERMS:[Ljava/lang/String;

    .line 316
    const/4 v0, 0x7

    .line 314
    filled-new-array {v7, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALL_LOG_OPS:[I

    .line 319
    new-array v0, v6, [Ljava/lang/String;

    .line 320
    const-string/jumbo v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v4

    .line 321
    const-string/jumbo v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v5

    .line 319
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALENDAR_PERMS:[Ljava/lang/String;

    .line 325
    const/16 v0, 0x8

    .line 326
    const/16 v1, 0x9

    .line 324
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALENDAR_OPS:[I

    .line 329
    new-array v0, v5, [Ljava/lang/String;

    .line 330
    const-string/jumbo v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v4

    .line 329
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALL_PHONE_PERMS:[Ljava/lang/String;

    .line 333
    new-array v0, v5, [I

    .line 334
    const/16 v1, 0xd

    aput v1, v0, v4

    .line 333
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALL_PHONE_OPS:[I

    .line 337
    new-array v0, v6, [Ljava/lang/String;

    .line 338
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    .line 339
    const-string/jumbo v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v5

    .line 337
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SMS_LOG_PERMS:[Ljava/lang/String;

    .line 343
    const/16 v0, 0xe

    .line 344
    const/16 v1, 0x15

    .line 345
    const/16 v2, 0xf

    .line 346
    const/16 v3, 0x16

    .line 342
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SMS_LOG_OPS:[I

    .line 349
    new-array v0, v6, [Ljava/lang/String;

    .line 350
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    .line 351
    const-string/jumbo v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v5

    .line 349
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_MMS_LOG_PERMS:[Ljava/lang/String;

    .line 354
    const/16 v0, 0x44

    .line 355
    const/16 v1, 0x45

    .line 353
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_MMS_LOG_OPS:[I

    .line 358
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 359
    const-string/jumbo v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v4

    .line 360
    const-string/jumbo v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v1, v0, v5

    .line 361
    const-string/jumbo v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v0, v6

    .line 362
    const-string/jumbo v1, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v1, v0, v8

    .line 358
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_SMS_PERMS:[Ljava/lang/String;

    .line 366
    const/16 v0, 0x10

    .line 367
    const/16 v1, 0x11

    .line 368
    const/16 v2, 0x12

    .line 369
    const/16 v3, 0x13

    .line 365
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_SMS_OPS:[I

    .line 372
    new-array v0, v5, [Ljava/lang/String;

    .line 373
    const-string/jumbo v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v4

    .line 372
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SEND_SMS_PERMS:[Ljava/lang/String;

    .line 376
    new-array v0, v5, [I

    .line 377
    const/16 v1, 0x14

    aput v1, v0, v4

    .line 376
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SEND_SMS_OPS:[I

    .line 380
    new-array v0, v5, [Ljava/lang/String;

    .line 381
    const-string/jumbo v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v4

    .line 380
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SEND_MMS_PERMS:[Ljava/lang/String;

    .line 384
    new-array v0, v5, [I

    .line 385
    const/16 v1, 0x43

    aput v1, v0, v4

    .line 384
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SEND_MMS_OPS:[I

    .line 388
    new-array v0, v5, [Ljava/lang/String;

    .line 389
    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    aput-object v1, v0, v4

    .line 388
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_WRITE_SETTINGS_PERMS:[Ljava/lang/String;

    .line 392
    new-array v0, v5, [I

    .line 393
    const/16 v1, 0x17

    aput v1, v0, v4

    .line 392
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_WRITE_SETTINGS_OPS:[I

    .line 396
    new-array v0, v5, [Ljava/lang/String;

    .line 397
    const-string/jumbo v1, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v1, v0, v4

    .line 396
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_ACCESS_NOTIFICATION_PERMS:[Ljava/lang/String;

    .line 400
    new-array v0, v5, [I

    .line 401
    const/16 v1, 0x19

    aput v1, v0, v4

    .line 400
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_ACCESS_NOTIFICATION_OPS:[I

    .line 404
    new-array v0, v5, [Ljava/lang/String;

    .line 405
    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v4

    .line 404
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CAMERA_PERMS:[Ljava/lang/String;

    .line 408
    new-array v0, v5, [I

    .line 409
    const/16 v1, 0x1a

    aput v1, v0, v4

    .line 408
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CAMERA_OPS:[I

    .line 412
    new-array v0, v5, [Ljava/lang/String;

    .line 413
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v4

    .line 412
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECORD_AUDIO_PERMS:[Ljava/lang/String;

    .line 416
    new-array v0, v5, [I

    .line 417
    const/16 v1, 0x1b

    aput v1, v0, v4

    .line 416
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECORD_AUDIO_OPS:[I

    .line 420
    new-array v0, v5, [Ljava/lang/String;

    .line 421
    const-string/jumbo v1, "android.permission.CHANGE_WIFI_STATE"

    aput-object v1, v0, v4

    .line 420
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_WIFI_PERMS:[Ljava/lang/String;

    .line 424
    new-array v0, v5, [I

    .line 425
    const/16 v1, 0x3f

    aput v1, v0, v4

    .line 424
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_WIFI_OPS:[I

    .line 428
    new-array v0, v5, [Ljava/lang/String;

    .line 429
    const-string/jumbo v1, "android.permission.BLUETOOTH"

    aput-object v1, v0, v4

    .line 428
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_BLUETOOTH_PERMS:[Ljava/lang/String;

    .line 432
    new-array v0, v5, [I

    .line 433
    const/16 v1, 0x40

    aput v1, v0, v4

    .line 432
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_BLUETOOTH_OPS:[I

    .line 436
    new-array v0, v5, [Ljava/lang/String;

    .line 437
    const-string/jumbo v1, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v1, v0, v4

    .line 436
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_DATACONNECT_PERMS:[Ljava/lang/String;

    .line 440
    new-array v0, v5, [I

    .line 441
    const/16 v1, 0x41

    aput v1, v0, v4

    .line 440
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_DATACONNECT_OPS:[I

    .line 444
    new-array v0, v5, [Ljava/lang/String;

    .line 445
    const-string/jumbo v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v1, v0, v4

    .line 444
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_BOOT_COMPLETED_PERMS:[Ljava/lang/String;

    .line 448
    new-array v0, v5, [I

    .line 449
    const/16 v1, 0x46

    aput v1, v0, v4

    .line 448
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_BOOT_COMPLETED_OPS:[I

    .line 452
    new-array v0, v5, [Ljava/lang/String;

    .line 453
    const-string/jumbo v1, "android.permission.NFC"

    aput-object v1, v0, v4

    .line 452
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_NFC_PERMS:[Ljava/lang/String;

    .line 456
    new-array v0, v5, [I

    .line 457
    const/16 v1, 0x47

    aput v1, v0, v4

    .line 456
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_NFC_OPS:[I

    .line 460
    new-array v0, v5, [Ljava/lang/String;

    .line 461
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v4

    .line 460
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_PHONE_INFO_PERMS:[Ljava/lang/String;

    .line 464
    new-array v0, v5, [I

    .line 465
    const/16 v1, 0x33

    aput v1, v0, v4

    .line 464
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_PHONE_INFO_OPS:[I

    .line 468
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CLIPBOARD_PERMS:[Ljava/lang/String;

    .line 472
    const/16 v0, 0x1d

    .line 473
    const/16 v1, 0x1e

    .line 471
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CLIPBOARD_OPS:[I

    .line 476
    new-array v0, v5, [Ljava/lang/String;

    .line 477
    const-string/jumbo v1, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v1, v0, v4

    .line 476
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SYSTEM_ALERT_WINDOW_PERMS:[Ljava/lang/String;

    .line 480
    new-array v0, v5, [I

    .line 481
    const/16 v1, 0x18

    aput v1, v0, v4

    .line 480
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SYSTEM_ALERT_WINDOW_OPS:[I

    .line 484
    new-array v0, v5, [I

    .line 485
    const/16 v1, 0x4a

    aput v1, v0, v4

    .line 484
    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_THREE_WAY_CALLING_OPS:[I

    .line 487
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_ALL_PHONE_OPS:[I

    .line 490
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_ALL_SMS_OPS:[I

    .line 15
    return-void

    .line 289
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    .line 487
    :array_1
    .array-data 4
        0xd
        0x4a
        0x4
        0x5
        0x6
        0x7
    .end array-data

    .line 490
    :array_2
    .array-data 4
        0x14
        0x43
        0xe
        0xf
        0x44
        0x45
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 24
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/AppOpsUtils;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    .line 27
    const-string/jumbo v2, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->aom:Landroid/app/AppOpsManager;

    .line 28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->pm:Landroid/content/pm/PackageManager;

    .line 29
    if-gez p2, :cond_0

    .line 30
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/app/AppOpsUtils;->isFirst:Z

    .line 34
    :goto_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/app/AppOpsUtils;->uid:I

    .line 35
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/AppOpsUtils;->packageName:Ljava/lang/String;

    .line 36
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040672

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 37
    .local v17, "communicate_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040673

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 38
    .local v19, "internet_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040674

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 39
    .local v20, "media_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040675

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 40
    .local v23, "tool_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040676

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 41
    .local v18, "device_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040677

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 42
    .local v22, "system_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040678

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 43
    .local v21, "other_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040679

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "privacy_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104067a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->LOCATION_GROUP_NAME:Ljava/lang/String;

    .line 45
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104067b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->LOCATION_GROUP_DESC:Ljava/lang/String;

    .line 46
    new-instance v2, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/AppOpsUtils;->LOCATION_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/AppOpsUtils;->LOCATION_GROUP_DESC:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v9, v3, [Ljava/lang/String;

    sget-object v10, Landroid/app/AppOpsUtils;->TYPE_LOCATION_OPS:[I

    const/4 v3, 0x7

    new-array v12, v3, [Ljava/lang/String;

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v12, v4

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x1

    aput-object v3, v12, v4

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x2

    aput-object v3, v12, v4

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    const/4 v4, 0x3

    aput-object v3, v12, v4

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    const/4 v4, 0x4

    aput-object v3, v12, v4

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x29

    aget-object v3, v3, v4

    const/4 v4, 0x5

    aput-object v3, v12, v4

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x2a

    aget-object v3, v3, v4

    const/4 v4, 0x6

    aput-object v3, v12, v4

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104067c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_GROUP_NAME:Ljava/lang/String;

    .line 48
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104067d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_GROUP_DESC:Ljava/lang/String;

    .line 49
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CONTACT_LOG_OPS:[I

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x3

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104067e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALL_LOG_GROUP_NAME:Ljava/lang/String;

    .line 51
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104067f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALL_LOG_GROUP_DESC:Ljava/lang/String;

    .line 52
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CALL_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CALL_LOG_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CALL_LOG_OPS:[I

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040680

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALENDAR_GROUP_NAME:Ljava/lang/String;

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040681

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALENDAR_GROUP_DESC:Ljava/lang/String;

    .line 55
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CALENDAR_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CALENDAR_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CALENDAR_OPS:[I

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput-object v2, v16, v3

    const/4 v8, 0x4

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v23

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CALENDAR_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040682

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_NAME:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040683

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_DESC:Ljava/lang/String;

    .line 58
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CALL_PHONE_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 59
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_ALL_PHONE_OPS:[I

    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v2, v2, v3

    const/4 v3, 0x5

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 60
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040684

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SMS_LOG_GROUP_NAME:Ljava/lang/String;

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040685

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SMS_LOG_GROUP_DESC:Ljava/lang/String;

    .line 62
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SMS_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SMS_LOG_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_SMS_LOG_OPS:[I

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x5

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040686

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->MMS_LOG_GROUP_NAME:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040687

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->MMS_LOG_GROUP_DESC:Ljava/lang/String;

    .line 65
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->MMS_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->MMS_LOG_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_MMS_LOG_OPS:[I

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x7

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 66
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040688

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_GROUP_NAME:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040689

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_GROUP_DESC:Ljava/lang/String;

    .line 68
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_SMS_OPS:[I

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/16 v10, 0x8

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104068a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_NAME:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104068b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_DESC:Ljava/lang/String;

    .line 71
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_SEND_SMS_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x4

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 72
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_ALL_SMS_OPS:[I

    const/16 v2, 0xa

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    const/4 v3, 0x2

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    const/4 v3, 0x3

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    const/4 v3, 0x4

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    const/4 v3, 0x5

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    const/4 v3, 0x6

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    const/4 v3, 0x7

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    const/16 v3, 0x8

    aput-object v2, v16, v3

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    const/16 v3, 0x9

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104068c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SEND_MMS_GROUP_NAME:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104068d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SEND_MMS_GROUP_DESC:Ljava/lang/String;

    .line 75
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SEND_MMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SEND_MMS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_SEND_MMS_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x1

    const/4 v10, 0x6

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104068e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_GROUP_NAME:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104068f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_GROUP_DESC:Ljava/lang/String;

    .line 78
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_WRITE_SETTINGS_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x6

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v22

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040690

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_GROUP_NAME:Ljava/lang/String;

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040691

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_GORUP_DESC:Ljava/lang/String;

    .line 81
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const-string/jumbo v9, ""

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_GORUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_ACCESS_NOTIFICATION_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x7

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040692

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CAMERA_GROUP_NAME:Ljava/lang/String;

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040693

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CAMERA_GROUP_DESC:Ljava/lang/String;

    .line 84
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CAMERA_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CAMERA_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CAMERA_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v20

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040694

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_GROUP_NAME:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040695

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_GROUP_DESC:Ljava/lang/String;

    .line 87
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_RECORD_AUDIO_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x3

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v20

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040696

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->WIFI_GROUP_NAME:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040697

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->WIFI_GROUP_DESC:Ljava/lang/String;

    .line 90
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->WIFI_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->WIFI_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CHANGE_WIFI_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x30

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x2

    const/4 v10, 0x2

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040698

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_GROUP_NAME:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040699

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_GROUP_DESC:Ljava/lang/String;

    .line 93
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CHANGE_BLUETOOTH_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x2

    const/4 v10, 0x3

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->DATACONNECT_GROUP_NAME:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->DATACONNECT_GROUP_DESC:Ljava/lang/String;

    .line 96
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->DATACONNECT_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->DATACONNECT_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CHANGE_DATACONNECT_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x32

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_GROUP_NAME:Ljava/lang/String;

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_GROUP_DESC:Ljava/lang/String;

    .line 99
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const-string/jumbo v9, ""

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_BOOT_COMPLETED_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v15, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->NFC_GROUP_NAME:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->NFC_GROUP_DESC:Ljava/lang/String;

    .line 102
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->NFC_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->NFC_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_NFC_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x38

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x2

    const/4 v10, 0x4

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_GROUP_NAME:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_GROUP_DESC:Ljava/lang/String;

    .line 105
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_PHONE_INFO_OPS:[I

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v8, 0x5

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v18

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_GROUP_NAME:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_GROUP_DESC:Ljava/lang/String;

    .line 108
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_SYSTEM_ALERT_WINDOW_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/16 v8, 0x8

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v21

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_GROUP_NAME:Ljava/lang/String;

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_GROUP_DESC:Ljava/lang/String;

    .line 111
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_THREE_WAY_CALLING_OPS:[I

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x3c

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/16 v8, 0x8

    const/4 v10, 0x2

    const/4 v15, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, v21

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 114
    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const-string/jumbo v9, ""

    const-string/jumbo v11, ""

    const-string/jumbo v12, ""

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x1

    new-array v14, v2, [I

    const/16 v2, 0x4c

    const/4 v3, 0x0

    aput v2, v14, v3

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput-object v2, v16, v3

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->BG_APP_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    .line 24
    return-void

    .line 32
    .end local v5    # "privacy_title":Ljava/lang/String;
    .end local v17    # "communicate_title":Ljava/lang/String;
    .end local v18    # "device_title":Ljava/lang/String;
    .end local v19    # "internet_title":Ljava/lang/String;
    .end local v20    # "media_title":Ljava/lang/String;
    .end local v21    # "other_title":Ljava/lang/String;
    .end local v22    # "system_title":Ljava/lang/String;
    .end local v23    # "tool_title":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/app/AppOpsUtils;->isFirst:Z

    goto/16 :goto_0
.end method

.method public static has([II)Z
    .locals 4
    .param p0, "ints"    # [I
    .param p1, "target"    # I

    .prologue
    const/4 v2, 0x0

    .line 597
    array-length v3, p0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, p0, v1

    .line 598
    .local v0, "i":I
    if-ne v0, p1, :cond_0

    .line 599
    const/4 v1, 0x1

    return v1

    .line 597
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    .end local v0    # "i":I
    :cond_1
    return v2
.end method
