.class public Lcom/letv/leui/widget/SimCardView;
.super Landroid/view/View;
.source "SimCardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final CENTER:I = 0x1

.field private static final CENTER_HORIZONTAL:I = 0x3

.field private static final CENTER_VERTICAL:I = 0x2

.field public static final HAS_SIMCARD:I = 0x0

.field private static final HOOK_DELAY:I = 0x1f4

.field private static final LOCK_ARC_DELAY:I = 0x28a

.field private static final LOCK_ARC_DURATION:I = 0x15e

.field private static final LOCK_ZOOM_DELAY:I = 0x1f4

.field private static final LOCK_ZOOM_DURATION:I = 0x1f4

.field private static final MARK_DELAY:I = 0x1f4

.field private static final MARK_DOWN_DURATION:I = 0xaf

.field private static final MARK_UP_DURATION:I = 0x1f4

.field private static final NORMAL:I = 0x0

.field public static final NO_SIMCARD:I = 0x3

.field private static final SIMCARD_DELAY:I = 0xaf

.field public static final SIMCARD_ERROR:I = 0x1

.field public static final SIMCARD_LOCK:I = 0x2


# instance fields
.field private CIRCLE_ZOOM_OUT_DURATION:I

.field private NORMAL_BACK_BALL_RADIUS:F

.field private NORMAL_RECT_HEIGHT:F

.field private NORMAL_RECT_WIDTH:F

.field private arc:F

.field private centerX:F

.field private centerY:F

.field private hookDownSpeed:F

.field private hookUpSpeed:F

.field private lockScale:F

.field private mBackBallColor:I

.field private mGravity:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mSimCardColor:I

.field private mSimCardStatus:I

.field private mStrokeWidth:F

.field private markDownSpeed:F

.field private markUpSpeed:F

.field private radius:F

.field private rectHeight:F

.field private rectWidth:F

.field private simCardAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/SimCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/SimCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v2, p0, Lcom/letv/leui/widget/SimCardView;->mGravity:I

    .line 33
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    .line 34
    const-string/jumbo v1, "#43AD69"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->mBackBallColor:I

    .line 35
    const/high16 v1, 0x42fe0000    # 127.0f

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    .line 36
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    .line 40
    const-string/jumbo v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->mSimCardColor:I

    .line 43
    const/high16 v1, 0x42980000    # 76.0f

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    .line 44
    const/high16 v1, 0x42c00000    # 96.0f

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    .line 82
    sget-object v1, Lcom/android/internal/R$styleable;->SimCardView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->mGravity:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 90
    iget-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 91
    iget-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 93
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    .line 78
    return-void
.end method

