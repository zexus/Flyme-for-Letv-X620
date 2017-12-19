.class public Lcom/letv/leui/animation/LeBounceInterpolator;
.super Ljava/lang/Object;
.source "LeBounceInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mBounceHeight:[F

.field private mTime:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v4, Lcom/android/internal/R$styleable;->LeBounceInterpolator:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 52
    .local v2, "bounceHeightStr":[Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    if-eqz v2, :cond_1

    .line 55
    array-length v4, v2

    new-array v1, v4, [F

    .line 56
    .local v1, "bounceHeight":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 57
    aget-object v4, v2, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, v1}, Lcom/letv/leui/animation/LeBounceInterpolator;->init([F)V

    .line 47
    .end local v1    # "bounceHeight":[F
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p2, :cond_0

    .line 28
    sget-object v4, Lcom/android/internal/R$styleable;->LeBounceInterpolator:[I

    invoke-virtual {p2, p3, v4, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 33
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 35
    .local v2, "bounceHeightStr":[Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    if-eqz v2, :cond_2

    .line 38
    array-length v4, v2

    new-array v1, v4, [F

    .line 39
    .local v1, "bounceHeight":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 40
    aget-object v4, v2, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v3

    .line 39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 30
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "bounceHeight":[F
    .end local v2    # "bounceHeightStr":[Ljava/lang/CharSequence;
    .end local v3    # "i":I
    :cond_0
    sget-object v4, Lcom/android/internal/R$styleable;->LeBounceInterpolator:[I

    invoke-virtual {p1, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 43
    .restart local v1    # "bounceHeight":[F
    .restart local v2    # "bounceHeightStr":[Ljava/lang/CharSequence;
    .restart local v3    # "i":I
    :cond_1
    invoke-direct {p0, v1}, Lcom/letv/leui/animation/LeBounceInterpolator;->init([F)V

    .line 25
    .end local v1    # "bounceHeight":[F
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>([F)V
    .locals 0
    .param p1, "bounceHeight"    # [F

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/letv/leui/animation/LeBounceInterpolator;->init([F)V

    .line 21
    return-void
.end method

.method private getCurve(IF)F
    .locals 3
    .param p1, "i"    # I
    .param p2, "t"    # F

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    aget v0, v0, v2

    div-float v0, p2, v0

    invoke-static {v0}, Lcom/letv/leui/animation/LeBounceInterpolator;->square(F)F

    move-result v0

    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    aget v1, v1, p1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p2, v0

    iget-object v1, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    aget v1, v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/letv/leui/animation/LeBounceInterpolator;->square(F)F

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mBounceHeight:[F

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getDefaultInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/letv/leui/animation/LeBounceInterpolator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/letv/leui/animation/LeBounceInterpolator;-><init>([F)V

    return-object v0

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
    .end array-data
.end method

.method private init([F)V
    .locals 12
    .param p1, "bounceHeight"    # [F

    .prologue
    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    const/4 v8, 0x0

    .line 65
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 66
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "input array should not be null or empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 70
    aget v6, p1, v2

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2

    .line 71
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "bounce height must > 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_3
    array-length v3, p1

    .line 76
    .local v3, "len":I
    new-array v6, v3, [F

    iput-object v6, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mBounceHeight:[F

    .line 77
    iget-object v6, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mBounceHeight:[F

    invoke-static {p1, v8, v6, v8, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 78
    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    .line 80
    const-wide v4, 0x3ff6a0902de00d1bL    # 1.4142

    .line 81
    .local v4, "totalTime":D
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 82
    iget-object v6, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mBounceHeight:[F

    aget v6, v6, v2

    float-to-double v6, v6

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    :cond_4
    const-wide v0, 0x3ff6a0902de00d1bL    # 1.4142

    .line 86
    .local v0, "currentTime":D
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    .line 87
    iget-object v6, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    div-double v8, v0, v4

    double-to-float v7, v8

    aput v7, v6, v2

    .line 88
    iget-object v6, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mBounceHeight:[F

    aget v6, v6, v2

    float-to-double v6, v6

    mul-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 90
    :cond_5
    iget-object v6, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v3

    .line 64
    return-void
.end method

.method private static square(F)F
    .locals 1
    .param p0, "t"    # F

    .prologue
    .line 94
    mul-float v0, p0, p0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/letv/leui/animation/LeBounceInterpolator;->mTime:[F

    aget v1, v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 112
    invoke-direct {p0, v0, p1}, Lcom/letv/leui/animation/LeBounceInterpolator;->getCurve(IF)F

    move-result v1

    return v1

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method
