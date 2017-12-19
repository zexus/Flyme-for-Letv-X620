.class public Landroid/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls;,
        Landroid/provider/CallLog$ConferenceCalls;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "call_log"

.field public static final CLOUD_SYNC:Ljava/lang/String; = "calllog_sync"

.field public static final CONTENT_SYNC_STATE_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "CallLog"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "content://call_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 70
    sput-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 74
    sget-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "syncstate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    sput-object v0, Landroid/provider/CallLog;->CONTENT_SYNC_STATE_URI:Landroid/net/Uri;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