.method private createAnimation()V
    .locals 13

    .prologue
    .line 125
    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    if-nez v9, :cond_0

    .line 126
    const-string/jumbo v9, "radius"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 127
    .local v0, "circleZoomOut":Landroid/animation/ObjectAnimator;
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 128
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    const-string/jumbo v9, "rectWidth"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 132
    .local v8, "simCardWidth":Landroid/animation/ObjectAnimator;
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v9, v9, -0xaf

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 133
    const-wide/16 v10, 0xaf

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 134
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    invoke-virtual {v8, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    const-string/jumbo v9, "rectHeight"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 138
    .local v7, "simCardHeight":Landroid/animation/ObjectAnimator;
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v9, v9, -0xaf

    int-to-long v10, v9

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    const-wide/16 v10, 0xaf

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 140
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    invoke-virtual {v7, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    .line 144
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->mSimCardStatus:I

    packed-switch v9, :pswitch_data_0

    .line 124
    .end local v0    # "circleZoomOut":Landroid/animation/ObjectAnimator;
    .end local v7    # "simCardHeight":Landroid/animation/ObjectAnimator;
    .end local v8    # "simCardWidth":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0    # "circleZoomOut":Landroid/animation/ObjectAnimator;
    .restart local v7    # "simCardHeight":Landroid/animation/ObjectAnimator;
    .restart local v8    # "simCardWidth":Landroid/animation/ObjectAnimator;
    :pswitch_0
    const-string/jumbo v9, "hookDownSpeed"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 147
    iget v10, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v10, v10, -0x1f4

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    .line 146
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 148
    .local v1, "hookDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 149
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 152
    const-string/jumbo v9, "hookUpSpeed"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 153
    iget v10, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v10, v10, -0x1f4

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    .line 152
    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 154
    .local v2, "hookUp":Landroid/animation/ObjectAnimator;
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v9, v9, -0x1f4

    div-int/lit8 v9, v9, 0x3

    add-int/lit16 v9, v9, 0x1f4

    int-to-long v10, v9

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 155
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    aput-object v1, v10, v11

    const/4 v11, 0x4

    aput-object v2, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 162
    .end local v1    # "hookDown":Landroid/animation/ObjectAnimator;
    .end local v2    # "hookUp":Landroid/animation/ObjectAnimator;
    :pswitch_1
    const-string/jumbo v9, "markUpSpeed"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 163
    .local v6, "markUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 165
    invoke-virtual {v6, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    const-string/jumbo v9, "markDownSpeed"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 168
    .local v5, "markDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0xaf

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 170
    invoke-virtual {v5, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    aput-object v6, v10, v11

    const/4 v11, 0x4

    aput-object v5, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 176
    .end local v5    # "markDown":Landroid/animation/ObjectAnimator;
    .end local v6    # "markUp":Landroid/animation/ObjectAnimator;
    :pswitch_2
    const-string/jumbo v9, "lockScale"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 177
    .local v4, "lockZoom":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 180
    const-string/jumbo v9, "arc"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 181
    .local v3, "lockArc":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x15e

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    const-wide/16 v10, 0x28a

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 184
    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    aput-object v4, v10, v11

    const/4 v11, 0x4

    aput-object v3, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 188
    .end local v3    # "lockArc":Landroid/animation/ObjectAnimator;
    .end local v4    # "lockZoom":Landroid/animation/ObjectAnimator;
    :pswitch_3
    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 146
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 152
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 162
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 167
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 176
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 180
    :array_5
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method private measure(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "result":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 202
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 204
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 206
    int-to-float v0, v2

    .line 214
    :cond_0
    :goto_0
    float-to-int v3, v0

    return v3

    .line 208
    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v3, v4

    .line 209
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 211
    int-to-float v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 109
    :cond_0
    iput-object v2, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    .line 111
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->radius:F

    .line 112
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    .line 113
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    .line 114
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    .line 115
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    .line 116
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->markUpSpeed:F

    .line 117
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->markDownSpeed:F

    .line 118
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    .line 119
    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->arc:F

    .line 121
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->invalidate()V

    .line 105
    return-void
.end method

.method public getArc()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->arc:F

    return v0
.end method

.method public getHookDownSpeed()F
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    return v0
.end method

.method public getHookUpSpeed()F
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    return v0
.end method

.method public getLockScale()F
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    return v0
.end method

.method public getMarkDownSpeed()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->markDownSpeed:F

    return v0
.end method

.method public getMarkUpSpeed()F
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->markUpSpeed:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->radius:F

    return v0
.end method

.method public getRectHeight()F
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    return v0
.end method

.method public getRectWidth()F
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->invalidate()V

    .line 325
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 242
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mBackBallColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->radius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mSimCardColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->radius:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 262
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->mSimCardStatus:I

    packed-switch v1, :pswitch_data_0

    .line 241
    :goto_0
    return-void

    .line 264
    :pswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float v8, v1, v3

    .line 265
    .local v8, "hookDownXStart":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    .line 266
    .local v10, "hookDownYStart":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    .line 267
    .local v7, "hookDownXEnd":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float v9, v1, v3

    .line 268
    .local v9, "hookDownYEnd":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    .line 270
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    sub-float v4, v7, v8

    mul-float/2addr v3, v4

    add-float/2addr v3, v8

    .line 271
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    sub-float v5, v9, v10

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    .line 269
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 274
    move v12, v7

    .line 275
    .local v12, "hookUpXStart":F
    move v14, v9

    .line 276
    .local v14, "hookUpYStart":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v11, v1, v3

    .line 277
    .local v11, "hookUpXEnd":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float v13, v1, v3

    .line 278
    .local v13, "hookUpYEnd":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v12, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    .line 280
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    sub-float v4, v11, v12

    mul-float/2addr v3, v4

    add-float/2addr v3, v12

    .line 281
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    sub-float v5, v13, v14

    mul-float/2addr v4, v5

    add-float/2addr v4, v14

    .line 279
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 286
    .end local v7    # "hookDownXEnd":F
    .end local v8    # "hookDownXStart":F
    .end local v9    # "hookDownYEnd":F
    .end local v10    # "hookDownYStart":F
    .end local v11    # "hookUpXEnd":F
    .end local v12    # "hookUpXStart":F
    .end local v13    # "hookUpYEnd":F
    .end local v14    # "hookUpYStart":F
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v3, v1, v3

    .line 287
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->markUpSpeed:F

    mul-float/2addr v5, v6

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    sub-float v5, v1, v5

    .line 288
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 285
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 292
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->markDownSpeed:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v1, v5

    .line 293
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 290
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 296
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mSimCardColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 298
    new-instance v15, Landroid/graphics/RectF;

    .line 299
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 300
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 301
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 302
    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    move/from16 v16, v0

    mul-float v6, v6, v16

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v6, v6, v16

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v6, v6, v16

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v6, v6, v16

    const/high16 v16, 0x40a00000    # 5.0f

    div-float v6, v6, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    move/from16 v16, v0

    mul-float v6, v6, v16

    add-float/2addr v5, v6

    .line 298
    invoke-direct {v15, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 303
    .local v15, "rectF":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    new-instance v2, Landroid/graphics/RectF;

    .line 307
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 308
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 309
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 310
    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v6, v6, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    move/from16 v16, v0

    mul-float v6, v6, v16

    add-float/2addr v5, v6

    .line 306
    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 312
    .local v2, "oval":Landroid/graphics/RectF;
    const/high16 v3, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->arc:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mBackBallColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    .line 318
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 319
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v5, 0x41400000    # 12.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    .line 316
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 219
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 220
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    .line 221
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    .line 223
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->mGravity:I

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    .line 226
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    goto :goto_0

    .line 230
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/SimCardView;->measure(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/SimCardView;->measure(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/SimCardView;->setMeasuredDimension(II)V

    .line 195
    return-void
.end method

.method public setArc(F)V
    .locals 0
    .param p1, "arc"    # F

    .prologue
    .line 398
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->arc:F

    .line 397
    return-void
.end method

.method public setBackBall(I)Lcom/letv/leui/widget/SimCardView;
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 407
    int-to-float v0, p1

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    .line 408
    return-object p0
.end method

.method public setBackBallColor(I)Lcom/letv/leui/widget/SimCardView;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->mBackBallColor:I

    .line 403
    return-object p0
.end method

.method public setHookDownSpeed(F)V
    .locals 0
    .param p1, "hookDownSpeed"    # F

    .prologue
    .line 358
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    .line 357
    return-void
.end method

.method public setHookUpSpeed(F)V
    .locals 0
    .param p1, "hookUpSpeed"    # F

    .prologue
    .line 366
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    .line 365
    return-void
.end method

.method public setLockScale(F)V
    .locals 0
    .param p1, "lockScale"    # F

    .prologue
    .line 390
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    .line 389
    return-void
.end method

.method public setMarkDownSpeed(F)V
    .locals 0
    .param p1, "markDownSpeed"    # F

    .prologue
    .line 382
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->markDownSpeed:F

    .line 381
    return-void
.end method

.method public setMarkUpSpeed(F)V
    .locals 0
    .param p1, "markUpSpeed"    # F

    .prologue
    .line 374
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->markUpSpeed:F

    .line 373
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 334
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->radius:F

    .line 333
    return-void
.end method

.method public setRect(FF)Lcom/letv/leui/widget/SimCardView;
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 417
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    .line 418
    iput p2, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    .line 419
    return-object p0
.end method

.method public setRectHeight(F)V
    .locals 0
    .param p1, "rectHeight"    # F

    .prologue
    .line 350
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    .line 349
    return-void
.end method

.method public setRectWidth(F)V
    .locals 0
    .param p1, "rectWidth"    # F

    .prologue
    .line 342
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    .line 341
    return-void
.end method

.method public setSimCardColor(I)Lcom/letv/leui/widget/SimCardView;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->mSimCardColor:I

    .line 413
    return-object p0
.end method

.method public startAnimation(I)V
    .locals 1
    .param p1, "simCardStatus"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->cancelAnimation()V

    .line 99
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->mSimCardStatus:I

    .line 101
    invoke-direct {p0}, Lcom/letv/leui/widget/SimCardView;->createAnimation()V

    .line 102
    iget-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 96
    return-void
.end method
