.class public Lcom/letv/leui/provider/EUIBrowserContract;
.super Ljava/lang/Object;
.source "EUIBrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/provider/EUIBrowserContract$BaseSyncColumns;,
        Lcom/letv/leui/provider/EUIBrowserContract$ChromeSyncColumns;,
        Lcom/letv/leui/provider/EUIBrowserContract$SyncColumns;,
        Lcom/letv/leui/provider/EUIBrowserContract$CommonColumns;,
        Lcom/letv/leui/provider/EUIBrowserContract$ImageColumns;,
        Lcom/letv/leui/provider/EUIBrowserContract$HistoryColumns;,
        Lcom/letv/leui/provider/EUIBrowserContract$ImageMappingColumns;,
        Lcom/letv/leui/provider/EUIBrowserContract$Bookmarks;,
        Lcom/letv/leui/provider/EUIBrowserContract$Accounts;,
        Lcom/letv/leui/provider/EUIBrowserContract$History;,
        Lcom/letv/leui/provider/EUIBrowserContract$Searches;,
        Lcom/letv/leui/provider/EUIBrowserContract$SyncState;,
        Lcom/letv/leui/provider/EUIBrowserContract$Images;,
        Lcom/letv/leui/provider/EUIBrowserContract$ImageMappings;,
        Lcom/letv/leui/provider/EUIBrowserContract$Combined;,
        Lcom/letv/leui/provider/EUIBrowserContract$Settings;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.browser"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "content://com.android.browser"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/provider/EUIBrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
