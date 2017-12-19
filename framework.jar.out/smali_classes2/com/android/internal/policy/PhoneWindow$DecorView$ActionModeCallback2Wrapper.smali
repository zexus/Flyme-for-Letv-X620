.class Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
.super Landroid/view/ActionMode$Callback2;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback2Wrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 3659
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 3660
    iput-object p2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 3659
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3673
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 3677
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v5, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3678
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get0(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 3679
    const/16 v6, 0x17

    .line 3678
    if-lt v5, v6, :cond_4

    const/4 v3, 0x1

    .line 3682
    .local v3, "isMncApp":Z
    :goto_0
    if-eqz v3, :cond_7

    .line 3683
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    if-ne p1, v5, :cond_5

    const/4 v4, 0x1

    .line 3684
    .local v4, "isPrimary":Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    if-ne p1, v5, :cond_6

    const/4 v1, 0x1

    .line 3685
    .local v1, "isFloating":Z
    :goto_2
    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 3686
    const-string/jumbo v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Destroying unexpected ActionMode instance of TYPE_PRIMARY; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3687
    const-string/jumbo v7, " was not the current primary action mode! Expected "

    .line 3686
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3688
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v7

    .line 3686
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 3691
    const-string/jumbo v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Destroying unexpected ActionMode instance of TYPE_FLOATING; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3692
    const-string/jumbo v7, " was not the current floating action mode! Expected "

    .line 3691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3693
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v7

    .line 3691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :cond_1
    :goto_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-ne v5, v8, :cond_a

    const/4 v2, 0x1

    .line 3702
    .local v2, "isLeFloating":Z
    :goto_4
    if-eqz v2, :cond_b

    .line 3703
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap2(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    .line 3704
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set1(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 3757
    :cond_2
    :goto_5
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 3764
    :cond_3
    :goto_6
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    .line 3676
    return-void

    .line 3678
    .end local v1    # "isFloating":Z
    .end local v2    # "isLeFloating":Z
    .end local v3    # "isMncApp":Z
    .end local v4    # "isPrimary":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isMncApp":Z
    goto/16 :goto_0

    .line 3683
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "isPrimary":Z
    goto/16 :goto_1

    .line 3684
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "isFloating":Z
    goto/16 :goto_2

    .line 3696
    .end local v1    # "isFloating":Z
    .end local v4    # "isPrimary":Z
    :cond_7
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v4, 0x1

    .line 3697
    .restart local v4    # "isPrimary":Z
    :goto_7
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-ne v5, v10, :cond_9

    const/4 v1, 0x1

    .restart local v1    # "isFloating":Z
    goto :goto_3

    .line 3696
    .end local v1    # "isFloating":Z
    .end local v4    # "isPrimary":Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "isPrimary":Z
    goto :goto_7

    .line 3697
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "isFloating":Z
    goto :goto_3

    .line 3700
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "isLeFloating":Z
    goto :goto_4

    .line 3707
    :cond_b
    if-eqz v4, :cond_e

    .line 3708
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get4(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 3709
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get6(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3711
    :cond_c
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 3712
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap3(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    .line 3713
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v6

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 3715
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3741
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 3744
    :cond_d
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set2(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto/16 :goto_5

    .line 3745
    :cond_e
    if-eqz v1, :cond_f

    .line 3746
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap1(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    .line 3747
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set1(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto/16 :goto_5

    .line 3750
    :cond_f
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 3751
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 3752
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    .line 3754
    :cond_10
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v5, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-set1(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    goto/16 :goto_5

    .line 3759
    :cond_11
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 3760
    :catch_0
    move-exception v0

    .local v0, "ame":Ljava/lang/AbstractMethodError;
    goto/16 :goto_6

    .line 3713
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    instance-of v0, v0, Landroid/view/ActionMode$Callback2;

    if-eqz v0, :cond_0

    .line 3770
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    check-cast v0, Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3768
    :goto_0
    return-void

    .line 3772
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3668
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestFitSystemWindows()V

    .line 3669
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
