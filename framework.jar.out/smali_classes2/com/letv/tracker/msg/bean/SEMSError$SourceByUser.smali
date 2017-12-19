.class public final enum Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;
.super Ljava/lang/Enum;
.source "SEMSError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/tracker/msg/bean/SEMSError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceByUser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum ACCOUNT_AND_CLOUD:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum APP_STORE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum BROWSER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum CALCULATOR:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum CALENDAR:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum CAMERA:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum CLOCK:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum CLOUD_DISK:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum CONTACT_LIST:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum CONTROL_CENTER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum DESKTOP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum DOWNLOAD_MANAGEMENT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum FILE_MANAGEMENT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum HARDWARE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum LETV_STORE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum LOCATING_SERVICE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum LOCK_SCREEN:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum MAIL:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum MAP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum MESSAGE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum MUSIC:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum NETWORK_CONNECTION:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum NOTE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum NOTICE_CENTER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum PHONE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum PHOTO:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum RECORDER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum SETTINGS:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum SYS_UPGRADE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum TELECONTROLLER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum THEME:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum THIRD_PARTY_APP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum VIDEO:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum VOICE_INPUT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

.field public static final enum WEATHER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;


# instance fields
.field private sourceCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v4, v5}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->PHONE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 69
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "CONTACT_LIST"

    invoke-direct {v0, v1, v5, v6}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CONTACT_LIST:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 70
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "MESSAGE"

    invoke-direct {v0, v1, v6, v7}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->MESSAGE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 71
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "BROWSER"

    invoke-direct {v0, v1, v7, v8}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->BROWSER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 72
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "MUSIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->MUSIC:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 73
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "VIDEO"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->VIDEO:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 74
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "PHOTO"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->PHOTO:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 75
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "CAMERA"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CAMERA:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 76
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "WEATHER"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->WEATHER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 77
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "CALENDAR"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CALENDAR:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 78
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "MAIL"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->MAIL:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 79
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "CLOCK"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CLOCK:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 80
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "LOCK_SCREEN"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->LOCK_SCREEN:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 81
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "CALCULATOR"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CALCULATOR:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 82
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "NOTE"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->NOTE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 83
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "TELECONTROLLER"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->TELECONTROLLER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 84
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "RECORDER"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->RECORDER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 85
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "DESKTOP"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->DESKTOP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 86
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "FILE_MANAGEMENT"

    const/16 v2, 0x12

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->FILE_MANAGEMENT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 87
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "APP_STORE"

    const/16 v2, 0x13

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->APP_STORE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 88
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "CONTROL_CENTER"

    const/16 v2, 0x14

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CONTROL_CENTER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 89
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "NOTICE_CENTER"

    const/16 v2, 0x15

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->NOTICE_CENTER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 90
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "LETV_STORE"

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->LETV_STORE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 91
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "SETTINGS"

    const/16 v2, 0x17

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->SETTINGS:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 92
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "THEME"

    const/16 v2, 0x18

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->THEME:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 93
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "CLOUD_DISK"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CLOUD_DISK:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 94
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "MAP"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->MAP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 95
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "THIRD_PARTY_APP"

    const/16 v2, 0x1b

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->THIRD_PARTY_APP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 96
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "VOICE_INPUT"

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->VOICE_INPUT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 97
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "LOCATING_SERVICE"

    const/16 v2, 0x1d

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->LOCATING_SERVICE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 98
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "NETWORK_CONNECTION"

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->NETWORK_CONNECTION:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 99
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "DOWNLOAD_MANAGEMENT"

    const/16 v2, 0x1f

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->DOWNLOAD_MANAGEMENT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 100
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "ACCOUNT_AND_CLOUD"

    const/16 v2, 0x20

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->ACCOUNT_AND_CLOUD:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 101
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "SYS_UPGRADE"

    const/16 v2, 0x21

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->SYS_UPGRADE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 102
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "HARDWARE"

    const/16 v2, 0x22

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->HARDWARE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 103
    new-instance v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const-string/jumbo v1, "OTHERS"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2, v4}, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    const/16 v0, 0x24

    .line 67
    new-array v0, v0, [Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->PHONE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CONTACT_LIST:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->MESSAGE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->BROWSER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->MUSIC:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->VIDEO:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->PHOTO:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CAMERA:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->WEATHER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CALENDAR:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->MAIL:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CLOCK:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->LOCK_SCREEN:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CALCULATOR:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->NOTE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->TELECONTROLLER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->RECORDER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->DESKTOP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->FILE_MANAGEMENT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->APP_STORE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CONTROL_CENTER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->NOTICE_CENTER:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->LETV_STORE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->SETTINGS:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->THEME:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->CLOUD_DISK:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->MAP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->THIRD_PARTY_APP:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->VOICE_INPUT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->LOCATING_SERVICE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->NETWORK_CONNECTION:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->DOWNLOAD_MANAGEMENT:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->ACCOUNT_AND_CLOUD:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->SYS_UPGRADE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->HARDWARE:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->OTHERS:Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->$VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->sourceCode:I

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    .line 67
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->$VALUES:[Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;

    return-object v0
.end method


# virtual methods
.method public getSrcCode()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/letv/tracker/msg/bean/SEMSError$SourceByUser;->sourceCode:I

    return v0
.end method
