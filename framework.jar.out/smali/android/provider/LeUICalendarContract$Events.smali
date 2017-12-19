.class public Landroid/provider/LeUICalendarContract$Events;
.super Ljava/lang/Object;
.source "LeUICalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/CalendarContract$SyncColumns;
.implements Landroid/provider/CalendarContract$EventsColumns;
.implements Landroid/provider/CalendarContract$CalendarColumns;
.implements Landroid/provider/LeUICalendarContract$ExtEventsColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/LeUICalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Events"
.end annotation


# static fields
.field public static final CONTENT_EXCEPTION_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

.field public static final SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    sput-object v0, Landroid/provider/LeUICalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 69
    const-string/jumbo v0, "content://com.android.calendar/exception"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    sput-object v0, Landroid/provider/LeUICalendarContract$Events;->CONTENT_EXCEPTION_URI:Landroid/net/Uri;

    .line 87
    sget-object v0, Landroid/provider/CalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    sput-object v0, Landroid/provider/LeUICalendarContract$Events;->PROVIDER_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 95
    sget-object v0, Landroid/provider/CalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    sput-object v0, Landroid/provider/LeUICalendarContract$Events;->SYNC_WRITABLE_COLUMNS:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
