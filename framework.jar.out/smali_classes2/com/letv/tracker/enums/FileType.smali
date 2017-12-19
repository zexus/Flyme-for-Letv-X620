.class public final enum Lcom/letv/tracker/enums/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/FileType;

.field public static final enum AAC:Lcom/letv/tracker/enums/FileType;

.field public static final enum APK:Lcom/letv/tracker/enums/FileType;

.field public static final enum AVI:Lcom/letv/tracker/enums/FileType;

.field public static final enum BIN:Lcom/letv/tracker/enums/FileType;

.field public static final enum CLASS:Lcom/letv/tracker/enums/FileType;

.field public static final enum CSS:Lcom/letv/tracker/enums/FileType;

.field public static final enum CSV:Lcom/letv/tracker/enums/FileType;

.field public static final enum DOC:Lcom/letv/tracker/enums/FileType;

.field public static final enum DOCX:Lcom/letv/tracker/enums/FileType;

.field public static final enum EXE:Lcom/letv/tracker/enums/FileType;

.field public static final enum FLV:Lcom/letv/tracker/enums/FileType;

.field public static final enum GIF:Lcom/letv/tracker/enums/FileType;

.field public static final enum HTM:Lcom/letv/tracker/enums/FileType;

.field public static final enum HTML:Lcom/letv/tracker/enums/FileType;

.field public static final enum IMG:Lcom/letv/tracker/enums/FileType;

.field public static final enum JAR:Lcom/letv/tracker/enums/FileType;

.field public static final enum JAVA:Lcom/letv/tracker/enums/FileType;

.field public static final enum JBF:Lcom/letv/tracker/enums/FileType;

.field public static final enum JIF:Lcom/letv/tracker/enums/FileType;

.field public static final enum JPEG:Lcom/letv/tracker/enums/FileType;

.field public static final enum JS:Lcom/letv/tracker/enums/FileType;

.field public static final enum JSP:Lcom/letv/tracker/enums/FileType;

.field public static final enum JTF:Lcom/letv/tracker/enums/FileType;

.field public static final enum LOG:Lcom/letv/tracker/enums/FileType;

.field public static final enum MKV:Lcom/letv/tracker/enums/FileType;

.field public static final enum MP3:Lcom/letv/tracker/enums/FileType;

.field public static final enum MP4:Lcom/letv/tracker/enums/FileType;

.field public static final enum MPEG:Lcom/letv/tracker/enums/FileType;

.field public static final enum Others:Lcom/letv/tracker/enums/FileType;

.field public static final enum RAR:Lcom/letv/tracker/enums/FileType;

.field public static final enum RMVB:Lcom/letv/tracker/enums/FileType;

.field public static final enum TXT:Lcom/letv/tracker/enums/FileType;

.field public static final enum TZ:Lcom/letv/tracker/enums/FileType;

.field public static final enum WAV:Lcom/letv/tracker/enums/FileType;

.field public static final enum WMV:Lcom/letv/tracker/enums/FileType;

.field public static final enum XLS:Lcom/letv/tracker/enums/FileType;

.field public static final enum XLSX:Lcom/letv/tracker/enums/FileType;

.field public static final enum XML:Lcom/letv/tracker/enums/FileType;

