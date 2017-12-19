.class public final Lcom/letv/leui/provider/BrowserContract$Combined;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Lcom/letv/leui/provider/BrowserContract$CommonColumns;
.implements Lcom/letv/leui/provider/BrowserContract$HistoryColumns;
.implements Lcom/letv/leui/provider/BrowserContract$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Combined"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_BOOKMARK:Ljava/lang/String; = "bookmark"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 702
    sget-object v0, Lcom/letv/leui/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "combined"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    .line 693
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
