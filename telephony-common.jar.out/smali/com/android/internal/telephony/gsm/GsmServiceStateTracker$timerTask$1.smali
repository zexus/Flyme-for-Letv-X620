.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask$1;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;

    .prologue
    .line 4448
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask$1;->this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4450
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask$1;->this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string/jumbo v1, "timerTask invoke getAllCellInfoByRate() in another thread"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4451
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask$1;->this$1:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$timerTask;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->-wrap1(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Ljava/util/List;

    .line 4449
    return-void
.end method
