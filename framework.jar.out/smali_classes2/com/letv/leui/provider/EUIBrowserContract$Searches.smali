.class public final Lcom/letv/leui/provider/EUIBrowserContract$Searches;
.super Ljava/lang/Object;
.source "EUIBrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/provider/EUIBrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Searches"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/searches"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/searches"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final _ID:Ljava/lang/String; = "id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 494
    sget-object v0, Lcom/letv/leui/provider/EUIBrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "searches"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/provider/EUIBrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    .line 488
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
