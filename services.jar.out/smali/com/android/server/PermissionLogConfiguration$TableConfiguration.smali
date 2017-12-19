.class public Lcom/android/server/PermissionLogConfiguration$TableConfiguration;
.super Ljava/lang/Object;
.source "PermissionLogConfiguration.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionLogConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableConfiguration"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final OPERATION:Ljava/lang/String; = "op"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "pkgName"

.field public static final TABLE_NAME:Ljava/lang/String; = "logs"

.field public static final TIME:Ljava/lang/String; = "time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "content://com.android.providers.permissionlog/logs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/PermissionLogConfiguration$TableConfiguration;->CONTENT_URI:Landroid/net/Uri;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
