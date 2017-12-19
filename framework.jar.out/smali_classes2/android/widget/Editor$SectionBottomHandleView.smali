.class Landroid/widget/Editor$SectionBottomHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionBottomHandleView"
.end annotation


# instance fields
.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 6278
    iput-object p1, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    .line 6279
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6281
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableWidth:I

    .line 6282
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableHeight:I

    .line 6283
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mTouchOffsetY:F

    .line 6284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mIsSystemHandle:Z

    .line 6278
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 6309
    iget-object v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

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
    .line 6392
    const/4 v0, 0x0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 6289
    iget v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableWidth:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getHotspotY(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "mDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 6294
    iget v0, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableHeight:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getPosX(Landroid/text/Layout;II)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    .line 6299
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getPosY(Landroid/text/Layout;II)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    .line 6304
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SectionBottomHandleView;->mDrawableHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 6346
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6347
    .local v0, "layout":Landroid/text/Layout;
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 6348
    .local v1, "line":I
    invoke-static {v0, p1}, Lcom/letv/leui/text/LeTextOpt;->isLineEndOffset(Landroid/text/Layout;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6349
    add-int/lit8 v1, v1, -0x1

    .line 6352
    :cond_0
    if-gez v1, :cond_1

    .line 6353
    const/4 v1, 0x0

    .line 6356
    :cond_1
    invoke-virtual {p0, v1, p2}, Landroid/widget/Editor$SectionBottomHandleView;->positionAtCursorline(IZ)V

    .line 6345
    return-void
.end method

.method protected positionAtCursorline(IZ)V
    .locals 5
    .param p1, "line"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 6361
    iget-object v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6362
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 6364
    iget-object v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6365
    return-void

    .line 6368
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPreviousLine:I

    if-eq p1, v3, :cond_4

    const/4 v1, 0x1

    .line 6369
    .local v1, "lineChanged":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    .line 6371
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 6372
    .local v2, "offset":I
    if-eqz v1, :cond_2

    .line 6373
    invoke-virtual {p0, v2}, Landroid/widget/Editor$SectionBottomHandleView;->updateSelection(I)V

    .line 6374
    invoke-virtual {p0, v2}, Landroid/widget/Editor$SectionBottomHandleView;->addPositionToTouchUpFilterExt(I)V

    .line 6377
    :cond_2
    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$SectionBottomHandleView;->getPosX(Landroid/text/Layout;II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionX:I

    .line 6378
    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$SectionBottomHandleView;->getPosY(Landroid/text/Layout;II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionY:I

    .line 6381
    iget v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionX:I

    iget-object v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionX:I

    .line 6382
    iget v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionY:I

    iget-object v4, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionY:I

    .line 6384
    iput p1, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPreviousLine:I

    .line 6385
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/Editor$SectionBottomHandleView;->mPositionHasChanged:Z

    .line 6359
    .end local v2    # "offset":I
    :cond_3
    return-void

    .line 6368
    .end local v1    # "lineChanged":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "lineChanged":Z
    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 6340
    iget-object v1, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 6341
    .local v0, "newline":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$SectionBottomHandleView;->positionAtCursorline(IZ)V

    .line 6339
    return-void
.end method

.method public updateSelection(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 6314
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6315
    .local v1, "startOffset":I
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6316
    .local v0, "endOffset":I
    if-ge v1, p1, :cond_1

    .line 6317
    if-ne v0, p1, :cond_0

    .line 6318
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightPathBogusExt(Z)V

    .line 6319
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 6321
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6324
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SectionBottomHandleView;->updateDrawable()V

    .line 6326
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 6327
    iget-object v2, p0, Landroid/widget/Editor$SectionBottomHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 6313
    :cond_2
    return-void
.end method
