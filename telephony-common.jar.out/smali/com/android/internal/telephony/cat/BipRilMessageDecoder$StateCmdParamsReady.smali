.class Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;
.super Lcom/android/internal/util/State;
.source "BipRilMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipRilMessageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateCmdParamsReady"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;-><init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-get0(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-get0(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-get0(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-wrap2(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-get2(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;)Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateStart;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-wrap3(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/util/IState;)V

    .line 166
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StateCmdParamsReady expecting CMD_PARAMS_READY=2 got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    iget v1, p1, Landroid/os/Message;->what:I

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipRilMessageDecoder$StateCmdParamsReady;->this$0:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->-wrap1(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Landroid/os/Message;)V

    goto :goto_0
.end method
