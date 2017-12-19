.class public final Landroid/provider/LeUICalendarContract$Tags;
.super Ljava/lang/Object;
.source "LeUICalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/LeUICalendarContract$TagsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/LeUICalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tags"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "Tags"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "content://com.android.calendar/tags"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/LeUICalendarContract$Tags;->CONTENT_URI:Landroid/net/Uri;

    .line 114
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
