.class Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;
.super Ljava/lang/Object;
.source "HotKnotAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hotknot/HotKnotAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HotKnotProxySevice"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hotknot/HotKnotAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/hotknot/HotKnotAdapter;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->this$0:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const-string/jumbo v0, "HotKnotAdapter"

    const-string/jumbo v1, "[HotKnotProxySevice] HotKnotProxySevice constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method


# virtual methods
.method public disable(Z)Z
    .locals 4
    .param p1, "saveState"    # Z

    .prologue
    const/4 v3, 0x0

    .line 221
    const-string/jumbo v1, "HotKnotAdapter"

    const-string/jumbo v2, "[HotKnotProxySevice] disable()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->this$0:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-static {v1}, Lcom/mediatek/hotknot/HotKnotAdapter;->-wrap0(Lcom/mediatek/hotknot/HotKnotAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    return v3

    .line 226
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/hotknot/HotKnotAdapter;->-get0()Lcom/mediatek/hotknot/IHotKnotAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public enable()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 201
    const-string/jumbo v2, "HotKnotAdapter"

    const-string/jumbo v3, "[HotKnotProxySevice] enable()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->this$0:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-static {v2}, Lcom/mediatek/hotknot/HotKnotAdapter;->-wrap0(Lcom/mediatek/hotknot/HotKnotAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    const-string/jumbo v2, "HotKnotAdapter"

    const-string/jumbo v3, "Starting hotknot service"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/hotknot/IHotKnotAdapter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.mediatek.hotknot.service"

    .line 206
    const-string/jumbo v3, "com.mediatek.hotknot.service.HotKnotService"

    .line 205
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    const-string/jumbo v2, "packageName"

    iget-object v3, p0, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->this$0:Lcom/mediatek/hotknot/HotKnotAdapter;

    iget-object v3, v3, Lcom/mediatek/hotknot/HotKnotAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->this$0:Lcom/mediatek/hotknot/HotKnotAdapter;

    iget-object v2, v2, Lcom/mediatek/hotknot/HotKnotAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 211
    return v4

    .line 214
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/hotknot/HotKnotAdapter;->-get0()Lcom/mediatek/hotknot/IHotKnotAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/hotknot/IHotKnotAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public isEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    const-string/jumbo v1, "HotKnotAdapter"

    const-string/jumbo v2, "[HotKnotProxySevice] isEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->this$0:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-static {v1}, Lcom/mediatek/hotknot/HotKnotAdapter;->-wrap0(Lcom/mediatek/hotknot/HotKnotAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    return v3

    .line 193
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/hotknot/HotKnotAdapter;->-get0()Lcom/mediatek/hotknot/IHotKnotAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public setHotKnotCallback(Lcom/mediatek/hotknot/IHotKnotCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/hotknot/IHotKnotCallback;

    .prologue
    .line 234
    const-string/jumbo v1, "HotKnotAdapter"

    const-string/jumbo v2, "[HotKnotProxySevice] setHotKnotCallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotAdapter$HotKnotProxySevice;->this$0:Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-static {v1}, Lcom/mediatek/hotknot/HotKnotAdapter;->-wrap0(Lcom/mediatek/hotknot/HotKnotAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mediatek/hotknot/HotKnotAdapter;->-get0()Lcom/mediatek/hotknot/IHotKnotAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->setHotKnotCallback(Lcom/mediatek/hotknot/IHotKnotCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HotKnotAdapter"

    const-string/jumbo v2, "setHotKnotCallback()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
