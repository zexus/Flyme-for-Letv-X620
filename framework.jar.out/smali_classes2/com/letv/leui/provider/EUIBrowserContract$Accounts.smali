.class public final Lcom/letv/leui/provider/EUIBrowserContract$Accounts;
.super Ljava/lang/Object;
.source "EUIBrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/provider/EUIBrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ROOT_ID:Ljava/lang/String; = "root_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 413
    sget-object v0, Lcom/letv/leui/provider/EUIBrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 412
    sput-object v0, Lcom/letv/leui/provider/EUIBrowserContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    .line 408
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
