.class public final Landroid/provider/LeUICalendarContract$TagsSettings;
.super Ljava/lang/Object;
.source "LeUICalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/LeUICalendarContract$TagsSettingColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/LeUICalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagsSettings"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final TABLE_NAME:Ljava/lang/String; = "TagsSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const-string/jumbo v0, "content://com.android.calendar/tagsSettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/LeUICalendarContract$TagsSettings;->CONTENT_URI:Landroid/net/Uri;

    .line 147
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
