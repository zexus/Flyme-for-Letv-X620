.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActivatingState"
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$internal$telephony$dataconnection$DataCallResponse$SetupResult:[I

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->values()[Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-com_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcActivatingState: enter dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1983
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DcActivatingState: exit dc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1989
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap7(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2001
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 2246
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState not handled msg.what="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v14

    .line 2246
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2247
    const-string/jumbo v14, " RefCount="

    .line 2246
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 2246
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2249
    const/4 v7, 0x0

    .line 2252
    .local v7, "retVal":Z
    :goto_0
    return v7

    .line 2005
    .end local v7    # "retVal":Z
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap10(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 2006
    const/4 v7, 0x1

    .line 2007
    .restart local v7    # "retVal":Z
    goto :goto_0

    .line 2010
    .end local v7    # "retVal":Z
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2011
    .local v1, "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2013
    .local v3, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap4(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v6

    .line 2014
    .local v6, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    if-eq v6, v12, :cond_0

    .line 2015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v12

    if-eq v12, v3, :cond_0

    .line 2016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2017
    const-string/jumbo v14, " != cp:"

    .line 2016
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2021
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState onSetupConnectionCompleted result="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2022
    const-string/jumbo v14, " dc="

    .line 2021
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2022
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2021
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2024
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v12, :cond_1

    .line 2025
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onSetupConnectionCompleted result="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2027
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->-getcom_android_internal_telephony_dataconnection_DataCallResponse$SetupResultSwitchesValues()[I

    move-result-object v12

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 2120
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Unknown SetupResult, should not happen"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2030
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2031
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2033
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 2122
    :goto_1
    const/4 v7, 0x1

    .line 2123
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 2039
    .end local v7    # "retVal":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2044
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap22(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V

    .line 2045
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get11(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 2049
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get23(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v12

    iget-object v12, v12, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 2050
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v14, 0x40002

    invoke-virtual {v13, v14, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 2049
    invoke-interface {v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    goto :goto_1

    .line 2053
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2053
    invoke-virtual {v12, v13, v1}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->getSuggestedRetryTime(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)I

    move-result v5

    .line 2055
    .local v5, "delay":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DcActivatingState: ERR_RilError  delay="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2057
    const-string/jumbo v13, " isRetryNeeded="

    .line 2055
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2057
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v13

    .line 2055
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2058
    const-string/jumbo v13, " result="

    .line 2055
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2059
    const-string/jumbo v13, " result.isRestartRadioFail="

    .line 2055
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2060
    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v13

    .line 2055
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2061
    const-string/jumbo v13, " result.isPermanentFail="

    .line 2055
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2062
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v13

    iget-object v14, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v13

    .line 2055
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2063
    .local v10, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2064
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v12, :cond_2

    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/dataconnection/ApnContext;->requestLog(Ljava/lang/String;)V

    .line 2065
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2066
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    const/4 v15, 0x0

    .line 2065
    invoke-virtual {v12, v13, v14, v15}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2068
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap5(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 2069
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2070
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v5

    .line 2072
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: FALLBACK PDP retry start, only one IPv4 or IPv6 is accepted, change delay="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PDP_FAIL_FALLBACK_RETRY:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2078
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2079
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const v14, 0x40010

    .line 2078
    invoke-virtual {v12, v14, v13, v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2080
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2083
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: No FALLBACK PDP retry start but at least one IPv4 or IPv6 is accepted"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    sget-object v13, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2088
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get2(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    goto/16 :goto_1

    .line 2092
    :cond_4
    iget-object v12, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v12

    if-nez v12, :cond_5

    .line 2093
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v12, :cond_6

    .line 2094
    iget-object v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2095
    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v13}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v13

    .line 2094
    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/ApnContext;->restartOnError(I)Z

    move-result v12

    .line 2092
    if-eqz v12, :cond_6

    .line 2096
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: ERR_RilError restart radio"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2097
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    .line 2098
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2099
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2100
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: ERR_RilError perm error"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2103
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2104
    :cond_7
    if-ltz v5, :cond_8

    .line 2105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: ERR_RilError retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2106
    const v14, 0x4000a

    invoke-virtual {v12, v14, v13, v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2110
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: ERR_RilError no retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    iget-object v13, v6, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 2116
    .end local v5    # "delay":I
    .end local v10    # "str":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: stale EVENT_SETUP_DATA_CONNECTION_DONE tag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2117
    iget v14, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    .line 2116
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2117
    const-string/jumbo v14, " != mTag:"

    .line 2116
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2116
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2126
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v6    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 2127
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2128
    .restart local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v12, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-ne v12, v13, :cond_15

    .line 2129
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v12

    if-eq v12, v3, :cond_9

    .line 2130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: WEIRD mConnectionsParams:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v14}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get4(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2131
    const-string/jumbo v14, " != cp:"

    .line 2130
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2134
    :cond_9
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2136
    .local v2, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v12, :cond_a

    .line 2137
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [I

    const/4 v13, 0x0

    aget v9, v12, v13

    .line 2138
    .local v9, "rilFailCause":I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v2

    .line 2139
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v2, v12, :cond_a

    .line 2141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE BAD: error was NONE, change to UNKNOWN"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2144
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2147
    .end local v9    # "rilFailCause":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-set5(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 2150
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    const/4 v14, 0x0

    invoke-virtual {v12, v2, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: DcFailCauseManager re-configure retry manager"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2162
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v8

    .line 2164
    .local v8, "retryDelay":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState msg.what=EVENT_GET_LAST_FAIL_DONE cause="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2166
    const-string/jumbo v14, " retryDelay="

    .line 2164
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2167
    const-string/jumbo v14, " isRetryNeeded="

    .line 2164
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v14

    .line 2164
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2168
    const-string/jumbo v14, " dc="

    .line 2164
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2164
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->isRestartRadioFail()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE restart radio"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendRestartRadio()V

    .line 2176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    .line 2233
    .end local v2    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v8    # "retryDelay":I
    :goto_3
    const/4 v7, 0x1

    .line 2234
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 2156
    .end local v7    # "retVal":Z
    .restart local v2    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v11

    .line 2157
    .local v11, "tmpCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    .line 2158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get3(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v13

    const-string/jumbo v14, "default"

    invoke-virtual {v13, v14}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v13

    .line 2157
    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap9(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    .line 2159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12, v11}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    goto/16 :goto_2

    .line 2178
    .end local v11    # "tmpCount":I
    .restart local v8    # "retryDelay":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v2, v13, v14}, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->canHandleFailCause(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v12

    .line 2178
    if-eqz v12, :cond_f

    .line 2181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: mOperator="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v14, v14, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2181
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2185
    sget-object v13, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP002Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2184
    if-ne v12, v13, :cond_d

    .line 2187
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE FALLBACK retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2190
    const v14, 0x4000a

    invoke-virtual {v12, v14, v13, v8}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2193
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCauseManager:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;

    iget-object v12, v12, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager;->mOperator:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2194
    sget-object v13, Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;->OP001Ext:Lcom/mediatek/internal/telephony/dataconnection/DcFailCauseManager$Operator;

    .line 2193
    if-ne v12, v13, :cond_e

    .line 2195
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: SM_CAUSE need retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    .line 2197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2196
    const v14, 0x4000a

    invoke-virtual {v12, v14, v13, v8}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarmExact(III)V

    .line 2198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2200
    :cond_e
    const-string/jumbo v4, "DcActivatingState: SM_CAUSE no retry because exceed retry count"

    .line 2202
    .local v4, "dbgMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-virtual {v12, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2207
    .end local v4    # "dbgMsg":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get9(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isPermanentFail(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v12

    if-nez v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap1(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 2208
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE perm er"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2211
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get18(Lcom/android/internal/telephony/dataconnection/DataConnection;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 2212
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MULTIPLE_PDN_APN_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-eq v2, v12, :cond_12

    .line 2213
    sget-object v12, Lcom/android/internal/telephony/dataconnection/DcFailCause;->DUE_TO_REACH_RETRY_COUNTER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne v2, v12, :cond_13

    .line 2215
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: no retry by NW reject"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2218
    :cond_13
    if-ltz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v12, v12, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2219
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get8(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v13, v13, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    const v14, 0x4000a

    invoke-virtual {v12, v14, v13, v8}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->startRetryAlarm(III)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get24(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2224
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string/jumbo v13, "DcActivatingState: EVENT_GET_LAST_FAIL_DONE no retry"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v12

    invoke-virtual {v12, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    .line 2226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-static {v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-get15(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap23(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V

    goto/16 :goto_3

    .line 2229
    .end local v2    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .end local v8    # "retryDelay":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState: stale EVENT_GET_LAST_FAIL_DONE tag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2230
    iget v14, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    .line 2229
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2230
    const-string/jumbo v14, " != mTag:"

    .line 2229
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget v14, v14, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 2229
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2239
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "DcActivatingState deferMsg: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ", address info: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-wrap10(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V

    .line 2241
    const/4 v7, 0x1

    .line 2242
    .restart local v7    # "retVal":Z
    goto/16 :goto_0

    .line 2001
    nop

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x40001 -> :sswitch_1
        0x40002 -> :sswitch_2
        0x4000b -> :sswitch_0
        0x40012 -> :sswitch_3
        0x40013 -> :sswitch_3
    .end sparse-switch

    .line 2027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
