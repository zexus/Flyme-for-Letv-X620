.class public Lcom/letv/leui/animation/LeDampingInterpolator;
.super Ljava/lang/Object;
.source "LeDampingInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mAttenFactor:F

.field private mCycle:F

.field private mInputWhenMaxOutput:F

.field private mMaxOutput:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mInputWhenMaxOutput:F

    .line 16
    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mMaxOutput:F

    .line 20
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    .line 21
    const v0, 0x400514e4    # 2.0794f

    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAttenFactor:F

    .line 22
    const v0, 0x3fb0b33e

    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAmplitude:F

    .line 18
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 6
    .param p1, "cycle"    # F
    .param p2, "atten"    # F

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mInputWhenMaxOutput:F

    .line 16
    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mMaxOutput:F

    .line 28
    iput p1, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    .line 29
    iget v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAttenFactor:F

    .line 30
    iget v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAttenFactor:F

    float-to-double v0, v0

    iget v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAmplitude:F

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mInputWhenMaxOutput:F

    .line 16
    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mMaxOutput:F

    .line 51
    sget-object v2, Lcom/android/internal/R$styleable;->LeDampingInterpolator:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    .line 54
    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 56
    .local v1, "atten":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    iget v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    const/high16 v3, -0x40000000    # -2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAttenFactor:F

    .line 59
    iget v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAttenFactor:F

    float-to-double v2, v2

    iget v4, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide v4, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAmplitude:F

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mInputWhenMaxOutput:F

    .line 16
    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mMaxOutput:F

    .line 35
    if-eqz p2, :cond_0

    .line 36
    sget-object v2, Lcom/android/internal/R$styleable;->LeDampingInterpolator:[I

    invoke-virtual {p2, p3, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    .line 42
    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 44
    .local v1, "atten":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    iget v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    const/high16 v3, -0x40000000    # -2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAttenFactor:F

    .line 47
    iget v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAttenFactor:F

    float-to-double v2, v2

    iget v4, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide v4, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAmplitude:F

    .line 33
    return-void

    .line 38
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "atten":F
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->LeDampingInterpolator:[I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method


# virtual methods
.method public getInputWhenMaxOutput()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mInputWhenMaxOutput:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 8
    .param p1, "t"    # F

    .prologue
    .line 64
    iget v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAmplitude:F

    float-to-double v2, v2

    iget v4, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mAttenFactor:F

    neg-float v4, v4

    mul-float/2addr v4, p1

    float-to-double v4, v4

    const-wide v6, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mCycle:F

    float-to-double v4, v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v4, v6

    float-to-double v6, p1

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v0, v2, v4

    .line 66
    .local v0, "output":D
    iget v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mMaxOutput:F

    double-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 67
    double-to-float v2, v0

    iput v2, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mMaxOutput:F

    .line 68
    iput p1, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mInputWhenMaxOutput:F

    .line 71
    :cond_0
    double-to-float v2, v0

    return v2
.end method

.method public getMaxOutput()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/letv/leui/animation/LeDampingInterpolator;->mMaxOutput:F

    return v0
.end method
