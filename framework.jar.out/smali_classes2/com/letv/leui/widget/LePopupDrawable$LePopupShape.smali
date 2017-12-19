.class public Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "LePopupDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LePopupShape"
.end annotation


# instance fields
.field private mArrowHeight:F

.field private mArrowOffset:I

.field private mArrowWidth:F

.field private mBorderPath:Landroid/graphics/Path;

.field private mCurFillColor:I

.field private mFillColorList:Landroid/content/res/ColorStateList;

.field private mFillPath:Landroid/graphics/Path;

.field private mIsArrowOnTop:Z

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mShowArrow:Z


# direct methods
.method public constructor <init>(FIZ)V
    .locals 1
    .param p1, "radiusSize"    # F
    .param p2, "fillColor"    # I
    .param p3, "isArrowOnTop"    # Z

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    .line 120
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_HEIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    .line 121
    sget v0, Lcom/letv/leui/widget/LePopupDrawable;->DEFAULT_ARROW_WIDTH:I

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowWidth:F

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    .line 148
    iput p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    .line 149
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    .line 151
    iput p2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mCurFillColor:I

    .line 152
    iput-boolean p3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    .line 147
    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 1
    .param p1, "radiusSize"    # F
    .param p2, "isArrowOnTop"    # Z

    .prologue
    .line 128
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;-><init>(FIZ)V

    .line 127
    return-void
.end method

.method private updateBoundPath()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 194
    iget v1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowWidth:F

    .line 195
    .local v1, "arrowWidth":F
    iget v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    .line 196
    .local v0, "arrowHeight":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->rect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 197
    .local v2, "r":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 199
    iget-boolean v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    if-eqz v3, :cond_0

    .line 200
    iget-boolean v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    if-eqz v3, :cond_1

    .line 201
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 202
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 203
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 205
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    iget v5, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 193
    return-void

    .line 207
    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 208
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 209
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method private updateShapePath()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 218
    iget v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowWidth:F

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v1, v3, v4

    .line 219
    .local v1, "arrowWidth":F
    iget v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    sub-float v0, v3, v6

    .line 220
    .local v0, "arrowHeight":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->rect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 221
    .local v2, "r":Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 222
    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 223
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 224
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 225
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 227
    iget-boolean v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    if-eqz v3, :cond_0

    .line 228
    iget-boolean v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    if-eqz v3, :cond_1

    .line 229
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 230
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 231
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    iget v5, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 217
    return-void

    .line 235
    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowHeight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 236
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 237
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 238
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    add-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    iget-object v3, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/RectShape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->clone()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;

    .line 274
    .local v0, "shape":Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    .line 275
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillPath:Landroid/graphics/Path;

    .line 276
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 169
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 170
    .local v1, "oldColor":I
    iget v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mCurFillColor:I

    .line 172
    .local v0, "fillColor":I
    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    return-void
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public isArrowOnTop()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    return v0
.end method

.method public isShowArrow()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    return v0
.end method

.method protected onResize(FF)V
    .locals 0
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/RectShape;->onResize(FF)V

    .line 189
    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateBoundPath()V

    .line 190
    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateShapePath()V

    .line 187
    return-void
.end method

.method public setArrowOffset(I)V
    .locals 0
    .param p1, "arrowOffset"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mArrowOffset:I

    .line 131
    return-void
.end method

.method public setArrowVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    if-ne v0, p1, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mShowArrow:Z

    .line 140
    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateShapePath()V

    .line 135
    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "fillColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillColorList:Landroid/content/res/ColorStateList;

    .line 245
    return-void
.end method

.method public setIsArrowOnTop(Z)V
    .locals 1
    .param p1, "isArrowOnTop"    # Z

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    if-ne v0, p1, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mIsArrowOnTop:Z

    .line 160
    invoke-direct {p0}, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->updateShapePath()V

    .line 155
    return-void
.end method

.method public updateTextColors([I)Z
    .locals 4
    .param p1, "state"    # [I

    .prologue
    const/4 v3, 0x0

    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillColorList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mFillColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 259
    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mCurFillColor:I

    if-eq v0, v2, :cond_0

    .line 260
    iput v0, p0, Lcom/letv/leui/widget/LePopupDrawable$LePopupShape;->mCurFillColor:I

    .line 261
    const/4 v1, 0x1

    .line 265
    .end local v0    # "color":I
    :cond_0
    if-eqz v1, :cond_1

    .line 266
    const/4 v2, 0x1

    return v2

    .line 268
    :cond_1
    return v3
.end method
