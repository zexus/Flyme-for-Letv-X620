.class public Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "LeRoundRectDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeRoundRectDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeRoundRectShape"
.end annotation


# instance fields
.field private mBorderColorList:Landroid/content/res/ColorStateList;

.field private mCurBorderColor:I

.field private mCurFillColor:I

.field private mDefaultInnerRadii:[F

.field private mDefaultOuterRadii:[F

.field private mFillColorList:Landroid/content/res/ColorStateList;

.field private mFillPath:Landroid/graphics/Path;

.field private mInnerRadii:[F

.field private mInnerRect:Landroid/graphics/RectF;

.field private mInset:Landroid/graphics/RectF;

.field private mOuterRadii:[F

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(F)V
    .locals 3
    .param p1, "inset"    # F

    .prologue
    .line 91
    const/4 v0, 0x0

    const v1, -0x342f2f

    const/4 v2, -0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;-><init>([FFII)V

    .line 90
    return-void
.end method

.method public constructor <init>(FII)V
    .locals 1
    .param p1, "inset"    # F
    .param p2, "borderColor"    # I
    .param p3, "fillColor"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;-><init>([FFII)V

    .line 94
    return-void
.end method

.method public constructor <init>([FFII)V
    .locals 5
    .param p1, "outerRadii"    # [F
    .param p2, "inset"    # F
    .param p3, "borderColor"    # I
    .param p4, "fillColor"    # I

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 112
    if-eqz p1, :cond_0

    array-length v3, p1

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 113
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v4, "outer radii must have >= 8 values"

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mOuterRadii:[F

    .line 117
    if-eqz p1, :cond_2

    .line 118
    array-length v3, p1

    new-array v1, v3, [F

    .line 119
    .local v1, "innerRadii":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 120
    aget v3, p1, v0

    sub-float/2addr v3, p2

    aput v3, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iput-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRadii:[F

    .line 125
    .end local v0    # "i":I
    .end local v1    # "innerRadii":[F
    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p2, p2, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 126
    .local v2, "insets":Landroid/graphics/RectF;
    iput-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 127
    if-eqz v2, :cond_3

    .line 128
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 130
    :cond_3
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    .line 131
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillPath:Landroid/graphics/Path;

    .line 133
    iput p3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mCurBorderColor:I

    .line 134
    iput p4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mCurFillColor:I

    .line 111
    return-void
.end method

.method public constructor <init>([FLandroid/graphics/RectF;[F)V
    .locals 2
    .param p1, "outerRadii"    # [F
    .param p2, "inset"    # Landroid/graphics/RectF;
    .param p3, "innerRadii"    # [F

    .prologue
    const/16 v1, 0x8

    .line 156
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 158
    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "outer radii must have >= 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    if-eqz p3, :cond_1

    array-length v0, p3

    if-ge v0, v1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "inner radii must have >= 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mOuterRadii:[F

    .line 165
    iput-object p2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 166
    iput-object p3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRadii:[F

    .line 168
    if-eqz p2, :cond_2

    .line 169
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 171
    :cond_2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    .line 157
    return-void
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
    .line 289
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->clone()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;

    .line 291
    .local v0, "shape":Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;
    iget-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mOuterRadii:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mOuterRadii:[F

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    :goto_0
    iput-object v1, v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mOuterRadii:[F

    .line 292
    iget-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRadii:[F

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRadii:[F

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    :goto_1
    iput-object v1, v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRadii:[F

    .line 293
    iget-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultOuterRadii:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultOuterRadii:[F

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    :goto_2
    iput-object v1, v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultOuterRadii:[F

    .line 294
    iget-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    :goto_3
    iput-object v1, v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    .line 296
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 297
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 298
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    .line 299
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillPath:Landroid/graphics/Path;

    .line 300
    return-object v0

    :cond_0
    move-object v1, v2

    .line 291
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 292
    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 293
    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 294
    goto :goto_3
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 177
    .local v2, "oldColor":I
    iget v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mCurBorderColor:I

    .line 178
    .local v0, "borderColor":I
    iget v1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mCurFillColor:I

    .line 180
    .local v1, "fillColor":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillColorList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mBorderColorList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_1

    .line 186
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 190
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillColorList:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mBorderColorList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_3

    .line 191
    :cond_2
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    :cond_3
    return-void
.end method

.method public getBorderColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mBorderColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getFillColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected onResize(FF)V
    .locals 11
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/16 v10, 0x8

    const/high16 v9, 0x40000000    # 2.0f

    .line 198
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/RectShape;->onResize(FF)V

    .line 200
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->rect()Landroid/graphics/RectF;

    move-result-object v1

    .line 201
    .local v1, "r":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 202
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 204
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mOuterRadii:[F

    if-eqz v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mOuterRadii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 218
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    .line 220
    iget v6, v1, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    .line 219
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 221
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v3, p1

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRadii:[F

    if-eqz v3, :cond_4

    .line 223
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRadii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 224
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRadii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 197
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultOuterRadii:[F

    if-nez v3, :cond_2

    .line 208
    new-array v3, v10, [F

    iput-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultOuterRadii:[F

    .line 210
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v2, v3, v9

    .line 211
    .local v2, "radius":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultOuterRadii:[F

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultOuterRadii:[F

    aput v2, v3, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultOuterRadii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 226
    .end local v0    # "i":I
    .end local v2    # "radius":F
    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    if-nez v3, :cond_5

    .line 227
    new-array v3, v10, [F

    iput-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    .line 229
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v2, v3, v9

    .line 230
    .restart local v2    # "radius":F
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float v4, v2, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 231
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float v4, v2, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 232
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v4, v2, v4

    const/4 v5, 0x2

    aput v4, v3, v5

    .line 233
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v4, v2, v4

    const/4 v5, 0x3

    aput v4, v3, v5

    .line 234
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float v4, v2, v4

    const/4 v5, 0x4

    aput v4, v3, v5

    .line 235
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float v4, v2, v4

    const/4 v5, 0x5

    aput v4, v3, v5

    .line 236
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v2, v4

    const/4 v5, 0x6

    aput v4, v3, v5

    .line 237
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v2, v4

    const/4 v5, 0x7

    aput v4, v3, v5

    .line 239
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 240
    iget-object v3, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mDefaultInnerRadii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto/16 :goto_1
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "borderColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mBorderColorList:Landroid/content/res/ColorStateList;

    .line 246
    return-void
.end method

.method public setFillColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "fillColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillColorList:Landroid/content/res/ColorStateList;

    .line 254
    return-void
.end method

.method public updateTextColors([I)Z
    .locals 4
    .param p1, "state"    # [I

    .prologue
    const/4 v3, 0x0

    .line 264
    const/4 v1, 0x0

    .line 266
    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mBorderColorList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mBorderColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 268
    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mCurBorderColor:I

    if-eq v0, v2, :cond_0

    .line 269
    iput v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mCurBorderColor:I

    .line 270
    const/4 v1, 0x1

    .line 274
    .end local v0    # "color":I
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillColorList:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mFillColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 276
    .restart local v0    # "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mCurFillColor:I

    if-eq v0, v2, :cond_1

    .line 277
    iput v0, p0, Lcom/letv/leui/widget/LeRoundRectDrawable$LeRoundRectShape;->mCurFillColor:I

    .line 278
    const/4 v1, 0x1

    .line 282
    .end local v0    # "color":I
    :cond_1
    if-eqz v1, :cond_2

    .line 283
    const/4 v2, 0x1

    return v2

    .line 285
    :cond_2
    return v3
.end method
