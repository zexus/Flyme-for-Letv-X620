.class Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;
.super Ljava/lang/Object;
.source "CdmaCallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaCallTracker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field final synthetic val$dialString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;
    .param p2, "val$dialString"    # Ljava/lang/String;

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->val$dialString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1224
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1223
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V

    .line 1226
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->-get0(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)Lcom/mediatek/common/telephony/cdma/ICdmaCallTrackerExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->val$dialString:Ljava/lang/String;

    .line 1227
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->val$dialString:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1226
    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/cdma/ICdmaCallTrackerExt;->needToConvert(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 1230
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCallTracker$1;->val$dialString:Ljava/lang/String;

    .line 1229
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1228
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->setConverted(Ljava/lang/String;)V

    .line 1221
    :cond_0
    return-void
.end method
