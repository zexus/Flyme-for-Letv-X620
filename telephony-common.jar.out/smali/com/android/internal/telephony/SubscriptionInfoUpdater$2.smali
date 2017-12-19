.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;
.super Ljava/lang/Object;
.source "SubscriptionInfoUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I

    .line 1229
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get5(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get6(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap9(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    goto :goto_0
.end method
