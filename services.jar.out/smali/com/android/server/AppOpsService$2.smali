.class Lcom/android/server/AppOpsService$2;
.super Landroid/os/Handler;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;-><init>(Ljava/io/File;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 293
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 295
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    iget-boolean v0, v0, Lcom/android/server/AppOpsService;->isCTA:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    sget-object v1, Landroid/app/AppOpsUtils;->CTA_SYSTEM_BLACK_APPS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/AppOpsService;->blackApps:Ljava/util/List;

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    iget-object v2, v2, Lcom/android/server/AppOpsService;->blackApps:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    iget-object v0, v0, Lcom/android/server/AppOpsService;->apps:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    sget-object v1, Landroid/app/AppOpsUtils;->SYSTEM_BLACK_APPS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/AppOpsService;->blackApps:Ljava/util/List;

    goto :goto_1

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
