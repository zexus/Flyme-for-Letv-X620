.class Lcom/letv/storage/OtgGuideDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "OtgGuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/storage/OtgGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/storage/OtgGuideDialog;


# direct methods
.method constructor <init>(Lcom/letv/storage/OtgGuideDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/storage/OtgGuideDialog;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/letv/storage/OtgGuideDialog$1;->this$0:Lcom/letv/storage/OtgGuideDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/letv/storage/OtgGuideDialog$1;->this$0:Lcom/letv/storage/OtgGuideDialog;

    iget-object v1, v1, Lcom/letv/storage/OtgGuideDialog;->mHandler:Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/letv/storage/OtgGuideDialog$OTGDialogHandler;->sendEmptyMessage(I)Z

    .line 64
    :cond_0
    return-void
.end method
