.class Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/preference/LeListPreference$DropdownPopup;
    .param p2, "val$layoutListener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iput-object p2, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1137
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get14(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    .line 1138
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get6(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1139
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 1140
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1142
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1143
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference;->handler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1144
    .local v1, "msg":Landroid/os/Message;
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1145
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1147
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get0(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1148
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get0(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->-get0(Lcom/letv/leui/preference/LeListPreference$DropdownPopup;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1151
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get0(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "rotation"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1155
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get0(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v4, v4, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    new-instance v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5$1;-><init>(Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1178
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1179
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1136
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 1153
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreference$DropdownPopup$5;->this$1:Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    iget-object v3, v3, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreference;->-get0(Lcom/letv/leui/preference/LeListPreference;)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "rotation"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 1151
    :array_0
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    .line 1153
    :array_1
    .array-data 4
        -0x3d4c0000    # -90.0f
        0x0
    .end array-data
.end method