.field public static final enum ZIP:Lcom/letv/tracker/enums/FileType;


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

    .line 10
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "RMVB"

    const-string/jumbo v2, "rmvb"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->RMVB:Lcom/letv/tracker/enums/FileType;

    .line 14
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "MKV"

    const-string/jumbo v2, "mkv"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->MKV:Lcom/letv/tracker/enums/FileType;

    .line 18
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "AVI"

    const-string/jumbo v2, "avi"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->AVI:Lcom/letv/tracker/enums/FileType;

    .line 22
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "MP4"

    const-string/jumbo v2, "mp4"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->MP4:Lcom/letv/tracker/enums/FileType;

    .line 26
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "FLV"

    const-string/jumbo v2, "flv"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->FLV:Lcom/letv/tracker/enums/FileType;

    .line 30
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "WMV"

    const/4 v2, 0x5

    const-string/jumbo v3, "wmv"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->WMV:Lcom/letv/tracker/enums/FileType;

    .line 31
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "WAV"

    const/4 v2, 0x6

    const-string/jumbo v3, "wav"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->WAV:Lcom/letv/tracker/enums/FileType;

    .line 33
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "AAC"

    const/4 v2, 0x7

    const-string/jumbo v3, "aac"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->AAC:Lcom/letv/tracker/enums/FileType;

    .line 34
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "APK"

    const/16 v2, 0x8

    const-string/jumbo v3, "apk"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->APK:Lcom/letv/tracker/enums/FileType;

    .line 35
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "BIN"

    const/16 v2, 0x9

    const-string/jumbo v3, "bin"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->BIN:Lcom/letv/tracker/enums/FileType;

    .line 36
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "CLASS"

    const/16 v2, 0xa

    const-string/jumbo v3, "class"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->CLASS:Lcom/letv/tracker/enums/FileType;

    .line 37
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "CSS"

    const/16 v2, 0xb

    const-string/jumbo v3, "css"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->CSS:Lcom/letv/tracker/enums/FileType;

    .line 38
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "CSV"

    const/16 v2, 0xc

    const-string/jumbo v3, "csv"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->CSV:Lcom/letv/tracker/enums/FileType;

    .line 39
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "DOC"

    const/16 v2, 0xd

    const-string/jumbo v3, "doc"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->DOC:Lcom/letv/tracker/enums/FileType;

    .line 40
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "DOCX"

    const/16 v2, 0xe

    const-string/jumbo v3, "docx"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->DOCX:Lcom/letv/tracker/enums/FileType;

    .line 41
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "EXE"

    const/16 v2, 0xf

    const-string/jumbo v3, "exe"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->EXE:Lcom/letv/tracker/enums/FileType;

    .line 42
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "GIF"

    const/16 v2, 0x10

    const-string/jumbo v3, "gif"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->GIF:Lcom/letv/tracker/enums/FileType;

    .line 43
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "HTML"

    const/16 v2, 0x11

    const-string/jumbo v3, "html"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->HTML:Lcom/letv/tracker/enums/FileType;

    .line 44
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "HTM"

    const/16 v2, 0x12

    const-string/jumbo v3, "htm"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->HTM:Lcom/letv/tracker/enums/FileType;

    .line 45
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "IMG"

    const/16 v2, 0x13

    const-string/jumbo v3, "img"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->IMG:Lcom/letv/tracker/enums/FileType;

    .line 46
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "JAR"

    const/16 v2, 0x14

    const-string/jumbo v3, "jar"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->JAR:Lcom/letv/tracker/enums/FileType;

    .line 47
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "JAVA"

    const/16 v2, 0x15

    const-string/jumbo v3, "java"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->JAVA:Lcom/letv/tracker/enums/FileType;

    .line 48
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "JBF"

    const/16 v2, 0x16

    const-string/jumbo v3, "jbf"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->JBF:Lcom/letv/tracker/enums/FileType;

    .line 49
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "JIF"

    const/16 v2, 0x17

    const-string/jumbo v3, "jif"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->JIF:Lcom/letv/tracker/enums/FileType;

    .line 50
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "JPEG"

    const/16 v2, 0x18

    const-string/jumbo v3, "jpeg"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->JPEG:Lcom/letv/tracker/enums/FileType;

    .line 51
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "JS"

    const/16 v2, 0x19

    const-string/jumbo v3, "js"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->JS:Lcom/letv/tracker/enums/FileType;

    .line 52
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "JSP"

    const/16 v2, 0x1a

    const-string/jumbo v3, "jsp"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->JSP:Lcom/letv/tracker/enums/FileType;

    .line 53
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "JTF"

    const/16 v2, 0x1b

    const-string/jumbo v3, "jtf"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->JTF:Lcom/letv/tracker/enums/FileType;

    .line 54
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "LOG"

    const/16 v2, 0x1c

    const-string/jumbo v3, "log"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->LOG:Lcom/letv/tracker/enums/FileType;

    .line 55
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "MP3"

    const/16 v2, 0x1d

    const-string/jumbo v3, "mp3"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->MP3:Lcom/letv/tracker/enums/FileType;

    .line 56
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "MPEG"

    const/16 v2, 0x1e

    const-string/jumbo v3, "mpeg"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->MPEG:Lcom/letv/tracker/enums/FileType;

    .line 57
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "TXT"

    const/16 v2, 0x1f

    const-string/jumbo v3, "txt"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->TXT:Lcom/letv/tracker/enums/FileType;

    .line 58
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "TZ"

    const/16 v2, 0x20

    const-string/jumbo v3, "tz"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->TZ:Lcom/letv/tracker/enums/FileType;

    .line 59
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "RAR"

    const/16 v2, 0x21

    const-string/jumbo v3, "rar"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->RAR:Lcom/letv/tracker/enums/FileType;

    .line 60
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "XML"

    const/16 v2, 0x22

    const-string/jumbo v3, "xml"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->XML:Lcom/letv/tracker/enums/FileType;

    .line 61
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "XLS"

    const/16 v2, 0x23

    const-string/jumbo v3, "xls"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->XLS:Lcom/letv/tracker/enums/FileType;

    .line 62
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "XLSX"

    const/16 v2, 0x24

    const-string/jumbo v3, "xlsx"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->XLSX:Lcom/letv/tracker/enums/FileType;

    .line 63
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "ZIP"

    const/16 v2, 0x25

    const-string/jumbo v3, "zip"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->ZIP:Lcom/letv/tracker/enums/FileType;

    .line 68
    new-instance v0, Lcom/letv/tracker/enums/FileType;

    const-string/jumbo v1, "Others"

    const/16 v2, 0x26

    const-string/jumbo v3, "others"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/FileType;->Others:Lcom/letv/tracker/enums/FileType;

    const/16 v0, 0x27

    .line 6
    new-array v0, v0, [Lcom/letv/tracker/enums/FileType;

    sget-object v1, Lcom/letv/tracker/enums/FileType;->RMVB:Lcom/letv/tracker/enums/FileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/FileType;->MKV:Lcom/letv/tracker/enums/FileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/FileType;->AVI:Lcom/letv/tracker/enums/FileType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/FileType;->MP4:Lcom/letv/tracker/enums/FileType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/enums/FileType;->FLV:Lcom/letv/tracker/enums/FileType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/enums/FileType;->WMV:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/enums/FileType;->WAV:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/tracker/enums/FileType;->AAC:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letv/tracker/enums/FileType;->APK:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/letv/tracker/enums/FileType;->BIN:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/letv/tracker/enums/FileType;->CLASS:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/letv/tracker/enums/FileType;->CSS:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/letv/tracker/enums/FileType;->CSV:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/letv/tracker/enums/FileType;->DOC:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/letv/tracker/enums/FileType;->DOCX:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/letv/tracker/enums/FileType;->EXE:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/letv/tracker/enums/FileType;->GIF:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/letv/tracker/enums/FileType;->HTML:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/letv/tracker/enums/FileType;->HTM:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/letv/tracker/enums/FileType;->IMG:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/letv/tracker/enums/FileType;->JAR:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/letv/tracker/enums/FileType;->JAVA:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/letv/tracker/enums/FileType;->JBF:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/letv/tracker/enums/FileType;->JIF:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/letv/tracker/enums/FileType;->JPEG:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/letv/tracker/enums/FileType;->JS:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/letv/tracker/enums/FileType;->JSP:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/letv/tracker/enums/FileType;->JTF:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/letv/tracker/enums/FileType;->LOG:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/letv/tracker/enums/FileType;->MP3:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/letv/tracker/enums/FileType;->MPEG:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/letv/tracker/enums/FileType;->TXT:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/letv/tracker/enums/FileType;->TZ:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/letv/tracker/enums/FileType;->RAR:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/letv/tracker/enums/FileType;->XML:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/letv/tracker/enums/FileType;->XLS:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/letv/tracker/enums/FileType;->XLSX:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/letv/tracker/enums/FileType;->ZIP:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/letv/tracker/enums/FileType;->Others:Lcom/letv/tracker/enums/FileType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/enums/FileType;->$VALUES:[Lcom/letv/tracker/enums/FileType;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lcom/letv/tracker/enums/FileType;->id:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/FileType;
    .locals 1

    .prologue
    const-class v0, Lcom/letv/tracker/enums/FileType;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/FileType;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/FileType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/letv/tracker/enums/FileType;->$VALUES:[Lcom/letv/tracker/enums/FileType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/FileType;

    return-object v0
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/letv/tracker/enums/FileType;->id:Ljava/lang/String;

    return-object v0
.end method
