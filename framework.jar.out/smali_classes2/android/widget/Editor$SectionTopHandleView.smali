.class Landroid/widget/Editor$SectionTopHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionTopHandleView"
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
    .line 6164
    iput-object p1, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    .line 6165
    invoke-direct {p0, p1, p2, p2}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 6167
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableWidth:I

    .line 6168
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableHeight:I

    .line 6169
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mTouchOffsetY:F

    .line 6170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mIsSystemHandle:Z

    .line 6164
    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 6195
    iget-object v0, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

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
    .line 6270
    const/4 v0, 0x0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 6175
    iget v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableWidth:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getHotspotY(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "mDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 6180
    iget v0, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableHeight:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getPosX(Landroid/text/Layout;II)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I
    .param p3, "line"    # I

    .prologue
    .line 6185
    invoke-virtual {p1}, Landroid/text/Layout;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableWidth:I

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
    .line 6190
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$SectionTopHandleView;->mDrawableHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 6233
    iget-object v1, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 6234
    .local v0, "line":I
    invoke-virtual {p0, v0, p2}, Landroid/widget/Editor$SectionTopHandleView;->positionAtCursorline(IZ)V

    .line 6232
    return-void
.end method

.method protected positionAtCursorline(IZ)V
    .locals 5
    .param p1, "line"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 6239
    iget-object v3, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 6240
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 6242
    iget-object v3, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 6243
    return-void

    .line 6246
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPreviousLine:I

    if-eq p1, v3, :cond_4

    const/4 v1, 0x1

    .line 6248
    .local v1, "lineChanged":Z
    :goto_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    .line 6249
    :cond_1
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 6250
    .local v2, "offset":I
    if-eqz v1, :cond_2

    .line 6251
    invoke-virtual {p0, v2}, Landroid/widget/Editor$SectionTopHandleView;->updateSelection(I)V

    .line 6252
    invoke-virtual {p0, v2}, Landroid/widget/Editor$SectionTopHandleView;->addPositionToTouchUpFilterExt(I)V

    .line 6255
    :cond_2
    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$SectionTopHandleView;->getPosX(Landroid/text/Layout;II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionX:I

    .line 6256
    invoke-virtual {p0, v0, v2, p1}, Landroid/widget/Editor$SectionTopHandleView;->getPosY(Landroid/text/Layout;II)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionY:I

    .line 6259
    iget v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionX:I

    iget-object v4, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionX:I

    .line 6260
    iget v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionY:I

    iget-object v4, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionY:I

    .line 6262
    iput p1, p0, Landroid/widget/Editor$SectionTopHandleView;->mPreviousLine:I

    .line 6263
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/Editor$SectionTopHandleView;->mPositionHasChanged:Z

    .line 6237
    .end local v2    # "offset":I
    :cond_3
    return-void

    .line 6246
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
    .line 6226
    iget-object v1, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 6227
    iget-object v1, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 6228
    .local v0, "newline":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$SectionTopHandleView;->positionAtCursorline(IZ)V

    .line 6225
    return-void
.end method

.method public updateSelection(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 6200
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6201
    .local v1, "startOffset":I
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6202
    .local v0, "endOffset":I
    if-ge p1, v0, :cond_1

    .line 6203
    if-ne v1, p1, :cond_0

    .line 6204
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightPathBogusExt(Z)V

    .line 6205
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 6207
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get7(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6209
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SectionTopHandleView;->updateDrawable()V

    .line 6211
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_2

    .line 6212
    iget-object v2, p0, Landroid/widget/Editor$SectionTopHandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 6199
    :cond_2
    return-void
.end method
