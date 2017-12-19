.class public final Landroid/provider/ContactsContract$LeExtNumberList;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$DataColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeExtNumberList"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BLACKNUMBERLIST_SAVE_MESSAGE:I = 0x1

.field public static final BLOCK_MESSAGE:Ljava/lang/String; = "data2"

.field public static final CLOUD_SYNC:Ljava/lang/String; = "le_ext_number_sync"

.field public static final CONTENT_NOTIFY_URI:Landroid/net/Uri;

.field public static final CONTENT_SYNC_STATE_URI:Landroid/net/Uri;

.field public static final CONTENT_SYNC_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DIRTY:Ljava/lang/String; = "dirty"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EXTLIST_NUMBER_LABEL:Ljava/lang/String; = "data3"

.field public static final EXTLIST_NUMBER_TAG:Ljava/lang/String; = "data4"

.field public static final EXTRA_LE_EXT_NUMBER_TYPE:Ljava/lang/String; = "leExtNumberType"

.field public static final FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final LE_SYNC1:Ljava/lang/String; = "sync1"

.field public static final LE_SYNC2:Ljava/lang/String; = "sync2"

.field public static final LE_SYNC3:Ljava/lang/String; = "sync3"

.field public static final LE_SYNC4:Ljava/lang/String; = "sync4"

.field public static final SOURCE_ID:Ljava/lang/String; = "sourceid"

.field public static final SYNC_AUTHORITY_URI:Landroid/net/Uri;

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_BLACK_LIST:I = 0x0

.field public static final TYPE_BLACK_LIST_PHONE:I = 0x4

.field public static final TYPE_BLACK_LIST_SMS:I = 0x5

.field public static final TYPE_BLACK_LIST_SMS_PHONE:I = 0x6

.field public static final TYPE_MSG_WHITE_LIST:I = 0x3

.field public static final TYPE_RECORD_LIST:I = 0x2

.field public static final TYPE_WHITE_LIST:I = 0x1

.field public static final TYPE_ZENMODE_LIST:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9972
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "le_ext_number_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$LeExtNumberList;->CONTENT_URI:Landroid/net/Uri;

    .line 9973
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    const-string/jumbo v1, "le_ext_number_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$LeExtNumberList;->CONTENT_NOTIFY_URI:Landroid/net/Uri;

    .line 9974
    const-string/jumbo v0, "content://leextnumlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$LeExtNumberList;->SYNC_AUTHORITY_URI:Landroid/net/Uri;

    .line 9975
    sget-object v0, Landroid/provider/ContactsContract$LeExtNumberList;->SYNC_AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "le_ext_number_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$LeExtNumberList;->CONTENT_SYNC_URI:Landroid/net/Uri;

    .line 9976
    sget-object v0, Landroid/provider/ContactsContract$LeExtNumberList;->SYNC_AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "syncstate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$LeExtNumberList;->CONTENT_SYNC_STATE_URI:Landroid/net/Uri;

    .line 9971
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
