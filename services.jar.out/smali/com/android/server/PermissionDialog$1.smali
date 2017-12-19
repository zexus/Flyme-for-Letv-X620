.class Lcom/android/server/PermissionDialog$1;
.super Landroid/os/Handler;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PermissionDialog;-><init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PermissionDialog;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    const/4 v4, 0x1

    .line 134
    .local v4, "mode":I
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v0}, Lcom/android/server/PermissionDialog;->-get0(Lcom/android/server/PermissionDialog;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v5

    .line 135
    .local v5, "remember":Z
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :pswitch_0
    const-string/jumbo v0, "gaozhipeng"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "default:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {v2}, Lcom/android/server/PermissionDialog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v4, 0x1

    .line 148
    const/4 v5, 0x0

    .line 151
    .end local v5    # "remember":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v0}, Lcom/android/server/PermissionDialog;->-get4(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v1}, Lcom/android/server/PermissionDialog;->-get1(Lcom/android/server/PermissionDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v2}, Lcom/android/server/PermissionDialog;->-get5(Lcom/android/server/PermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v3}, Lcom/android/server/PermissionDialog;->-get3(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZ)V

    .line 153
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v0}, Lcom/android/server/PermissionDialog;->-get2(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {v0}, Lcom/android/server/PermissionDialog;->dismiss()V

    .line 132
    return-void

    .line 137
    .restart local v5    # "remember":Z
    :pswitch_1
    const/4 v4, 0x0

    .line 138
    goto :goto_0

    .line 140
    :pswitch_2
    const/4 v4, 0x1

    .line 141
    goto :goto_0

    .line 143
    :pswitch_3
    const/4 v4, 0x0

    .line 144
    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
