.class Lcom/android/internal/telephony/RIL$3;
.super Landroid/content/BroadcastReceiver;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MODE_CDMA_ASSERT:I = 0x1f

.field private static final MODE_CDMA_RESET:I = 0x20

.field private static final MODE_CDMA_RILD_NE:I = 0x67

.field private static final MODE_GSM_RILD_NE:I = 0x65

.field private static final MODE_PHONE_PROCESS_JE:I = 0x64


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 492
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.mtk.TEST_TRM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    const-string/jumbo v1, "mode"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 494
    .local v0, "mode":I
    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RIL received com.mtk.TEST_TRM, mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    const-string/jumbo v3, ", mInstanceIds = "

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    iget-object v3, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v3}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v3

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 497
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "UserTriggerPhoneJE"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$3;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/RIL;->setTrm(ILandroid/os/Message;)V

    .line 491
    .end local v0    # "mode":I
    :goto_0
    return-void

    .line 502
    :cond_1
    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RIL received unexpected Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
