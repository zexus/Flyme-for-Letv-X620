.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
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
    .locals 4
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 4268
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    .line 4269
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4255
    iput-boolean v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    .line 4261
    iput-boolean v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4266
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    .line 4271
    invoke-static {p1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4270
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 4272
    .local v1, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    .line 4275
    invoke-static {p1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v2, v2, Landroid/widget/TextView;->mLeTextInfo:Lcom/letv/leui/text/LeTextOpt$LeTextInfo;

    .line 4276
    invoke-static {p1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    .line 4275
    invoke-virtual {v2, v3}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->isSystemHandleLeftRes(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsSystemHandle:Z

    .line 4277
    iget-boolean v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsSystemHandle:Z

    if-eqz v2, :cond_0

    .line 4278
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4279
    .local v0, "handleHeight":I
    int-to-float v2, v0

    iput v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchOffsetY:F

    .line 4268
    .end local v0    # "handleHeight":I
    :cond_0
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 4484
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4485
    .local v0, "selectionEnd":I
    if-lt p1, v0, :cond_0

    .line 4487
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->-wrap12(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4488
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4490
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 4483
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4512
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4514
    if-eqz p2, :cond_1

    .line 4515
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 4516
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 4515
    sub-int v2, v3, v4

    .line 4517
    .local v2, "rightEdge":I
    int-to-float v3, v2

    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 4522
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .line 4517
    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "nearEdge":Z
    goto :goto_0

    .line 4519
    .end local v1    # "nearEdge":Z
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    add-int v0, v3, v4

    .line 4520
    .local v0, "leftEdge":I
    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

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
    .line 4305
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4300
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4287
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsSystemHandle:Z

    if-eqz v0, :cond_0

    .line 4288
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 4291
    :cond_0
    if-eqz p2, :cond_1

    .line 4292
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 4294
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected getHotspotY(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "mDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4528
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsSystemHandle:Z

    if-eqz v0, :cond_0

    .line 4529
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 4532
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getPosX(Landroid/text/Layout;II)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    .line 4537
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mHotspotX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 4538
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getHorizontalOffsetExt()I

    move-result v1

    int-to-float v1, v1

    .line 4537
    sub-float/2addr v0, v1

    .line 4538
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->getCursorOffset()I

    move-result v1

    int-to-float v1, v1

    .line 4537
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getPosY(Landroid/text/Layout;II)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    .line 4543
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mIsSystemHandle:Z

    if-eqz v0, :cond_0

    .line 4544
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    return v0

    .line 4547
    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4501
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4502
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 4505
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4506
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 4508
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 4495
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4496
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    .line 4494
    return-void

    .line 4496
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mIsSystemHandle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 4329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v13

    .line 4331
    .local v13, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4332
    .local v16, "selectionEnd":I
    move/from16 v0, v16

    if-lt v13, v0, :cond_0

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x4

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float p2, p2, v22

    .line 4334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v13

    .line 4335
    move/from16 v0, v16

    if-lt v13, v0, :cond_0

    .line 4336
    return-void

    .line 4339
    :cond_0
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 4340
    return-void

    .line 4343
    .end local v13    # "offset":I
    .end local v16    # "selectionEnd":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4344
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_2

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4348
    return-void

    .line 4351
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 4352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    .line 4355
    :cond_3
    const/4 v15, 0x0

    .line 4356
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4357
    .restart local v16    # "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    invoke-static {v0, v11, v1, v2}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v6

    .line 4358
    .local v6, "currLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4360
    .local v8, "initialOffset":I
    move/from16 v0, v16

    if-lt v8, v0, :cond_4

    .line 4363
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4367
    :cond_4
    move v13, v8

    .line 4368
    .restart local v13    # "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap13(Landroid/widget/Editor;I)I

    move-result v7

    .line 4369
    .local v7, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v13}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;I)I

    move-result v19

    .line 4371
    .local v19, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    move/from16 v22, v0

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-nez v22, :cond_5

    .line 4372
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 4375
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v17

    .line 4376
    .local v17, "selectionStart":I
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v18

    .line 4377
    .local v18, "selectionStartRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 4378
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    .line 4384
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_7

    if-eqz v18, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    if-nez v18, :cond_8

    if-eqz v5, :cond_8

    .line 4387
    :cond_7
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4388
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4389
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4390
    return-void

    .line 4391
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    if-eqz v10, :cond_c

    .line 4399
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    move/from16 v22, v0

    sub-float v21, p1, v22

    .line 4400
    .local v21, "xDiff":F
    if-eqz v5, :cond_e

    .line 4401
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-gtz v22, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_d

    :cond_a
    const/4 v9, 0x1

    .line 4407
    .local v9, "isExpanding":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v22

    if-eqz v22, :cond_12

    .line 4408
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/widget/Editor$SelectionStartHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 4409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    if-eqz v22, :cond_12

    .line 4410
    if-eqz v9, :cond_11

    move/from16 v0, v17

    if-ge v13, v0, :cond_11

    .line 4414
    :cond_b
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4415
    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v12

    .line 4417
    .local v12, "nextOffset":I
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4418
    return-void

    .line 4394
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    .end local v21    # "xDiff":F
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4395
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4396
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4397
    return-void

    .line 4401
    .restart local v21    # "xDiff":F
    :cond_d
    const/4 v9, 0x0

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .line 4403
    .end local v9    # "isExpanding":Z
    :cond_e
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-ltz v22, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_10

    :cond_f
    const/4 v9, 0x1

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .end local v9    # "isExpanding":Z
    :cond_10
    const/4 v9, 0x0

    .restart local v9    # "isExpanding":Z
    goto :goto_0

    .line 4410
    :cond_11
    if-eqz v9, :cond_b

    .line 4422
    :cond_12
    if-eqz v9, :cond_1c

    .line 4424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_16

    .line 4428
    :cond_13
    move/from16 v20, v19

    .line 4429
    .local v20, "wordStartOnCurrLine":I
    if-eqz v11, :cond_14

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_14

    .line 4430
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v20

    .line 4432
    :cond_14
    sub-int v22, v7, v20

    div-int/lit8 v22, v22, 0x2

    sub-int v14, v7, v22

    .line 4433
    .local v14, "offsetThresholdToSnap":I
    if-le v13, v14, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_1a

    .line 4436
    :cond_15
    move/from16 v13, v19

    .line 4441
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordStartOnCurrLine":I
    :cond_16
    :goto_2
    if-eqz v11, :cond_1b

    if-ge v13, v8, :cond_1b

    .line 4442
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4444
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v22, v4

    .line 4443
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4448
    .end local v4    # "adjustedX":F
    :goto_3
    const/4 v15, 0x1

    .line 4476
    :cond_17
    :goto_4
    if-eqz v15, :cond_18

    .line 4477
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    .line 4478
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4480
    :cond_18
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 4326
    return-void

    .line 4416
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v12

    .restart local v12    # "nextOffset":I
    goto/16 :goto_1

    .line 4438
    .end local v12    # "nextOffset":I
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v20    # "wordStartOnCurrLine":I
    :cond_1a
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    goto :goto_2

    .line 4446
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordStartOnCurrLine":I
    :cond_1b
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto :goto_3

    .line 4451
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    move/from16 v23, v0

    sub-float v23, p1, v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    .line 4452
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v3, v0, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_20

    .line 4454
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_1f

    .line 4456
    move/from16 v13, v19

    .line 4457
    if-eqz v11, :cond_1e

    if-ge v13, v8, :cond_1e

    .line 4458
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4460
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v22, v4

    .line 4459
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4467
    .end local v4    # "adjustedX":F
    :goto_5
    const/4 v15, 0x1

    .line 4452
    goto/16 :goto_4

    .line 4462
    :cond_1e
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto :goto_5

    .line 4465
    :cond_1f
    move v13, v3

    goto :goto_5

    .line 4468
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_17

    .line 4471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    .line 4472
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v23

    .line 4471
    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto/16 :goto_4
.end method

.method public updateSelection(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4311
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4312
    .local v0, "end":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 4313
    .local v1, "start":I
    if-ne v1, p1, :cond_0

    .line 4314
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4317
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 4318
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 4317
    invoke-static {v2, p1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4319
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 4320
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 4321
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 4309
    :cond_1
    return-void
.end method
