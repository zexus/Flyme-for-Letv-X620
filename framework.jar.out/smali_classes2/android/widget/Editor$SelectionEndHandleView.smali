.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 4567
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    .line 4568
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4554
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    .line 4560
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 4565
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    .line 4570
    invoke-static {p1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4569
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4571
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    .line 4574
    invoke-static {p1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v1, v1, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 4575
    invoke-static {p1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    .line 4574
    invoke-virtual {v1, v2}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->isSystemHandleRightRes(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsSystemHandle:Z

    .line 4576
    iget-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsSystemHandle:Z

    if-eqz v1, :cond_0

    .line 4577
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchOffsetY:F

    .line 4567
    :cond_0
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 4783
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4784
    .local v0, "selectionStart":I
    if-gt p1, v0, :cond_0

    .line 4786
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->-wrap12(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4787
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4789
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 4782
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4811
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4813
    if-eqz p2, :cond_1

    .line 4814
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    .line 4815
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 v1, 0x1

    .line 4821
    .end local v0    # "leftEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .line 4815
    .end local v1    # "nearEdge":Z
    .restart local v0    # "leftEdge":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .line 4817
    .end local v0    # "leftEdge":I
    .end local v1    # "nearEdge":Z
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 4818
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 4817
    sub-int v2, v3, v4

    .line 4819
    .local v2, "rightEdge":I
    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    const/4 v1, 0x1

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4603
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4598
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4585
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsSystemHandle:Z

    if-eqz v0, :cond_0

    .line 4586
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 4589
    :cond_0
    if-eqz p2, :cond_1

    .line 4590
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 4592
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getPosX(Landroid/text/Layout;II)I
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 4827
    iget-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsSystemHandle:Z

    if-eqz v1, :cond_2

    .line 4828
    const/4 v0, -0x1

    .line 4829
    .local v0, "prevLineEnd":I
    if-lez p3, :cond_0

    .line 4830
    add-int/lit8 p3, p3, -0x1

    .line 4831
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 4834
    :cond_0
    if-ne p2, v0, :cond_1

    .line 4835
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 4836
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getHorizontalOffsetExt()I

    move-result v2

    int-to-float v2, v2

    .line 4835
    sub-float/2addr v1, v2

    .line 4836
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCursorOffset()I

    move-result v2

    int-to-float v2, v2

    .line 4835
    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 4839
    :cond_1
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 4840
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getHorizontalOffsetExt()I

    move-result v2

    int-to-float v2, v2

    .line 4839
    sub-float/2addr v1, v2

    .line 4840
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCursorOffset()I

    move-result v2

    int-to-float v2, v2

    .line 4839
    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 4843
    .end local v0    # "prevLineEnd":I
    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 4844
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getHorizontalOffsetExt()I

    move-result v2

    int-to-float v2, v2

    .line 4843
    sub-float/2addr v1, v2

    .line 4844
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCursorOffset()I

    move-result v2

    int-to-float v2, v2

    .line 4843
    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected getPosY(Landroid/text/Layout;II)I
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    .line 4849
    iget-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsSystemHandle:Z

    if-eqz v1, :cond_2

    .line 4850
    const/4 v0, -0x1

    .line 4851
    .local v0, "prevLineEnd":I
    if-lez p3, :cond_0

    .line 4852
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 4854
    :cond_0
    if-ne p2, v0, :cond_1

    .line 4855
    add-int/lit8 p3, p3, -0x1

    .line 4857
    :cond_1
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    return v1

    .line 4860
    .end local v0    # "prevLineEnd":I
    :cond_2
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4800
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4801
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 4804
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4805
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 4807
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 4794
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4795
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    .line 4793
    return-void

    .line 4795
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 25
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4627
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mIsSystemHandle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 4628
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v13

    .line 4629
    .local v13, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 4632
    .local v20, "textLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    .line 4633
    .local v18, "selectionStart":I
    move/from16 v0, v18

    if-gt v13, v0, :cond_0

    .line 4634
    move/from16 v0, v18

    if-gt v13, v0, :cond_0

    .line 4635
    return-void

    .line 4638
    :cond_0
    move/from16 v0, v20

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 4639
    return-void

    .line 4642
    .end local v13    # "offset":I
    .end local v18    # "selectionStart":I
    .end local v20    # "textLength":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4643
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_2

    .line 4646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4647
    return-void

    .line 4650
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 4651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    .line 4654
    :cond_3
    const/4 v15, 0x0

    .line 4655
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    .line 4656
    .restart local v18    # "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, p2

    invoke-static {v0, v11, v1, v2}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v6

    .line 4657
    .local v6, "currLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4659
    .local v8, "initialOffset":I
    move/from16 v0, v18

    if-gt v8, v0, :cond_4

    .line 4662
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4666
    :cond_4
    move v13, v8

    .line 4667
    .restart local v13    # "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    move-result v7

    .line 4668
    .local v7, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    move-result v19

    .line 4670
    .local v19, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    move/from16 v23, v0

    const/high16 v24, -0x40800000    # -1.0f

    cmpl-float v23, v23, v24

    if-nez v23, :cond_5

    .line 4671
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 4674
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4675
    .local v16, "selectionEnd":I
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v17

    .line 4676
    .local v17, "selectionEndRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 4677
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    .line 4683
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_7

    if-eqz v17, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    if-nez v17, :cond_8

    if-eqz v5, :cond_8

    .line 4686
    :cond_7
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 4687
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4688
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4689
    return-void

    .line 4690
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    if-eqz v10, :cond_c

    .line 4698
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    move/from16 v23, v0

    sub-float v22, p1, v23

    .line 4699
    .local v22, "xDiff":F
    if-eqz v5, :cond_e

    .line 4700
    const/16 v23, 0x0

    cmpg-float v23, v22, v23

    if-ltz v23, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_d

    :cond_a
    const/4 v9, 0x1

    .line 4706
    .local v9, "isExpanding":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v23

    if-eqz v23, :cond_13

    .line 4707
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/widget/Editor$SelectionEndHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 4708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    if-eqz v5, :cond_11

    const/16 v23, -0x1

    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v23

    .line 4707
    if-eqz v23, :cond_13

    .line 4709
    if-eqz v9, :cond_12

    move/from16 v0, v16

    if-le v13, v0, :cond_12

    .line 4713
    :cond_b
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4714
    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v12

    .line 4716
    .local v12, "nextOffset":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4717
    return-void

    .line 4693
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    .end local v22    # "xDiff":F
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4694
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4695
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 4696
    return-void

    .line 4700
    .restart local v22    # "xDiff":F
    :cond_d
    const/4 v9, 0x0

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .line 4702
    .end local v9    # "isExpanding":Z
    :cond_e
    const/16 v23, 0x0

    cmpl-float v23, v22, v23

    if-gtz v23, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v6, v0, :cond_10

    :cond_f
    const/4 v9, 0x1

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .end local v9    # "isExpanding":Z
    :cond_10
    const/4 v9, 0x0

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .line 4708
    :cond_11
    const/16 v23, 0x1

    goto :goto_1

    .line 4709
    :cond_12
    if-eqz v9, :cond_b

    .line 4721
    :cond_13
    if-eqz v9, :cond_1d

    .line 4723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    move/from16 v23, v0

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v6, v0, :cond_17

    .line 4727
    :cond_14
    move/from16 v21, v7

    .line 4728
    .local v21, "wordEndOnCurrLine":I
    if-eqz v11, :cond_15

    invoke-virtual {v11, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v23

    move/from16 v0, v23

    if-eq v0, v6, :cond_15

    .line 4729
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v21

    .line 4731
    :cond_15
    sub-int v23, v21, v19

    div-int/lit8 v23, v23, 0x2

    add-int v14, v19, v23

    .line 4732
    .local v14, "offsetThresholdToSnap":I
    if-ge v13, v14, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v6, v0, :cond_1b

    .line 4735
    :cond_16
    move v13, v7

    .line 4740
    .end local v14    # "offsetThresholdToSnap":I
    .end local v21    # "wordEndOnCurrLine":I
    :cond_17
    :goto_3
    if-le v13, v8, :cond_1c

    .line 4741
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4743
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v23

    sub-float v23, v4, v23

    .line 4742
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4747
    .end local v4    # "adjustedX":F
    :goto_4
    const/4 v15, 0x1

    .line 4775
    :cond_18
    :goto_5
    if-eqz v15, :cond_19

    .line 4776
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    .line 4777
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4779
    :cond_19
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 4625
    return-void

    .line 4715
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v12

    .restart local v12    # "nextOffset":I
    goto/16 :goto_2

    .line 4737
    .end local v12    # "nextOffset":I
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v21    # "wordEndOnCurrLine":I
    :cond_1b
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    goto :goto_3

    .line 4745
    .end local v14    # "offsetThresholdToSnap":I
    .end local v21    # "wordEndOnCurrLine":I
    :cond_1c
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto :goto_4

    .line 4750
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    move/from16 v24, v0

    add-float v24, v24, p1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    .line 4751
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v3, v0, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_21

    .line 4753
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_20

    .line 4755
    move v13, v7

    .line 4756
    if-le v13, v8, :cond_1f

    .line 4757
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4759
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v23

    sub-float v23, v4, v23

    .line 4758
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4766
    .end local v4    # "adjustedX":F
    :goto_6
    const/4 v15, 0x1

    .line 4751
    goto/16 :goto_5

    .line 4761
    :cond_1f
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto :goto_6

    .line 4764
    :cond_20
    move v13, v3

    goto :goto_6

    .line 4767
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v3, v0, :cond_18

    .line 4770
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v23

    .line 4771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v24

    .line 4770
    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto/16 :goto_5
.end method

.method public updateSelection(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4609
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4610
    .local v1, "start":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4611
    .local v0, "end":I
    if-ne v0, p1, :cond_0

    .line 4612
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4616
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 4617
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 4616
    invoke-static {v2, v3, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4618
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 4619
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 4621
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 4607
    return-void
.end method
