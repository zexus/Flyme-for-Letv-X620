.class public Lcom/letv/leui/animation/EasingEquations;
.super Ljava/lang/Object;
.source "EasingEquations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static easeInCirc(FFFF)F
    .locals 6
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 146
    div-float/2addr p0, p3

    .line 147
    neg-float v0, p2

    mul-float v1, p0, p0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInCubic(FFFF)F
    .locals 1
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 44
    div-float/2addr p0, p3

    .line 45
    mul-float v0, p2, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInExpo(FFFF)F
    .locals 4
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 127
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-float v2, p0, p3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInOutCirc(FFFF)F
    .locals 6
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 159
    div-float v0, p3, v1

    div-float/2addr p0, v0

    .line 160
    cmpg-float v0, p0, v2

    if-gez v0, :cond_0

    neg-float v0, p2

    div-float/2addr v0, v1

    mul-float v1, p0, p0

    sub-float v1, v2, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0

    .line 161
    :cond_0
    sub-float/2addr p0, v1

    .line 162
    div-float v0, p2, v1

    mul-float v1, p0, p0

    sub-float v1, v2, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInOutCubic(FFFF)F
    .locals 3
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 57
    div-float v0, p3, v2

    div-float/2addr p0, v0

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    div-float v0, p2, v2

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0

    .line 59
    :cond_0
    sub-float/2addr p0, v2

    .line 60
    div-float v0, p2, v2

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInOutExpo(FFFF)F
    .locals 6
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 137
    div-float v0, p3, v2

    div-float/2addr p0, v0

    .line 138
    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    div-float v0, p2, v2

    sub-float v1, p0, v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0

    .line 139
    :cond_0
    sub-float/2addr p0, v1

    .line 140
    div-float v0, p2, v2

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p0

    float-to-double v2, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    add-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInOutQuad(FFFF)F
    .locals 3
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 36
    div-float v0, p3, v1

    div-float/2addr p0, v0

    .line 37
    cmpg-float v0, p0, v2

    if-gez v0, :cond_0

    div-float v0, p2, v1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0

    .line 38
    :cond_0
    sub-float/2addr p0, v2

    .line 39
    neg-float v0, p2

    div-float/2addr v0, v1

    sub-float v1, p0, v1

    mul-float/2addr v1, p0

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInOutQuart(FFFF)F
    .locals 3
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 79
    div-float v0, p3, v2

    div-float/2addr p0, v0

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    div-float v0, p2, v2

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0

    .line 81
    :cond_0
    sub-float/2addr p0, v2

    .line 82
    neg-float v0, p2

    div-float/2addr v0, v2

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInOutQuint(FFFF)F
    .locals 3
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 101
    div-float v0, p3, v2

    div-float/2addr p0, v0

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    div-float v0, p2, v2

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0

    .line 103
    :cond_0
    sub-float/2addr p0, v2

    .line 104
    div-float v0, p2, v2

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInOutSine(FFFF)F
    .locals 6
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 121
    neg-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, p0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    float-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInQuad(FFFF)F
    .locals 1
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 24
    div-float/2addr p0, p3

    .line 25
    mul-float v0, p2, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInQuart(FFFF)F
    .locals 1
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 66
    div-float/2addr p0, p3

    .line 67
    mul-float v0, p2, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInQuint(FFFF)F
    .locals 1
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 88
    div-float/2addr p0, p3

    .line 89
    mul-float v0, p2, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeInSine(FFFF)F
    .locals 6
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 110
    neg-float v0, p2

    div-float v1, p0, p3

    float-to-double v2, v1

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeOutCirc(FFFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 152
    div-float/2addr p0, p3

    .line 153
    sub-float/2addr p0, v1

    .line 154
    mul-float v0, p0, p0

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeOutCubic(FFFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 50
    div-float/2addr p0, p3

    .line 51
    sub-float/2addr p0, v1

    .line 52
    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeOutExpo(FFFF)F
    .locals 4
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 132
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, -0x3ee00000    # -10.0f

    mul-float/2addr v2, p0

    div-float/2addr v2, p3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeOutQuad(FFFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 30
    div-float/2addr p0, p3

    .line 31
    neg-float v0, p2

    mul-float/2addr v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, p0, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeOutQuart(FFFF)F
    .locals 3
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 72
    div-float/2addr p0, p3

    .line 73
    sub-float/2addr p0, v2

    .line 74
    neg-float v0, p2

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    mul-float/2addr v1, p0

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeOutQuint(FFFF)F
    .locals 2
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 94
    div-float/2addr p0, p3

    .line 95
    sub-float/2addr p0, v1

    .line 96
    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public static easeOutSine(FFFF)F
    .locals 4
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 115
    div-float v0, p0, p3

    float-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public static linearTween(FFFF)F
    .locals 1
    .param p0, "t"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .prologue
    .line 18
    mul-float v0, p2, p0

    div-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method
