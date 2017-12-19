.class public final Landroid/provider/ContactsContract$CommonDataKinds$PhoneAndEmail;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneAndEmail"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/phone_email"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_email"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8007
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 8008
    const-string/jumbo v1, "phones_emails"

    .line 8007
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$PhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    .line 8015
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$PhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    .line 8016
    const-string/jumbo v1, "filter"

    .line 8015
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$PhoneAndEmail;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 8017
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$PhoneAndEmail;->CONTENT_URI:Landroid/net/Uri;

    .line 8018
    const-string/jumbo v1, "group"

    .line 8017
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$PhoneAndEmail;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 8001
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
