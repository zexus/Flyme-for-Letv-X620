.class public final enum Lcom/letv/tracker/enums/LeUIApp;
.super Ljava/lang/Enum;
.source "LeUIApp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/LeUIApp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum AppManagement:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum BatteryUsage:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Browser:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Calculator:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Calendar:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Calling:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Camera:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Clock:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Contacts:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum ControlCenter:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Desktop:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum DialPanel:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Download:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Email:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Feedback:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum FileManagement:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Huangye:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum LeCloud:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum LeStoreMobile:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum LetvVoipPhone:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum LockBar:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Map:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Message:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Music:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Notepaper:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum NoticeBar:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum PackageInstaller:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Phone:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Photo:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum RecordMemo:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Recorder:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum SIMCardApp:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Sports:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum SystemSetting:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum SystemUpgrade:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Telectr:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Video:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum VoiceAssist:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Wallpaper:Lcom/letv/tracker/enums/LeUIApp;

.field public static final enum Weather:Lcom/letv/tracker/enums/LeUIApp;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Desktop"

    const-string/jumbo v2, "Desktop"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Desktop:Lcom/letv/tracker/enums/LeUIApp;

    .line 5
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Browser"

    const-string/jumbo v2, "Browser"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Browser:Lcom/letv/tracker/enums/LeUIApp;

    .line 6
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "FileManagement"

    const-string/jumbo v2, "FileManagement"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->FileManagement:Lcom/letv/tracker/enums/LeUIApp;

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Message"

    const-string/jumbo v2, "Message"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Message:Lcom/letv/tracker/enums/LeUIApp;

    .line 8
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Phone"

    const-string/jumbo v2, "Phone"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Phone:Lcom/letv/tracker/enums/LeUIApp;

    .line 9
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Photo"

    const/4 v2, 0x5

    const-string/jumbo v3, "Photo"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Photo:Lcom/letv/tracker/enums/LeUIApp;

    .line 10
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "LockBar"

    const/4 v2, 0x6

    const-string/jumbo v3, "LockBar"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->LockBar:Lcom/letv/tracker/enums/LeUIApp;

    .line 11
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "NoticeBar"

    const/4 v2, 0x7

    const-string/jumbo v3, "NoticeBar"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->NoticeBar:Lcom/letv/tracker/enums/LeUIApp;

    .line 12
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "ControlCenter"

    const/16 v2, 0x8

    const-string/jumbo v3, "ControlCenter"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->ControlCenter:Lcom/letv/tracker/enums/LeUIApp;

    .line 13
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "SystemSetting"

    const/16 v2, 0x9

    const-string/jumbo v3, "SystemSetting"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->SystemSetting:Lcom/letv/tracker/enums/LeUIApp;

    .line 14
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "AppManagement"

    const/16 v2, 0xa

    const-string/jumbo v3, "AppManagement"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->AppManagement:Lcom/letv/tracker/enums/LeUIApp;

    .line 15
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "DialPanel"

    const/16 v2, 0xb

    const-string/jumbo v3, "DialPanel"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->DialPanel:Lcom/letv/tracker/enums/LeUIApp;

    .line 16
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Calendar"

    const/16 v2, 0xc

    const-string/jumbo v3, "Calendar"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Calendar:Lcom/letv/tracker/enums/LeUIApp;

    .line 17
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Notepaper"

    const/16 v2, 0xd

    const-string/jumbo v3, "Notepaper"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Notepaper:Lcom/letv/tracker/enums/LeUIApp;

    .line 18
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Calculator"

    const/16 v2, 0xe

    const-string/jumbo v3, "Calculator"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Calculator:Lcom/letv/tracker/enums/LeUIApp;

    .line 19
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Weather"

    const/16 v2, 0xf

    const-string/jumbo v3, "Weather"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Weather:Lcom/letv/tracker/enums/LeUIApp;

    .line 20
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Map"

    const/16 v2, 0x10

    const-string/jumbo v3, "Map"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Map:Lcom/letv/tracker/enums/LeUIApp;

    .line 21
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Clock"

    const/16 v2, 0x11

    const-string/jumbo v3, "Clock"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Clock:Lcom/letv/tracker/enums/LeUIApp;

    .line 22
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Email"

    const/16 v2, 0x12

    const-string/jumbo v3, "Email"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Email:Lcom/letv/tracker/enums/LeUIApp;

    .line 23
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Wallpaper"

    const/16 v2, 0x13

    const-string/jumbo v3, "Wallpaper"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Wallpaper:Lcom/letv/tracker/enums/LeUIApp;

    .line 24
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Recorder"

    const/16 v2, 0x14

    const-string/jumbo v3, "Recorder"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Recorder:Lcom/letv/tracker/enums/LeUIApp;

    .line 25
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Video"

    const/16 v2, 0x15

    const-string/jumbo v3, "Video"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Video:Lcom/letv/tracker/enums/LeUIApp;

    .line 26
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Contacts"

    const/16 v2, 0x16

    const-string/jumbo v3, "Contacts"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Contacts:Lcom/letv/tracker/enums/LeUIApp;

    .line 27
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Telectr"

    const/16 v2, 0x17

    const-string/jumbo v3, "Telecontroller"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Telectr:Lcom/letv/tracker/enums/LeUIApp;

    .line 28
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Music"

    const/16 v2, 0x18

    const-string/jumbo v3, "Music"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Music:Lcom/letv/tracker/enums/LeUIApp;

    .line 29
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "SIMCardApp"

    const/16 v2, 0x19

    const-string/jumbo v3, "SIMCardApp"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->SIMCardApp:Lcom/letv/tracker/enums/LeUIApp;

    .line 30
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Download"

    const/16 v2, 0x1a

    const-string/jumbo v3, "Download"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Download:Lcom/letv/tracker/enums/LeUIApp;

    .line 31
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Feedback"

    const/16 v2, 0x1b

    const-string/jumbo v3, "Feedback"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Feedback:Lcom/letv/tracker/enums/LeUIApp;

    .line 32
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "SystemUpgrade"

    const/16 v2, 0x1c

    const-string/jumbo v3, "SystemUpgrade"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->SystemUpgrade:Lcom/letv/tracker/enums/LeUIApp;

    .line 33
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "RecordMemo"

    const/16 v2, 0x1d

    const-string/jumbo v3, "RecordMemo"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->RecordMemo:Lcom/letv/tracker/enums/LeUIApp;

    .line 34
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Camera"

    const/16 v2, 0x1e

    const-string/jumbo v3, "Camera"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Camera:Lcom/letv/tracker/enums/LeUIApp;

    .line 35
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Calling"

    const/16 v2, 0x1f

    const-string/jumbo v3, "Calling"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Calling:Lcom/letv/tracker/enums/LeUIApp;

    .line 36
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "VoiceAssist"

    const/16 v2, 0x20

    const-string/jumbo v3, "VoiceAssist"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->VoiceAssist:Lcom/letv/tracker/enums/LeUIApp;

    .line 37
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Sports"

    const/16 v2, 0x21

    const-string/jumbo v3, "Sports"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Sports:Lcom/letv/tracker/enums/LeUIApp;

    .line 38
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "LeStoreMobile"

    const/16 v2, 0x22

    const-string/jumbo v3, "LeStoreMobile"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->LeStoreMobile:Lcom/letv/tracker/enums/LeUIApp;

    .line 39
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "Huangye"

    const/16 v2, 0x23

    const-string/jumbo v3, "Huangye"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->Huangye:Lcom/letv/tracker/enums/LeUIApp;

    .line 40
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "PackageInstaller"

    const/16 v2, 0x24

    const-string/jumbo v3, "PackageInstaller"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->PackageInstaller:Lcom/letv/tracker/enums/LeUIApp;

    .line 41
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "LeCloud"

    const/16 v2, 0x25

    const-string/jumbo v3, "LeCloud"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->LeCloud:Lcom/letv/tracker/enums/LeUIApp;

    .line 42
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "LetvVoipPhone"

    const/16 v2, 0x26

    const-string/jumbo v3, "LetvVoipPhone"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->LetvVoipPhone:Lcom/letv/tracker/enums/LeUIApp;

    .line 43
    new-instance v0, Lcom/letv/tracker/enums/LeUIApp;

    const-string/jumbo v1, "BatteryUsage"

    const/16 v2, 0x27

    const-string/jumbo v3, "BatteryUsage"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/LeUIApp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->BatteryUsage:Lcom/letv/tracker/enums/LeUIApp;

    const/16 v0, 0x28

    .line 3
    new-array v0, v0, [Lcom/letv/tracker/enums/LeUIApp;

    sget-object v1, Lcom/letv/tracker/enums/LeUIApp;->Desktop:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/LeUIApp;->Browser:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/LeUIApp;->FileManagement:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/LeUIApp;->Message:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/enums/LeUIApp;->Phone:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Photo:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->LockBar:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->NoticeBar:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->ControlCenter:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->SystemSetting:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->AppManagement:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->DialPanel:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Calendar:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Notepaper:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Calculator:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Weather:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Map:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Clock:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Email:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Wallpaper:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Recorder:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Video:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Contacts:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Telectr:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Music:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->SIMCardApp:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Download:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Feedback:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->SystemUpgrade:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->RecordMemo:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Camera:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Calling:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->VoiceAssist:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Sports:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->LeStoreMobile:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->Huangye:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->PackageInstaller:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->LeCloud:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->LetvVoipPhone:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/letv/tracker/enums/LeUIApp;->BatteryUsage:Lcom/letv/tracker/enums/LeUIApp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/enums/LeUIApp;->$VALUES:[Lcom/letv/tracker/enums/LeUIApp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/letv/tracker/enums/LeUIApp;->id:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static isExsited(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {}, Lcom/letv/tracker/enums/LeUIApp;->values()[Lcom/letv/tracker/enums/LeUIApp;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 61
    return v1

    .line 56
    :cond_0
    aget-object v4, v2, v0

    .line 57
    invoke-virtual {v4}, Lcom/letv/tracker/enums/LeUIApp;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/LeUIApp;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/LeUIApp;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/LeUIApp;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/LeUIApp;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/letv/tracker/enums/LeUIApp;->$VALUES:[Lcom/letv/tracker/enums/LeUIApp;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/LeUIApp;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/letv/tracker/enums/LeUIApp;->id:Ljava/lang/String;

    return-object v0
.end method
