.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$flags"    # I
    .param p5, "val$observer"    # Landroid/content/pm/IPackageDeleteObserver2;

    .prologue
    .line 13705
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$flags:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 13707
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13708
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$userId:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$flags:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap11(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v5

    .line 13709
    .local v5, "returnCode":I
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v0, :cond_0

    .line 13711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v5, v2}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 13714
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/letv/tracker/agnes/App;

    move-result-object v1

    const-string/jumbo v2, "uninstall"

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->-wrap33(Lcom/android/server/pm/PackageManagerService;Lcom/letv/tracker/agnes/App;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 13719
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1

    .line 13720
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$packageName:Ljava/lang/String;

    const-string/jumbo v2, "D"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap36(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    .line 13706
    :cond_0
    :goto_0
    return-void

    .line 13722
    :cond_1
    const-string/jumbo v0, "wb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DELUXE : D : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13726
    :catch_0
    move-exception v6

    .line 13727
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PackageManager"

    const-string/jumbo v1, "Observer no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
