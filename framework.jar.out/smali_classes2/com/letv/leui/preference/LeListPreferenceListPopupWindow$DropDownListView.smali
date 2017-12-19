.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
.super Landroid/widget/ListView;
.source "LeListPreferenceListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$1;
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
.method static synthetic -set0(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mListSelectionHidden:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1471
    new-instance v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$1;

    const-string/jumbo v1, "alpha"

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$1;-><init>(Ljava/lang/String;)V

    .line 1470
    sput-object v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    .line 1462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 1533
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1534
    iput-boolean p2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

    .line 1536
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setCacheColorHint(I)V

    .line 1532
    return-void
.end method

.method private clearPressedItem()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1629
    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1630
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1632
    const-string/jumbo v0, "updateSelectorState"

    invoke-static {p0, v0, v1, v1}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1636
    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1628
    :cond_0
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/16 v2, 0xff

    .line 1606
    invoke-virtual {p0, p2}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 1608
    .local v4, "id":J
    const-string/jumbo v0, "mSelector"

    invoke-static {p0, v0}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 1611
    .local v7, "mSelector":Landroid/graphics/drawable/Drawable;
    sget-object v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    const/16 v1, 0x80

    .line 1610
    filled-new-array {v2, v1, v2}, [I

    move-result-object v1

    invoke-static {v7, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1612
    .local v6, "anim":Landroid/animation/Animator;
    const-wide/16 v0, 0x96

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1613
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1614
    new-instance v0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView$2;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;Landroid/view/View;IJ)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1620
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 1622
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1625
    :cond_0
    iput-object v6, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1605
    return-void
.end method

.method private setPressedItem(Landroid/view/View;I)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1641
    iput-boolean v5, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mDrawsInPressedState:Z

    .line 1645
    invoke-virtual {p0, v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setPressed(Z)V

    .line 1646
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->layoutChildren()V

    .line 1652
    new-array v0, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v6

    .line 1653
    .local v0, "classes1":[Ljava/lang/Class;
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1655
    .local v2, "objects1":[Ljava/lang/Object;
    new-array v1, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v6

    const-class v4, Landroid/view/View;

    aput-object v4, v1, v5

    .line 1656
    .local v1, "classes2":[Ljava/lang/Class;
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p1, v3, v5

    .line 1659
    .local v3, "objects2":[Ljava/lang/Object;
    const-string/jumbo v4, "setSelectedPositionInt"

    invoke-static {p0, v4, v0, v2}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    const-string/jumbo v4, "positionSelector"

    invoke-static {p0, v4, v1, v3}, Lcom/letv/leui/util/LeReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->refreshDrawableState()V

    .line 1666
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    .line 1667
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1668
    iput-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mClickAnimation:Landroid/animation/Animator;

    .line 1640
    :cond_0
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

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
    .line 1709
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

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
    .line 1719
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

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
    .line 1699
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mListSelectionHidden:Z

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

    .line 1546
    const/4 v4, 0x1

    .line 1547
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 1549
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1550
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 1583
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 1584
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->clearPressedItem()V

    .line 1588
    :cond_2
    if-eqz v4, :cond_7

    .line 1589
    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-nez v8, :cond_3

    .line 1590
    new-instance v8, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-direct {v8, p0}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;-><init>(Landroid/widget/AbsListView;)V

    iput-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    .line 1592
    :cond_3
    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    .line 1593
    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1598
    :cond_4
    :goto_1
    return v4

    .line 1552
    :pswitch_0
    const/4 v4, 0x0

    .line 1553
    goto :goto_0

    .line 1555
    :pswitch_1
    const/4 v4, 0x0

    .line 1558
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1559
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 1560
    const/4 v4, 0x0

    .line 1561
    goto :goto_0

    .line 1564
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 1565
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 1566
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 1567
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 1568
    const/4 v3, 0x1

    .line 1569
    goto :goto_0

    .line 1572
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1573
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->setPressedItem(Landroid/view/View;I)V

    .line 1574
    const/4 v4, 0x1

    .line 1576
    if-ne v0, v10, :cond_0

    .line 1577
    invoke-direct {p0, v2, v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 1594
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    if-eqz v8, :cond_4

    .line 1595
    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->mScrollHelper:Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;->setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;

    goto :goto_1

    .line 1550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
