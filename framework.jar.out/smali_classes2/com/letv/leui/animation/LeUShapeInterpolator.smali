.class public Lcom/letv/leui/animation/LeUShapeInterpolator;
.super Ljava/lang/Object;
.source "LeUShapeInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mHeadInterpolator:Landroid/view/animation/Interpolator;

.field private mRearInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 14
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    const v1, 0x3eaaaaab

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 16
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/letv/leui/animation/LeUShapeInterpolator;->mHeadInterpolator:Landroid/view/animation/Interpolator;

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 18
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    const v3, 0x3f2aaaab

    move v1, v4

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 20
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Lcom/letv/leui/animation/LeUShapeInterpolator;->mRearInterpolator:Landroid/view/animation/Interpolator;

    .line 12
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 25
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/letv/leui/animation/LeUShapeInterpolator;->mHeadInterpolator:Landroid/view/animation/Interpolator;

    mul-float v1, v2, p1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/animation/LeUShapeInterpolator;->mRearInterpolator:Landroid/view/animation/Interpolator;

    sub-float v1, p1, v1

    mul-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    return v0
.end method
