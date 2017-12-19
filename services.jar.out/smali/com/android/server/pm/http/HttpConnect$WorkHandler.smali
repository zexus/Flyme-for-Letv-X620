.class final Lcom/android/server/pm/http/HttpConnect$WorkHandler;
.super Landroid/os/Handler;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/http/HttpConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/http/HttpConnect;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/http/HttpConnect;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/http/HttpConnect;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    .line 62
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-virtual {v2}, Lcom/android/server/pm/http/HttpConnect;->registerConnectChangeReceiver()V

    .line 123
    return-void

    .line 70
    :pswitch_0
    const-string/jumbo v2, "Area"

    const-string/jumbo v3, "handle imei to area"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-wrap0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Response;

    move-result-object v0

    .line 72
    .local v0, "response":Lcom/android/server/pm/http/Response;
    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v2, "Area"

    const-string/jumbo v3, "get imei to area :response is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-virtual {v0}, Lcom/android/server/pm/http/Response;->asString()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/android/server/pm/http/Base;

    invoke-static {v2, v4}, Lcom/android/server/pm/http/HttpConnect;->-wrap1(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/http/Base;

    invoke-static {v3, v2}, Lcom/android/server/pm/http/HttpConnect;->-set0(Lcom/android/server/pm/http/HttpConnect;Lcom/android/server/pm/http/Base;)Lcom/android/server/pm/http/Base;

    .line 79
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v2

    if-nez v2, :cond_1

    .line 80
    const-string/jumbo v2, "Area"

    const-string/jumbo v3, "analysis Respond :mAreaParams is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/http/Base;->errno:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 85
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/http/Base;->errno:Ljava/lang/String;

    const-string/jumbo v3, "10000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/http/Base;->data:Lcom/android/server/pm/http/Base$Data;

    iget-object v2, v2, Lcom/android/server/pm/http/Base$Data;->status:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 87
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/http/Base;->data:Lcom/android/server/pm/http/Base$Data;

    iget-object v2, v2, Lcom/android/server/pm/http/Base$Data;->status:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/http/Base;->data:Lcom/android/server/pm/http/Base$Data;

    iget-object v2, v2, Lcom/android/server/pm/http/Base$Data;->sale_area:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    const-string/jumbo v2, "persist.sys.salesarea"

    iget-object v3, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v3}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/http/Base;->data:Lcom/android/server/pm/http/Base$Data;

    iget-object v3, v3, Lcom/android/server/pm/http/Base$Data;->sale_area:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v2, "Area"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get imei to area :response: SystemProperties.set  sale_area is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v4}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/http/Base;->data:Lcom/android/server/pm/http/Base$Data;

    iget-object v4, v4, Lcom/android/server/pm/http/Base$Data;->sale_area:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string/jumbo v2, "persist.sys.salesarea"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "salesArea":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    const-string/jumbo v2, "Area"

    const-string/jumbo v3, "get imei to area :response: SystemProperties.set  failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-wrap2(Lcom/android/server/pm/http/HttpConnect;)V

    .line 98
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-wrap3(Lcom/android/server/pm/http/HttpConnect;)V

    .line 99
    return-void

    .line 101
    .end local v1    # "salesArea":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "Area"

    const-string/jumbo v3, "get imei to area :response: sale_area is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    :cond_4
    const-string/jumbo v2, "Area"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get imei to area :response: status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v4}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/http/Base;->data:Lcom/android/server/pm/http/Base$Data;

    iget-object v4, v4, Lcom/android/server/pm/http/Base$Data;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 107
    :cond_5
    const-string/jumbo v2, "Area"

    const-string/jumbo v3, "get imei to area :response: status is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 110
    :cond_6
    iget-object v2, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v2}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/http/Base;->errmsg:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 111
    const-string/jumbo v2, "Area"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get imei to area :response: errno is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v4}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/http/Base;->errno:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", errmsg is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v4}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/http/Base;->errmsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_7
    const-string/jumbo v2, "Area"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get imei to area :response: errno is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/http/HttpConnect$WorkHandler;->this$0:Lcom/android/server/pm/http/HttpConnect;

    invoke-static {v4}, Lcom/android/server/pm/http/HttpConnect;->-get0(Lcom/android/server/pm/http/HttpConnect;)Lcom/android/server/pm/http/Base;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/http/Base;->errno:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 117
    :cond_8
    const-string/jumbo v2, "Area"

    const-string/jumbo v3, "get imei to area :response: errno is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
