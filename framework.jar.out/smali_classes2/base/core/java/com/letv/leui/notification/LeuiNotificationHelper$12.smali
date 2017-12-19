.class Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;
.super Ljava/lang/Object;
.source "LeuiNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->setNotificationHeadsUpEnable(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

.field final synthetic val$enable:Z

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$enable"    # Z

    .prologue
    .line 599
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iput-object p2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$pkg:Ljava/lang/String;

    iput-boolean p3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 602
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$pkg:Ljava/lang/String;

    invoke-static {v2, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-wrap0(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "linkPkg":Ljava/lang/String;
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get4(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 604
    .local v1, "oldValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "oldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    iget-boolean v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$enable:Z

    if-eq v2, v5, :cond_2

    .line 605
    :cond_0
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get4(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$pkg:Ljava/lang/String;

    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$enable:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 607
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get4(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v5

    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$enable:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    const-string/jumbo v6, "android.os.action.ACTION_NOTIFICATION_HEADS_UP_ENABLE_CHANGED"

    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$enable:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    const-string/jumbo v7, ".LetvClone"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v5, v6, v0, v2, v7}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-wrap1(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 611
    :cond_1
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get0(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 612
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get0(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v5, v6, v7}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 613
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v2, v3}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-set0(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z

    .line 615
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    const-string/jumbo v5, "android.os.action.ACTION_NOTIFICATION_HEADS_UP_ENABLE_CHANGED"

    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$pkg:Ljava/lang/String;

    iget-boolean v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$enable:Z

    if-eqz v7, :cond_7

    :goto_4
    iget-object v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;->val$pkg:Ljava/lang/String;

    const-string/jumbo v7, ".LetvClone"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v2, v5, v6, v3, v4}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-wrap1(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 601
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 604
    goto :goto_0

    :cond_4
    move v2, v4

    .line 605
    goto :goto_1

    :cond_5
    move v2, v4

    .line 607
    goto :goto_2

    :cond_6
    move v2, v4

    .line 608
    goto :goto_3

    :cond_7
    move v3, v4

    .line 615
    goto :goto_4
.end method
