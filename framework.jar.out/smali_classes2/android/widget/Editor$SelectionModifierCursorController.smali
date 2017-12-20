.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# instance fields
.field private mFlymeCanDragSelection:Z

.field private mFlymeDownMotionX:I

.field private mFlymeDownMotionY:I

.field private mFlymeDragSlop:I

.field private mIsFlymeDragSelectionToTop:Z

.field private mIsFlymeMoved:Z

.field private mBottomHandle:Landroid/widget/Editor$SectionBottomHandleView;

.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDragAcceleratorActive:Z

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mHaventMovedEnoughToStartDrag:Z

.field private mIsInSectionSelection:Z

.field private mLineSelectionIsOn:I

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mSnapShotPopupWindow:Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field private mStartOffset:I

.field private mSwitchedLines:Z

.field private mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    return-void
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsInSectionSelection:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initFlymeExtraFields()V

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    return-void
.end method

.method private initDrawables()V
    .locals 4

    .prologue
    .line 5020
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5024
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 5025
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5026
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    .line 5024
    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getSelectHandleLeft(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set3(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5029
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5033
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 5034
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 5035
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    .line 5033
    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getSelectHandleRight(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set4(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5040
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5041
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 5042
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    .line 5041
    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set1(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5019
    :cond_2
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 5049
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

    if-nez v0, :cond_0

    .line 5050
    new-instance v0, Landroid/widget/Editor$SectionTopHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$SectionTopHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

    .line 5052
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mBottomHandle:Landroid/widget/Editor$SectionBottomHandleView;

    if-nez v0, :cond_1

    .line 5053
    new-instance v0, Landroid/widget/Editor$SectionBottomHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$SectionBottomHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mBottomHandle:Landroid/widget/Editor$SectionBottomHandleView;

    .line 5055
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSnapShotPopupWindow:Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

    if-nez v0, :cond_2

    .line 5056
    new-instance v0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

    .line 5057
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget v2, v2, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSnapZoomMultiplier:F

    .line 5056
    invoke-direct {v0, v1, v2}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;-><init>(Landroid/widget/TextView;F)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSnapShotPopupWindow:Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

    .line 5061
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_3

    .line 5062
    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    .line 5064
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_4

    .line 5065
    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    .line 5068
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 5069
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 5071
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 5047
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 5280
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 5281
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 5282
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5283
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 5280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5278
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method


# virtual methods
.method public enterDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5087
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 5088
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 5090
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 5091
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 5090
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5092
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 5094
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5099
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5101
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionModifierCursorController;->showSnapShotAtOffset(I)V

    .line 5085
    return-void
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 5292
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 5288
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 5075
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 5076
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 5079
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SectionTopHandleView;->hide()V

    .line 5080
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mBottomHandle:Landroid/widget/Editor$SectionBottomHandleView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mBottomHandle:Landroid/widget/Editor$SectionBottomHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SectionBottomHandleView;->hide()V

    .line 5081
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsInSectionSelection:Z

    .line 5074
    return-void
.end method

.method hideSnapShot()V
    .locals 1

    .prologue
    .line 5385
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSnapShotPopupWindow:Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

    if-eqz v0, :cond_0

    .line 5386
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSnapShotPopupWindow:Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->dismiss()V

    .line 5384
    :cond_0
    return-void
.end method

.method public isDragAcceleratorActive()Z
    .locals 1

    .prologue
    .line 5313
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    return v0
.end method

.method public isInSectionMode()Z
    .locals 1

    .prologue
    .line 5358
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsInSectionSelection:Z

    return v0
.end method

.method public isSectionTopDragged()Z
    .locals 1

    .prologue
    .line 5395
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SectionTopHandleView;->isDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 5306
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 5324
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5325
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5327
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->onDetached()V

    .line 5328
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->onDetached()V

    .line 5323
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 25
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5108
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 5109
    .local v11, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 5110
    .local v12, "eventY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0

    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->flymeTouchEvent(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5118
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 5119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/widget/Editor;->mDoubleTap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 5120
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v22, v0

    sub-float v5, v11, v22

    .line 5121
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    move/from16 v22, v0

    sub-float v6, v12, v22

    .line 5122
    .local v6, "deltaY":F
    mul-float v22, v5, v5

    mul-float v23, v6, v6

    add-float v7, v22, v23

    .line 5125
    .local v7, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 5124
    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v20

    .line 5126
    .local v20, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v8

    .line 5127
    .local v8, "doubleTapSlop":I
    mul-int v22, v8, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gez v22, :cond_2

    const/16 v16, 0x1

    .line 5129
    .local v16, "stayedInArea":Z
    :goto_1
    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11, v12}, Landroid/widget/Editor;->-wrap5(Landroid/widget/Editor;FF)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 5130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-wrap8(Landroid/widget/Editor;)Z

    .line 5131
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 5136
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "doubleTapSlop":I
    .end local v16    # "stayedInArea":Z
    .end local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_1
    move-object/from16 v0, p0

    iput v11, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 5137
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 5138
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5139
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    goto/16 :goto_0

    .line 5127
    .restart local v5    # "deltaX":F
    .restart local v6    # "deltaY":F
    .restart local v7    # "distanceSquared":F
    .restart local v8    # "doubleTapSlop":I
    .restart local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :cond_2
    const/16 v16, 0x0

    .restart local v16    # "stayedInArea":Z
    goto :goto_1

    .line 5146
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .end local v8    # "doubleTapSlop":I
    .end local v16    # "stayedInArea":Z
    .end local v20    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 5147
    const-string/jumbo v23, "android.hardware.touchscreen.multitouch.distinct"

    .line 5146
    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 5148
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 5154
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    .line 5153
    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v19

    .line 5155
    .local v19, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v18

    .line 5157
    .local v18, "touchSlop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 5158
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v22, v0

    sub-float v5, v11, v22

    .line 5159
    .restart local v5    # "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    move/from16 v22, v0

    sub-float v6, v12, v22

    .line 5160
    .restart local v6    # "deltaY":F
    mul-float v22, v5, v5

    mul-float v23, v6, v6

    add-float v7, v22, v23

    .line 5162
    .restart local v7    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 5163
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v9

    .line 5165
    .local v9, "doubleTapTouchSlop":I
    mul-int v22, v9, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gtz v22, :cond_8

    const/16 v22, 0x1

    .line 5164
    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 5167
    .end local v9    # "doubleTapTouchSlop":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 5170
    mul-int v22, v18, v18

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v7, v22

    if-gtz v22, :cond_9

    const/16 v22, 0x1

    .line 5169
    :goto_3
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 5174
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v22

    if-nez v22, :cond_0

    .line 5179
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 5180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 5182
    move/from16 v21, v12

    .line 5183
    .local v21, "y":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 5188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 5189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor$SelectionStartHandleView;->getIdealVerticalOffset()F

    move-result v13

    .line 5191
    .local v13, "fingerOffset":F
    :goto_4
    sub-float v21, v12, v13

    .line 5194
    .end local v13    # "fingerOffset":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    .line 5195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v23

    .line 5196
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    move/from16 v24, v0

    .line 5194
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v4

    .line 5197
    .local v4, "currLine":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v4, v0, :cond_b

    .line 5202
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    goto/16 :goto_0

    .line 5165
    .end local v4    # "currLine":I
    .end local v21    # "y":F
    .restart local v5    # "deltaX":F
    .restart local v6    # "deltaY":F
    .restart local v7    # "distanceSquared":F
    .restart local v9    # "doubleTapTouchSlop":I
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 5170
    .end local v9    # "doubleTapTouchSlop":I
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 5190
    .end local v5    # "deltaX":F
    .end local v6    # "deltaY":F
    .end local v7    # "distanceSquared":F
    .restart local v21    # "y":F
    :cond_a
    move/from16 v0, v18

    int-to-float v13, v0

    .restart local v13    # "fingerOffset":F
    goto :goto_4

    .line 5207
    .end local v13    # "fingerOffset":F
    .restart local v4    # "currLine":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v11}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v14

    .line 5209
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v0, v14, :cond_c

    .line 5211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    move-result v14

    .line 5212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    move-result v15

    .line 5218
    .local v15, "startOffset":I
    :goto_5
    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 5219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v15, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5222
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/Editor$SelectionModifierCursorController;->showSnapShotAtOffset(I)V

    goto/16 :goto_0

    .line 5215
    .end local v15    # "startOffset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v14}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    move-result v14

    .line 5216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    move-result v15

    .restart local v15    # "startOffset":I
    goto :goto_5

    .line 5229
    .end local v4    # "currLine":I
    .end local v14    # "offset":I
    .end local v15    # "startOffset":I
    .end local v18    # "touchSlop":I
    .end local v19    # "viewConfig":Landroid/view/ViewConfiguration;
    .end local v21    # "y":F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 5231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 5233
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 5234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v15

    .line 5235
    .restart local v15    # "startOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v10

    .line 5240
    .local v10, "endOffset":I
    if-ge v10, v15, :cond_d

    .line 5241
    move/from16 v17, v10

    .line 5242
    .local v17, "tmp":I
    move v10, v15

    .line 5243
    move/from16 v15, v17

    .line 5246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    move-object/from16 v0, v22

    invoke-static {v0, v15, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5251
    .end local v17    # "tmp":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hideSnapShot()V

    .line 5255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 5256
    if-eq v15, v10, :cond_10

    .line 5257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/Editor$SelectionStartHandleView;->showAtLocation(I)V

    .line 5258
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/Editor$SelectionEndHandleView;->showAtLocation(I)V

    .line 5264
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v22

    if-nez v22, :cond_f

    .line 5265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 5267
    :cond_f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 5268
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5269
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    goto/16 :goto_0

    .line 5260
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_6

    .line 5110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5317
    if-nez p1, :cond_0

    .line 5318
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 5316
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 5296
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 5297
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 5298
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorActive:Z

    .line 5299
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 5295
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 5011
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5012
    return-void

    .line 5014
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 5015
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 5016
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 5010
    return-void
.end method

.method showSnapShot()V
    .locals 2

    .prologue
    .line 5362
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSnapShotPopupWindow:Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

    if-eqz v1, :cond_3

    .line 5363
    const/4 v0, -0x1

    .line 5364
    .local v0, "offset":I
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5365
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 5369
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-void

    .line 5366
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5367
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0

    .line 5370
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionModifierCursorController;->showSnapShotAtOffset(I)V

    .line 5361
    .end local v0    # "offset":I
    :cond_3
    return-void
.end method

.method showSnapShotAtOffset(I)V
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 5375
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSnapShotPopupWindow:Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

    if-eqz v0, :cond_0

    .line 5376
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSnapShotPopupWindow:Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;

    .line 5377
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    .line 5378
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-wrap2(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v3

    .line 5379
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    .line 5380
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    move v1, p1

    .line 5376
    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->showAtOffset(IIIII)V

    .line 5374
    :cond_0
    return-void
.end method

.method public startSectionSelection()V
    .locals 1

    .prologue
    .line 5340
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    iget-boolean v0, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mEnableSectionSelect:Z

    if-eqz v0, :cond_0

    .line 5341
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsInSectionSelection:Z

    .line 5342
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    .line 5343
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    .line 5344
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SectionTopHandleView;->show()V

    .line 5345
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mBottomHandle:Landroid/widget/Editor$SectionBottomHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SectionBottomHandleView;->show()V

    .line 5339
    :cond_0
    return-void
.end method

.method public startWordsSelection()V
    .locals 1

    .prologue
    .line 5350
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsInSectionSelection:Z

    .line 5351
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mTopHandle:Landroid/widget/Editor$SectionTopHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SectionTopHandleView;->hide()V

    .line 5352
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mBottomHandle:Landroid/widget/Editor$SectionBottomHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SectionBottomHandleView;->hide()V

    .line 5353
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    .line 5354
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    .line 5349
    return-void
.end method

.method private flymeTouchDown(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .local v4, "y":F
    float-to-int v5, v3

    iput v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionX:I

    float-to-int v5, v4

    iput v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionY:I

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/widget/Editor;->mLastScrollTime:J

    iput-boolean v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mEnableDragSelection:Z

    if-nez v5, :cond_2

    iput-boolean v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v5

    if-nez v5, :cond_3

    iput-boolean v9, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .local v1, "lineWidth":I
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v6}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .local v2, "textWidth":I
    if-gt v1, v2, :cond_4

    iput-boolean v9, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    goto :goto_0

    :cond_4
    iput-boolean v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    goto :goto_0
.end method

.method private flymeTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->flymeTouchDown(Landroid/view/MotionEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->flymeTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->flymeTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private flymeTouchMove(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v8, v14

    .local v8, "motionX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v9, v14

    .local v9, "motionY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    int-to-float v15, v8

    int-to-float v0, v9

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    .local v10, "offset":I
    const/4 v11, 0x0

    .local v11, "start":I
    const/4 v7, 0x0

    .local v7, "end":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeCanDragSelection:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v14, v14, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeMoved:Z

    if-eqz v14, :cond_2

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v14, v14, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->stopTextActionMode()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v14, v10, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    move v7, v10

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeDragSelectionToTop:Z

    :goto_1
    if-ltz v11, :cond_8

    if-ltz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    if-ne v11, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    if-eq v7, v14, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/widget/TextView;->isOffsetOutOfVisible(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/widget/Editor;->mLastScrollTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    const-wide/16 v16, 0xc8

    cmp-long v14, v14, v16

    if-gez v14, :cond_7

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v14, v14, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionX:I

    sub-int v14, v8, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v2, v14

    .local v2, "delateX":D
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionY:I

    sub-int v14, v9, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    int-to-double v4, v14

    .local v4, "delateY":D
    const-wide/16 v12, 0x0

    .local v12, "tan":D
    const-wide/16 v14, 0x0

    cmpl-double v14, v2, v14

    if-lez v14, :cond_3

    div-double v14, v4, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionX:I

    sub-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDragSlop:I

    if-lt v14, v15, :cond_5

    const-wide v14, 0x3ff3333333333333L    # 1.2

    cmpg-double v14, v12, v14

    if-gez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeMoved:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->hasFocus()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionX:I

    sub-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDragSlop:I

    if-ge v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDownMotionY:I

    sub-int/2addr v14, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDragSlop:I

    if-lt v14, v15, :cond_0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeMoved:Z

    goto/16 :goto_0

    .end local v2    # "delateX":D
    .end local v4    # "delateY":D
    .end local v12    # "tan":D
    :cond_6
    move v11, v10

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeDragSelectionToTop:Z

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroid/widget/Editor;->mLastScrollTime:J

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v14}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v14

    invoke-static {v14, v11, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method private flymeTouchUp(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeMoved:Z

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iput-boolean v1, v0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method private initFlymeExtraFields()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->flymeGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mFlymeDragSlop:I

    return-void
.end method

.method public isDragSelectionToTop()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mIsInDragSelectionMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mIsFlymeDragSelectionToTop:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragging()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isShowing()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public mzUpdateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    return-void
.end method
