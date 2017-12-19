.class Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "LeListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$1;
    }
.end annotation


# static fields
.field private static final CLICK_ANIM_ALPHA:I = 0x80

.field private static final CLICK_ANIM_DURATION:J = 0x96L

.field private static final DRAWABLE_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClickAnimation:Landroid/animation/Animator;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;


# direct methods
.method static synthetic -set0(Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 634
    new-instance v0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$1;

    const-string/jumbo v1, "alpha"

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    .line 633
    sput-object v0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    .line 625
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 696
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 697
    iput-boolean p2, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 699
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 695
    return-void
.end method

.method private clearPressedItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 789
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 790
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 791
    invoke-static {}, Lcom/letv/leui/widget/LeListPopupWindow;->-get0()Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->updateSelectorState(Landroid/widget/AbsListView;)V

    .line 793
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 795
    iput-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 788
    :cond_0
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/16 v3, 0xff

    .line 769
    invoke-virtual {p0, p2}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 771
    .local v4, "id":J
    invoke-static {}, Lcom/letv/leui/widget/LeListPopupWindow;->-get0()Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->getListSelector(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/16 v2, 0x80

    .line 770
    filled-new-array {v3, v2, v3}, [I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 772
    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 773
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 774
    new-instance v0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;-><init>(Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 780
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 782
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 785
    :cond_0
    iput-object v6, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 768
    return-void
.end method

.method private setPressedItem(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 804
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 805
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->layoutChildren()V

    .line 808
    invoke-static {}, Lcom/letv/leui/widget/LeListPopupWindow;->-get0()Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->setSelectedPositionInt(Landroid/widget/ListView;I)V

    .line 809
    invoke-static {}, Lcom/letv/leui/widget/LeListPopupWindow;->-get0()Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcom/letv/leui/widget/LeListPopupWindow$HiddenMethodReflector;->positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V

    .line 813
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->refreshDrawableState()V

    .line 815
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 817
    iput-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 799
    :cond_0
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 709
    const/4 v4, 0x1

    .line 710
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 712
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 713
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 746
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 747
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->clearPressedItem()V

    .line 751
    :cond_2
    if-eqz v4, :cond_7

    .line 752
    iget-object v8, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v8, :cond_3

    .line 753
    new-instance v8, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v8, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 755
    :cond_3
    iget-object v8, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 756
    iget-object v8, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 761
    :cond_4
    :goto_1
    return v4

    .line 715
    :pswitch_0
    const/4 v4, 0x0

    .line 716
    goto :goto_0

    .line 718
    :pswitch_1
    const/4 v4, 0x0

    .line 721
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 722
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 723
    const/4 v4, 0x0

    .line 724
    goto :goto_0

    .line 727
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 728
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 729
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 730
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 731
    const/4 v3, 0x1

    .line 732
    goto :goto_0

    .line 735
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 736
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v5}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;I)V

    .line 737
    const/4 v4, 0x1

    .line 739
    if-ne v0, v10, :cond_0

    .line 740
    invoke-direct {p0, v2, v5}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 757
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v8, :cond_4

    .line 758
    iget-object v8, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_1

    .line 713
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
