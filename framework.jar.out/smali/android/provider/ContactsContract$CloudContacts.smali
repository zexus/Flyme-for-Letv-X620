.class public final Landroid/provider/ContactsContract$CloudContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudContacts"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final AUTHORITY:Ljava/lang/String; = "com.leui.provider.cloudcontacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final AVATAT:Ljava/lang/String; = "avatar"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_NUMBER_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DIRECTOR_URI:Landroid/net/Uri;

.field public static final DISTANCE:Ljava/lang/String; = "distance"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OWNERNAME:Ljava/lang/String; = "ownerName"

.field public static final RATING:Ljava/lang/String; = "rating"

.field public static final SLOGAN:Ljava/lang/String; = "slogan"

.field public static final TAG:Ljava/lang/String; = "tag"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10057
    const-string/jumbo v0, "content://com.leui.provider.cloudcontacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CloudContacts;->AUTHORITY_URI:Landroid/net/Uri;

    .line 10058
    sget-object v0, Landroid/provider/ContactsContract$CloudContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "directories"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CloudContacts;->DIRECTOR_URI:Landroid/net/Uri;

    .line 10059
    sget-object v0, Landroid/provider/ContactsContract$CloudContacts;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CloudContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 10061
    sget-object v0, Landroid/provider/ContactsContract$CloudContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CloudContacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 10062
    sget-object v0, Landroid/provider/ContactsContract$CloudContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "number"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CloudContacts;->CONTENT_NUMBER_URI:Landroid/net/Uri;

    .line 10053
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudContactDirectoryId(Landroid/content/ContentResolver;)J
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 10097
    sget-object v1, Landroid/provider/ContactsContract$CloudContacts;->DIRECTOR_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v5

    .line 10098
    const-string/jumbo v3, "authority=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v0, "com.leui.provider.cloudcontacts"

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    .line 10097
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 10099
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 10100
    const-wide/16 v0, -0x1

    return-wide v0

    .line 10102
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10104
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 10106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 10104
    return-wide v0

    .line 10105
    :catchall_0
    move-exception v0

    .line 10106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 10105
    throw v0
.end method
