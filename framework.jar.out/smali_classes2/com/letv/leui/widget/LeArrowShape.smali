.class public Lcom/letv/leui/widget/LeArrowShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "LeArrowShape.java"


# static fields
.field private static final RATE_ONE_THIRD:F = 0.33333334f

.field private static final RATE_TWO_THIRD:F = 0.6666667f


# instance fields
.field private mArrowLeft:F

.field private mArrowRadius:F

.field private mArrowStrokeWidth:F

.field private mArrowTop:F

.field private mBoxSize:F

.field private mHalfStrokeWidth:F

.field private mInterpolatedTime:F

.field private mIsInverseAnimation:Z

.field private mIsShowUp:Z

.field private mOneThirdBoxSize:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 1
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsInverseAnimation:Z

    .line 21
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsShowUp:Z

    .line 27
    const/high16 v0, 0x41100000    # 9.0f

    div-float v0, p1, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeArrowShape;->setArrowShape(FZF)V

    .line 26
    return-void
.end method

.method public constructor <init>(FZF)V
    .locals 1
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z
    .param p3, "arrowStrokeWidth"    # F

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsInverseAnimation:Z

    .line 21
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsShowUp:Z

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeArrowShape;->setArrowShape(FZF)V

    .line 30
    return-void
.end method

.method constructor <init>(FZZ)V
    .locals 1
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z
    .param p3, "isWithoutBorder"    # Z

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsInverseAnimation:Z

    .line 21
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsShowUp:Z

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeArrowShape;->setCheckBoxArrowShape(FZZ)V

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 81
    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mInterpolatedTime:F

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mBoxSize:F

    iget-boolean v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsShowUp:Z

    iget-boolean v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsInverseAnimation:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/letv/leui/widget/LeArrowShape;->drawCheckArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFZZ)V

    .line 80
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "interpolatedTime"    # F

    .prologue
    .line 75
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/LeArrowShape;->setInterpolatedTime(F)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LeArrowShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 74
    return-void
.end method

