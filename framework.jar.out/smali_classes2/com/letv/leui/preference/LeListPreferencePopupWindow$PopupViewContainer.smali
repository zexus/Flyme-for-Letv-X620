.class Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "LeListPreferencePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferencePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupViewContainer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindow.PopupViewContainer"


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;


# direct methods
.method public constructor <init>(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferencePopupWindow;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    .line 1617
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1616
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1634
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 1635
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1636
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1639
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 1640
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1641
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1642
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_1

    .line 1643
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1645
    :cond_1
    return v3

    .line 1646
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1647
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1648
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1653
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1649
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->dismiss()V

    .line 1650
    return v3

    .line 1655
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get8(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get8(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    const/4 v0, 0x1

    return v0

    .line 1664
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 1622
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get1(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1624
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1625
    .local v0, "drawableState":[I
    invoke-static {}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get0()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    .line 1626
    return-object v0

    .line 1628
    .end local v0    # "drawableState":[I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1669
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 1670
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 1672
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 1673
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1674
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->dismiss()V

    .line 1675
    return v4

    .line 1673
    :cond_1
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1676
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 1677
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-virtual {v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->dismiss()V

    .line 1678
    return v4

    .line 1680
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get6(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get6(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1685
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method
