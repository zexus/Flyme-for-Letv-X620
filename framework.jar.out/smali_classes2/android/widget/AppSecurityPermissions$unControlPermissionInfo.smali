.class Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "unControlPermissionInfo"
.end annotation


# instance fields
.field uncontrolPermissionLabel:Ljava/lang/String;

.field uncontrolPermissionName:Ljava/lang/String;

.field uncontroldescriptionRes:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionName:Ljava/lang/String;

    .line 944
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionLabel:Ljava/lang/String;

    .line 945
    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontroldescriptionRes:Ljava/lang/String;

    .line 948
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionName:Ljava/lang/String;

    .line 949
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontrolPermissionLabel:Ljava/lang/String;

    .line 950
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$unControlPermissionInfo;->uncontroldescriptionRes:Ljava/lang/String;

    .line 947
    return-void
.end method