.method public drawCheckArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFZZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "interpolatedTime"    # F
    .param p4, "boxSize"    # F
    .param p5, "isShow"    # Z
    .param p6, "inverseAnimate"    # Z

    .prologue
    .line 88
    const/high16 v1, 0x40000000    # 2.0f

    div-float v0, p4, v1

    .line 89
    .local v0, "boxRadius":F
    const/high16 v1, -0x3dcc0000    # -45.0f

    invoke-virtual {p1, v1, v0, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 91
    if-eqz p6, :cond_0

    .line 92
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p3, v1, p3

    .line 94
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    .line 95
    const/4 p3, 0x0

    .line 97
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    .line 98
    const/high16 p3, 0x3f800000    # 1.0f

    .line 101
    :cond_2
    if-eqz p5, :cond_4

    .line 102
    const v1, 0x3eaaaaab

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    .line 104
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowStrokeWidth:F

    add-float/2addr v4, v5

    .line 105
    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    mul-float v6, p4, p3

    add-float/2addr v5, v6

    .line 104
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 106
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    .line 103
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 143
    :goto_0
    const/high16 v1, 0x42340000    # 45.0f

    invoke-virtual {p1, v1, v0, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 85
    return-void

    .line 109
    :cond_3
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowStrokeWidth:F

    add-float/2addr v4, v5

    .line 110
    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v5, v6

    .line 109
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 110
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    .line 108
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 112
    new-instance v1, Landroid/graphics/RectF;

    .line 113
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    .line 114
    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    sub-float/2addr v3, v4

    .line 115
    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    const v5, 0x3eaaaaab

    sub-float v5, p3, v5

    mul-float/2addr v5, p4

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 116
    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    add-float/2addr v5, v6

    .line 112
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 117
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    .line 112
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 120
    :cond_4
    const v1, 0x3f2aaaab

    cmpg-float v1, p3, v1

    if-gez v1, :cond_5

    .line 121
    new-instance v1, Landroid/graphics/RectF;

    .line 122
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    sub-float v3, p4, v3

    mul-float v4, p4, p3

    sub-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 123
    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    sub-float/2addr v3, v4

    .line 124
    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    sub-float v5, p4, v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 125
    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    add-float/2addr v5, v6

    .line 121
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 126
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    .line 121
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 129
    :cond_5
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    .line 130
    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v3, v4

    const v4, 0x3f2aaaab

    sub-float v4, p3, v4

    mul-float/2addr v4, p4

    sub-float/2addr v3, v4

    .line 131
    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowStrokeWidth:F

    add-float/2addr v4, v5

    .line 132
    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v5, v6

    .line 129
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    .line 128
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 135
    new-instance v1, Landroid/graphics/RectF;

    .line 136
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    .line 137
    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    sub-float/2addr v3, v4

    .line 138
    iget v4, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    sub-float v5, p4, v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 139
    iget v5, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    iget v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    add-float/2addr v5, v6

    .line 135
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 140
    iget v2, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    iget v3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    .line 135
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getInterpolatedTime()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mInterpolatedTime:F

    return v0
.end method

.method public isInverseAnimation()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsInverseAnimation:Z

    return v0
.end method

.method public isShowUp()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsShowUp:Z

    return v0
.end method

.method public setArrowShape(FZF)V
    .locals 3
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z
    .param p3, "arrowStrokeWidth"    # F

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    .line 39
    iput p1, p0, Lcom/letv/leui/widget/LeArrowShape;->mBoxSize:F

    .line 40
    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    .line 41
    iput p3, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowStrokeWidth:F

    .line 42
    iget v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowStrokeWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    .line 43
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    .line 44
    div-float v0, p1, v2

    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    .line 45
    div-float v0, p1, v2

    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    .line 47
    invoke-virtual {p0, p1, p1}, Lcom/letv/leui/widget/LeArrowShape;->resize(FF)V

    .line 38
    return-void

    .line 43
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    goto :goto_0
.end method

.method setCheckBoxArrowShape(FZZ)V
    .locals 6
    .param p1, "boxSize"    # F
    .param p2, "isRoundEdge"    # Z
    .param p3, "isWithoutBorder"    # Z

    .prologue
    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    .line 148
    iput p1, p0, Lcom/letv/leui/widget/LeArrowShape;->mBoxSize:F

    .line 149
    iget v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mBoxSize:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mOneThirdBoxSize:F

    .line 150
    iget v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mBoxSize:F

    mul-float/2addr v0, v2

    const/high16 v1, 0x41d80000    # 27.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowStrokeWidth:F

    .line 151
    iget v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowStrokeWidth:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mHalfStrokeWidth:F

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowRadius:F

    .line 153
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mBoxSize:F

    div-float/2addr v0, v3

    :goto_0
    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowLeft:F

    .line 154
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mBoxSize:F

    div-float/2addr v0, v3

    :goto_1
    iput v0, p0, Lcom/letv/leui/widget/LeArrowShape;->mArrowTop:F

    .line 156
    invoke-virtual {p0, p1, p1}, Lcom/letv/leui/widget/LeArrowShape;->resize(FF)V

    .line 147
    return-void

    .line 153
    :cond_0
    mul-float v0, p1, v4

    div-float/2addr v0, v5

    goto :goto_0

    .line 154
    :cond_1
    mul-float v0, p1, v4

    div-float/2addr v0, v5

    goto :goto_1
.end method

.method public setInterpolatedTime(F)V
    .locals 0
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/letv/leui/widget/LeArrowShape;->mInterpolatedTime:F

    .line 50
    return-void
.end method

.method public setIsInverseAnimation(Z)V
    .locals 0
    .param p1, "isInverse"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsInverseAnimation:Z

    .line 58
    return-void
.end method

.method public setIsShowUp(Z)V
    .locals 0
    .param p1, "isShowUp"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeArrowShape;->mIsShowUp:Z

    .line 66
    return-void
.end method
