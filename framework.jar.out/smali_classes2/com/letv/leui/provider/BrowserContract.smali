.class public Lcom/letv/leui/provider/BrowserContract;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/provider/BrowserContract$BaseSyncColumns;,
        Lcom/letv/leui/provider/BrowserContract$ChromeSyncColumns;,
        Lcom/letv/leui/provider/BrowserContract$SyncColumns;,
        Lcom/letv/leui/provider/BrowserContract$CommonColumns;,
        Lcom/letv/leui/provider/BrowserContract$ImageColumns;,
        Lcom/letv/leui/provider/BrowserContract$HistoryColumns;,
        Lcom/letv/leui/provider/BrowserContract$ImageMappingColumns;,
        Lcom/letv/leui/provider/BrowserContract$Bookmarks;,
        Lcom/letv/leui/provider/BrowserContract$Accounts;,
        Lcom/letv/leui/provider/BrowserContract$History;,
        Lcom/letv/leui/provider/BrowserContract$Searches;,
        Lcom/letv/leui/provider/BrowserContract$SyncState;,
        Lcom/letv/leui/provider/BrowserContract$Images;,
        Lcom/letv/leui/provider/BrowserContract$ImageMappings;,
        Lcom/letv/leui/provider/BrowserContract$Combined;,
        Lcom/letv/leui/provider/BrowserContract$Settings;
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

    sput-object v0, Lcom/letv/leui/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

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
