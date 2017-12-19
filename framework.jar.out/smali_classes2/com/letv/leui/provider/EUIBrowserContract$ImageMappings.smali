.class public final Lcom/letv/leui/provider/EUIBrowserContract$ImageMappings;
.super Ljava/lang/Object;
.source "EUIBrowserContract.java"

# interfaces
.implements Lcom/letv/leui/provider/EUIBrowserContract$ImageMappingColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/provider/EUIBrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageMappings"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/image_mappings"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/image_mappings"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 675
    sget-object v0, Lcom/letv/leui/provider/EUIBrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "image_mappings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/provider/EUIBrowserContract$ImageMappings;->CONTENT_URI:Landroid/net/Uri;

    .line 666
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
