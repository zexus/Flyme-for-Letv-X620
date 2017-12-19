.class public Landroid/app/AppOpsManager$PermissionInstallResult;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionInstallResult"
.end annotation


# instance fields
.field public customPermsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsUtils$AppOpsItem;",
            ">;"
        }
    .end annotation
.end field

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsUtils$AppOpsItem;",
            ">;"
        }
    .end annotation
.end field

.field public noPassPerms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/AppOpsManager;


# direct methods
.method constructor <init>(Landroid/app/AppOpsManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/AppOpsManager;

    .prologue
    .line 2693
    iput-object p1, p0, Landroid/app/AppOpsManager$PermissionInstallResult;->this$0:Landroid/app/AppOpsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    .line 2695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$PermissionInstallResult;->noPassPerms:Ljava/util/List;

    .line 2697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$PermissionInstallResult;->customPermsItems:Ljava/util/List;

    .line 2693
    return-void
.end method
