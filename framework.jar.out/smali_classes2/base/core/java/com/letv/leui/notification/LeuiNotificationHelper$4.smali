.class Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;
.super Ljava/lang/Object;
.source "LeuiNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;


# direct methods
.method constructor <init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 256
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-set2(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z

    .line 260
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-static {v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->-wrap10(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    .line 258
    return-void
.end method
