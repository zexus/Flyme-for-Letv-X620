.class Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;
.super Ljava/lang/Object;
.source "LeuiNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->setNotificationSubscript(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

.field final synthetic val$count:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p2, "val$pkg"    # Ljava/lang/String;
    .param p3, "val$count"    # I

    .prologue
    .line 480
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iput-object p2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 483
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get6(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    .local v0, "oldValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "oldValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$count:I

    if-eq v1, v2, :cond_1

    .line 485
    :cond_0
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get6(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get7(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    iget-object v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get2(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 489
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-get2(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-set2(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z

    .line 492
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    const-string/jumbo v2, "android.os.action.ACTION_NOTIFICATION_SUBSCRIPT_CHANGED"

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$count:I

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;->val$pkg:Ljava/lang/String;

    const-string/jumbo v6, ".LetvClone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-wrap1(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 482
    :cond_1
    return-void
.end method
