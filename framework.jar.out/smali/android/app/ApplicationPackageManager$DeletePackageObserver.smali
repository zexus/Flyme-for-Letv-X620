.class Landroid/app/ApplicationPackageManager$DeletePackageObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletePackageObserver"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method private constructor <init>(Landroid/app/ApplicationPackageManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/ApplicationPackageManager;

    .prologue
    .line 2514
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$DeletePackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 2515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ApplicationPackageManager$DeletePackageObserver;->mPackageName:Ljava/lang/String;

    .line 2514
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ApplicationPackageManager;Landroid/app/ApplicationPackageManager$DeletePackageObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ApplicationPackageManager;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager$DeletePackageObserver;-><init>(Landroid/app/ApplicationPackageManager;)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 2521
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 2522
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$DeletePackageObserver;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2523
    const-string/jumbo v1, "ApplicationPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Launch app -----packageName(DeletePackageObserver) is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager$DeletePackageObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2525
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "PackageName"

    iget-object v2, p0, Landroid/app/ApplicationPackageManager$DeletePackageObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2526
    const-string/jumbo v1, "InstallResult"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2527
    const-string/jumbo v1, "android.intent.action.PACKAGE_DELETE_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2528
    iget-object v1, p0, Landroid/app/ApplicationPackageManager$DeletePackageObserver;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-static {v1}, Landroid/app/ApplicationPackageManager;->-get0(Landroid/app/ApplicationPackageManager;)Landroid/app/ContextImpl;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v1, v0, v2}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2520
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2530
    :cond_1
    const-string/jumbo v1, "ApplicationPackageManager"

    const-string/jumbo v2, "Launch app -----packageName(DeletePackageObserver) is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2517
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$DeletePackageObserver;->mPackageName:Ljava/lang/String;

    .line 2516
    return-void
.end method
