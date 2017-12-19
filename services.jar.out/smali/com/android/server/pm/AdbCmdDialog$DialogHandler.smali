.class Lcom/android/server/pm/AdbCmdDialog$DialogHandler;
.super Landroid/os/Handler;
.source "AdbCmdDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AdbCmdDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AdbCmdDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AdbCmdDialog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/AdbCmdDialog;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x8

    if-ne v2, v7, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    const v7, 0x10406b5

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "adbInstallSwitchText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    const v7, 0x10406ac

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "refuseText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    const v7, 0x10406ad

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "allowText":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v9, v6, v2

    const/4 v2, 0x1

    aput-object v13, v6, v2

    .line 86
    .local v6, "btn_text":[Ljava/lang/String;
    new-instance v4, Lcom/android/server/pm/AdbCmdDialog$Refuse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-direct {v4, v2}, Lcom/android/server/pm/AdbCmdDialog$Refuse;-><init>(Lcom/android/server/pm/AdbCmdDialog;)V

    .line 87
    .local v4, "refuse":Lcom/android/server/pm/AdbCmdDialog$Refuse;
    new-instance v3, Lcom/android/server/pm/AdbCmdDialog$Allow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-direct {v3, v2}, Lcom/android/server/pm/AdbCmdDialog$Allow;-><init>(Lcom/android/server/pm/AdbCmdDialog;)V

    .line 88
    .local v3, "allow":Lcom/android/server/pm/AdbCmdDialog$Allow;
    new-instance v5, Lcom/android/server/pm/AdbCmdDialog$AlwaysAsk;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-direct {v5, v2}, Lcom/android/server/pm/AdbCmdDialog$AlwaysAsk;-><init>(Lcom/android/server/pm/AdbCmdDialog;)V

    .line 90
    .local v5, "alwaysAsk":Lcom/android/server/pm/AdbCmdDialog$AlwaysAsk;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    new-instance v7, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v15}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v7}, Lcom/android/server/pm/AdbCmdDialog;->-set0(Lcom/android/server/pm/AdbCmdDialog;Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet;

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get1(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get1(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getmDialog()Landroid/app/Dialog;

    move-result-object v12

    .line 94
    .local v12, "mDialog":Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v7, 0x7d3

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    .line 97
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v7, 0x20000

    .line 98
    const/high16 v15, 0x20000

    .line 97
    invoke-virtual {v2, v7, v15}, Landroid/view/Window;->setFlags(II)V

    .line 99
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 100
    .local v11, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x110

    iput v2, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 102
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-virtual {v2}, Lcom/android/server/pm/AdbCmdDialog;->show()V

    .line 104
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get1(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeBottomSheet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LeCheckBox;

    invoke-static {v7, v2}, Lcom/android/server/pm/AdbCmdDialog;->-set1(Lcom/android/server/pm/AdbCmdDialog;Lcom/letv/leui/widget/LeCheckBox;)Lcom/letv/leui/widget/LeCheckBox;

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get2(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v2

    const v7, 0x1040670

    invoke-virtual {v2, v7}, Lcom/letv/leui/widget/LeCheckBox;->setText(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get4(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    move-result-object v2

    .line 109
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v7}, Lcom/android/server/pm/AdbCmdDialog;->-get4(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    move-result-object v7

    const/16 v15, 0x32

    invoke-virtual {v7, v15}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v16, 0x1b58

    .line 108
    move-wide/from16 v0, v16

    invoke-virtual {v2, v7, v0, v1}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    .end local v3    # "allow":Lcom/android/server/pm/AdbCmdDialog$Allow;
    .end local v4    # "refuse":Lcom/android/server/pm/AdbCmdDialog$Refuse;
    .end local v5    # "alwaysAsk":Lcom/android/server/pm/AdbCmdDialog$AlwaysAsk;
    .end local v6    # "btn_text":[Ljava/lang/String;
    .end local v8    # "adbInstallSwitchText":Ljava/lang/String;
    .end local v9    # "allowText":Ljava/lang/String;
    .end local v11    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "mDialog":Landroid/app/Dialog;
    .end local v13    # "refuseText":Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x32

    if-ne v2, v7, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-virtual {v2}, Lcom/android/server/pm/AdbCmdDialog;->dismiss()V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get0(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v7}, Lcom/android/server/pm/AdbCmdDialog;->-get5(Lcom/android/server/pm/AdbCmdDialog;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/pm/AdbCmdResult;->set(Z)V

    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x16

    if-ne v2, v7, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get0(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v7}, Lcom/android/server/pm/AdbCmdDialog;->-get5(Lcom/android/server/pm/AdbCmdDialog;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/pm/AdbCmdResult;->set(Z)V

    goto :goto_0

    .line 118
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get2(Lcom/android/server/pm/AdbCmdDialog;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v14

    .line 119
    .local v14, "remember":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "leui_install_dialog_always_ask"

    const/4 v15, 0x1

    invoke-static {v2, v7, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    const/4 v10, 0x1

    .line 121
    .local v10, "alwayAsk":Z
    :goto_1
    const-string/jumbo v2, "AdbCmdDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, " adbDialog : alwayAsk is :"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, ", remember is "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 148
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get0(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdResult;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v7}, Lcom/android/server/pm/AdbCmdDialog;->-get5(Lcom/android/server/pm/AdbCmdDialog;)Z

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/pm/AdbCmdResult;->set(Z)V

    goto/16 :goto_0

    .line 119
    .end local v10    # "alwayAsk":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "alwayAsk":Z
    goto :goto_1

    .line 124
    :pswitch_1
    if-eqz v14, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "leui_install_dialog_always_ask"

    const/4 v15, 0x0

    invoke-static {v2, v7, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/android/server/pm/AdbCmdDialog;->-set2(Lcom/android/server/pm/AdbCmdDialog;Z)Z

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v15, "leui_allow_adb_install"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get5(Lcom/android/server/pm/AdbCmdDialog;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_4
    invoke-static {v7, v15, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-virtual {v2}, Lcom/android/server/pm/AdbCmdDialog;->dismiss()V

    goto :goto_2

    .line 127
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "leui_install_dialog_always_ask"

    const/4 v15, 0x1

    invoke-static {v2, v7, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 130
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 135
    :pswitch_2
    if-eqz v14, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "leui_install_dialog_always_ask"

    const/4 v15, 0x0

    invoke-static {v2, v7, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/server/pm/AdbCmdDialog;->-set2(Lcom/android/server/pm/AdbCmdDialog;Z)Z

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v15, "leui_allow_adb_install"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get5(Lcom/android/server/pm/AdbCmdDialog;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_6
    invoke-static {v7, v15, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-virtual {v2}, Lcom/android/server/pm/AdbCmdDialog;->dismiss()V

    goto/16 :goto_2

    .line 138
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-static {v2}, Lcom/android/server/pm/AdbCmdDialog;->-get3(Lcom/android/server/pm/AdbCmdDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v7, "leui_install_dialog_always_ask"

    const/4 v15, 0x1

    invoke-static {v2, v7, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 141
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
