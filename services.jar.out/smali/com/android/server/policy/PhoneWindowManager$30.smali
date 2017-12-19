.class Lcom/android/server/policy/PhoneWindowManager$30;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "val$msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 6756
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x7e5

    const/4 v9, 0x5

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 6759
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6760
    const-string/jumbo v4, "android.hardware.type.watch"

    .line 6759
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6760
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6761
    const-string/jumbo v4, "android.hardware.type.television"

    .line 6760
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 6759
    :goto_0
    if-nez v2, :cond_3

    .line 6762
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    if-nez v2, :cond_0

    .line 6763
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v4, Lcom/letv/leui/widget/LeOptimizationDialog;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/16 v6, 0x30

    invoke-direct {v4, v5, v3, v6}, Lcom/letv/leui/widget/LeOptimizationDialog;-><init>(Landroid/content/Context;II)V

    iput-object v4, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    .line 6764
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLeuiBootMsgDialog="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6765
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    const v3, 0x104036f

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeOptimizationDialog;->setTitle(I)V

    .line 6766
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Window;->setType(I)V

    .line 6768
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 6769
    const/16 v3, 0x502

    .line 6768
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6772
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 6773
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6774
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 6775
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6776
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2, v7}, Lcom/letv/leui/widget/LeOptimizationDialog;->setCancelable(Z)V

    .line 6777
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeOptimizationDialog;->show()V

    .line 6779
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->hasSetMarginTop:Z

    if-nez v2, :cond_1

    .line 6780
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeOptimizationDialog;->setMarginTop()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->hasSetMarginTop:Z

    .line 6781
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLeuiBootMsgDialog reset margin top ok ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->hasSetMarginTop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6783
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mLeuiBootMsgDialog:Lcom/letv/leui/widget/LeOptimizationDialog;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeOptimizationDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6784
    return-void

    :cond_2
    move v2, v3

    .line 6759
    goto/16 :goto_0

    .line 6788
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_4

    .line 6790
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6791
    const-string/jumbo v4, "android.hardware.type.watch"

    .line 6790
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6792
    const v1, 0x10304bb

    .line 6800
    .local v1, "theme":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$30$1;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v1}, Lcom/android/server/policy/PhoneWindowManager$30$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$30;Landroid/content/Context;I)V

    iput-object v4, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6823
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6824
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v4, 0x104036f

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 6828
    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 6829
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 6830
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Window;->setType(I)V

    .line 6832
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 6833
    const/16 v3, 0x102

    .line 6832
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6835
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 6836
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6837
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 6838
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6839
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 6840
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 6842
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "theme":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$msg:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6757
    return-void

    .line 6793
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6794
    const-string/jumbo v4, "android.hardware.type.television"

    .line 6793
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6795
    const v1, 0x103049a

    .restart local v1    # "theme":I
    goto/16 :goto_1

    .line 6797
    .end local v1    # "theme":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "theme":I
    goto/16 :goto_1

    .line 6826
    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    const v4, 0x1040370

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto/16 :goto_2
.end method
