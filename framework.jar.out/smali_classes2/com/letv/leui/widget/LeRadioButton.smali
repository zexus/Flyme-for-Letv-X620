.class public Lcom/letv/leui/widget/LeRadioButton;
.super Landroid/widget/RadioButton;
.source "LeRadioButton.java"

# interfaces
.implements Lcom/letv/leui/widget/LeCheckable;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# static fields
.field private static final DISABLE_ALPHA:I = 0x4c


# instance fields
.field private mAlpha:I

.field private mAnimateTextColorOnChecked:I

.field private mAnimateTextColorOrigin:I

.field private mAnimateTextView:Landroid/widget/TextView;

.field private mAnimateTextViewColor:I

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private final mArrawShape:Lcom/letv/leui/widget/LeArrowShape;

.field private mArrowColor:I

.field private mArrowColorWithoutBorder:I

.field private mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

.field private mArrowInterpolatedTime:F

.field private mArrowShownAnimator:Landroid/animation/ObjectAnimator;

.field private mBoxBorderColor:I

.field private mBoxBottom:I

.field private mBoxInnerPadding:I

.field private mBoxLeft:I

.field private mBoxRight:I

.field private mBoxSize:I

.field private mBoxTop:I

.field private mBoxTrackColor:I

.field private mBoxTrackColorOn:I

.field private mCircleBoxRadius:I

.field private mCirclePath:Landroid/graphics/Path;

.field private mCurrentAnimatior:Landroid/animation/Animator;

.field private mDynimacRadius:I

.field private final mHiddenAnimatior:Landroid/animation/Animator;

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsAnimating:Z

.field private mIsBoxTextOnRight:Z

.field private final mMaxCircleRadius:I

.field private final mMeasureSize:I

.field mSaveLayerRectF:Landroid/graphics/RectF;

.field private final mShowAnimatior:Landroid/animation/Animator;

.field private mTextColorOnChecked:Landroid/content/res/ColorStateList;

.field private mWithoutBoxBorder:Z

.field private mZoomInAnimator:Landroid/animation/AnimatorSet;

.field private mZoomOutAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 84
    invoke-direct/range {p0 .. p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mDynimacRadius:I

    .line 54
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    .line 55
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mInvalidateRect:Landroid/graphics/Rect;

    .line 56
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mCirclePath:Landroid/graphics/Path;

    .line 72
    const/16 v21, 0xff

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mAlpha:I

    .line 73
    new-instance v21, Landroid/graphics/RectF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 88
    .local v19, "res":Landroid/content/res/Resources;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mIsBoxTextOnRight:Z

    .line 89
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    .line 90
    const v21, 0x106011a

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    .line 91
    const v21, 0x106011b

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxBorderColor:I

    .line 92
    const v21, 0x106011c

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColor:I

    .line 93
    const v21, 0x106011d

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowColor:I

    .line 94
    const v21, 0x106011a

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowColorWithoutBorder:I

    .line 95
    const v21, 0x10501a1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    .line 98
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 99
    .local v18, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    .line 100
    .local v20, "theme":Landroid/content/res/Resources$Theme;
    const v21, 0x101042a

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 101
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    .line 102
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowColorWithoutBorder:I

    .line 109
    :cond_0
    sget-object v21, Lcom/android/internal/R$styleable;->leCheckbox:[I

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move/from16 v3, p3

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 110
    .local v6, "a":Landroid/content/res/TypedArray;
    if-eqz v6, :cond_2

    .line 111
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v17

    .line 112
    .local v17, "n":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 113
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v12

    .line 115
    .local v12, "attr":I
    packed-switch v12, :pswitch_data_0

    .line 112
    :cond_1
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 117
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    .line 118
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 119
    const v21, 0x10501a0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    goto :goto_1

    .line 123
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxInnerPadding:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxInnerPadding:I

    goto :goto_1

    .line 126
    :pswitch_2
    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 129
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    goto :goto_1

    .line 132
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowColor:I

    goto :goto_1

    .line 135
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowColorWithoutBorder:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowColorWithoutBorder:I

    goto/16 :goto_1

    .line 138
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    goto/16 :goto_1

    .line 141
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mIsBoxTextOnRight:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mIsBoxTextOnRight:Z

    goto/16 :goto_1

    .line 146
    .end local v12    # "attr":I
    .end local v16    # "i":I
    .end local v17    # "n":I
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    const/4 v14, 0x1

    .line 149
    .local v14, "clickable":Z
    sget-object v21, Lcom/android/internal/R$styleable;->View:[I

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    move/from16 v3, p3

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 150
    const/16 v21, 0x1e

    move/from16 v0, v21

    invoke-virtual {v6, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 151
    .local v14, "clickable":Z
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/LeRadioButton;->setClickable(Z)V

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mMaxCircleRadius:I

    .line 156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 157
    const/16 v11, 0x12c

    .line 158
    .local v11, "arrowDuration":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mMeasureSize:I

    .line 160
    const-string/jumbo v21, "ArrowInterpolatedTime"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v23, v22, v24

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    aput v23, v22, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    new-instance v22, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x12c

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    const-string/jumbo v21, "ArrowInterpolatedTime"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    aput v23, v22, v24

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v23, v22, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    new-instance v22, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x12c

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    .line 220
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeRadioButton;->isChecked()Z

    move-result v13

    .line 221
    .local v13, "checked":Z
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mMaxCircleRadius:I

    move/from16 v21, v0

    :goto_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mDynimacRadius:I

    .line 222
    if-eqz v13, :cond_7

    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    .line 224
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mCircleBoxRadius:I

    .line 226
    new-instance v21, Lcom/letv/leui/widget/LeArrowShape;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Lcom/letv/leui/widget/LeArrowShape;-><init>(FZZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mArrawShape:Lcom/letv/leui/widget/LeArrowShape;

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeRadioButton;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 229
    const/16 v21, 0xff

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mAlpha:I

    .line 234
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeRadioButton;->attachAnimateToTextViewColor(Landroid/widget/TextView;I)V

    .line 83
    :cond_3
    return-void

    .line 172
    .end local v11    # "arrowDuration":I
    .end local v13    # "checked":Z
    :cond_4
    const v15, 0x3f99999a    # 1.2f

    .line 173
    .local v15, "enLargeRate":F
    const/16 v11, 0x64

    .line 174
    .restart local v11    # "arrowDuration":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f99999a    # 1.2f

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mMeasureSize:I

    .line 176
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    .line 178
    const-string/jumbo v21, "DynimacRadius"

    .line 177
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 178
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v23, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mMaxCircleRadius:I

    move/from16 v23, v0

    const/16 v24, 0x1

    aput v23, v22, v24

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 180
    .local v10, "animatorOutEnlarge":Landroid/animation/ObjectAnimator;
    const-string/jumbo v21, "ArrowInterpolatedTime"

    .line 179
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 180
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v23, v22, v24

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    aput v23, v22, v24

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 182
    .local v8, "animatorArrowShown":Landroid/animation/ObjectAnimator;
    new-instance v21, Landroid/view/animation/OvershootInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 183
    new-instance v21, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 186
    const-wide/16 v22, 0x64

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    .line 196
    const-string/jumbo v21, "ArrowInterpolatedTime"

    .line 195
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 196
    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    aput v23, v22, v24

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v23, v22, v24

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 197
    .local v7, "animatorArrowHidden":Landroid/animation/ObjectAnimator;
    const-string/jumbo v21, "DynimacRadius"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mMaxCircleRadius:I

    move/from16 v23, v0

    const/16 v24, 0x0

    aput v23, v22, v24

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v23, v22, v24

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 199
    .local v9, "animatorInNarrow":Landroid/animation/ObjectAnimator;
    new-instance v21, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    new-instance v21, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 202
    const-wide/16 v22, 0x64

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_2

    .line 217
    .end local v7    # "animatorArrowHidden":Landroid/animation/ObjectAnimator;
    .end local v8    # "animatorArrowShown":Landroid/animation/ObjectAnimator;
    .end local v9    # "animatorInNarrow":Landroid/animation/ObjectAnimator;
    .end local v10    # "animatorOutEnlarge":Landroid/animation/ObjectAnimator;
    .end local v15    # "enLargeRate":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeRadioButton;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    goto/16 :goto_3

    .line 221
    .restart local v13    # "checked":Z
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 222
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 231
    :cond_8
    const/16 v21, 0x4c

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeRadioButton;->mAlpha:I

    goto/16 :goto_6

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isBoxOnRight()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mIsBoxTextOnRight:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attachAnimateToTextViewColor(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "colorOnCheck"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    .line 291
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextColorOrigin:I

    .line 292
    iput p2, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextColorOnChecked:I

    .line 285
    return-void
.end method

.method public getBoxInnerPadding()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxInnerPadding:I

    return v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 371
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 372
    .local v0, "padding":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeRadioButton;->isBoxOnRight()Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    iget v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mMeasureSize:I

    iget v2, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxInnerPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 375
    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 380
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingRight()I

    move-result v0

    .line 381
    .local v0, "padding":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeRadioButton;->isBoxOnRight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mMeasureSize:I

    iget v2, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxInnerPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 384
    :cond_0
    return v0
.end method

.method public getTrackColorOn()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-super {p0}, Landroid/widget/RadioButton;->jumpDrawablesToCurrentState()V

    .line 443
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mCurrentAnimatior:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mCurrentAnimatior:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 445
    iput-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mCurrentAnimatior:Landroid/animation/Animator;

    .line 440
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 560
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    if-ne p1, v0, :cond_1

    .line 561
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    .line 562
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mMaxCircleRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mDynimacRadius:I

    .line 567
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mIsAnimating:Z

    .line 559
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    if-ne p1, v0, :cond_0

    .line 564
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    .line 565
    iput v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mDynimacRadius:I

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 544
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    if-ne p1, v0, :cond_2

    .line 545
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    .line 546
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mMaxCircleRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mDynimacRadius:I

    .line 551
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mIsAnimating:Z

    .line 552
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->invalidate()V

    .line 553
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 554
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextColorOnChecked:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 543
    :cond_1
    return-void

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    if-ne p1, v0, :cond_0

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    .line 549
    iput v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mDynimacRadius:I

    goto :goto_0

    .line 554
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextColorOrigin:I

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 571
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 539
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextViewColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    if-ne v0, p0, :cond_0

    .line 532
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeRadioButton;->invalidate(Landroid/graphics/Rect;)V

    .line 528
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 461
    invoke-super/range {p0 .. p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    if-eqz v11, :cond_2

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeRadioButton;->isChecked()Z

    move-result v2

    .line 466
    .local v2, "checked":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxLeft:I

    .line 467
    .local v4, "left":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTop:I

    .line 468
    .local v10, "top":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LeRadioButton;->mCircleBoxRadius:I

    .line 470
    .local v1, "boxRadius":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeRadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 471
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeRadioButton;->isEnabled()Z

    move-result v3

    .line 472
    .local v3, "isEnabled":Z
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 473
    .local v5, "originColor":I
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 475
    .local v6, "originStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    if-nez v11, :cond_1

    .line 476
    if-nez v3, :cond_0

    .line 477
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeRadioButton;->mAlpha:I

    const/16 v13, 0x1f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 481
    :cond_0
    add-int v8, v4, v1

    .line 482
    .local v8, "pivotX":I
    add-int v9, v10, v1

    .line 484
    .local v9, "pivotY":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxBorderColor:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    int-to-float v11, v8

    int-to-float v12, v9

    int-to-float v13, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 487
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColor:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    int-to-float v11, v8

    int-to-float v12, v9

    add-int/lit8 v13, v1, -0x1

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 490
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    int-to-float v11, v8

    int-to-float v12, v9

    int-to-float v13, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 493
    if-nez v3, :cond_1

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 498
    .end local v8    # "pivotX":I
    .end local v9    # "pivotY":I
    :cond_1
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    if-eqz v11, :cond_3

    .line 499
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeRadioButton;->mAlpha:I

    const/16 v13, 0x1f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 505
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeRadioButton;->getScrollX()I

    move-result v11

    add-int/2addr v11, v4

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeRadioButton;->getScrollY()I

    move-result v12

    add-int/2addr v12, v10

    int-to-float v12, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 506
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mWithoutBoxBorder:Z

    if-nez v11, :cond_4

    .line 507
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mCirclePath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 508
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mCirclePath:Landroid/graphics/Path;

    int-to-float v12, v1

    int-to-float v13, v1

    int-to-float v14, v1

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mCirclePath:Landroid/graphics/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 510
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowColor:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    :goto_1
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrawShape:Lcom/letv/leui/widget/LeArrowShape;

    invoke-virtual {v11, v2}, Lcom/letv/leui/widget/LeArrowShape;->setIsShowUp(Z)V

    .line 518
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrawShape:Lcom/letv/leui/widget/LeArrowShape;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v12}, Lcom/letv/leui/widget/LeArrowShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 520
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 522
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 523
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    .end local v1    # "boxRadius":I
    .end local v2    # "checked":Z
    .end local v3    # "isEnabled":Z
    .end local v4    # "left":I
    .end local v5    # "originColor":I
    .end local v6    # "originStyle":Landroid/graphics/Paint$Style;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v10    # "top":I
    :cond_2
    return-void

    .line 503
    .restart local v1    # "boxRadius":I
    .restart local v2    # "checked":Z
    .restart local v3    # "isEnabled":Z
    .restart local v4    # "left":I
    .restart local v5    # "originColor":I
    .restart local v6    # "originStyle":Landroid/graphics/Paint$Style;
    .restart local v7    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "top":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_0

    .line 512
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeRadioButton;->mArrowColorWithoutBorder:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 577
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 578
    const-class v0, Lcom/letv/leui/widget/LeRadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 576
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 584
    const-class v0, Lcom/letv/leui/widget/LeRadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 582
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 327
    invoke-super/range {p0 .. p5}, Landroid/widget/RadioButton;->onLayout(ZIIII)V

    .line 329
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->getGravity()I

    move-result v8

    and-int/lit8 v7, v8, 0x70

    .line 330
    .local v7, "verticalGravity":I
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v6

    .line 331
    .local v6, "padidngLeft":I
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingRight()I

    move-result v5

    .line 333
    .local v5, "paddingRight":I
    iget v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mMeasureSize:I

    iget v9, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    .line 335
    .local v4, "mMeasureBorderSize":I
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingTop()I

    move-result v8

    add-int v3, v4, v8

    .line 336
    .local v3, "boxTop":I
    sparse-switch v7, :sswitch_data_0

    .line 345
    :goto_0
    iget v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    add-int v0, v3, v8

    .line 346
    .local v0, "boxBottom":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeRadioButton;->isBoxOnRight()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    iget v9, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    sub-int/2addr v8, v9

    sub-int v1, v8, v4

    .line 349
    .local v1, "boxLeft":I
    :goto_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LeRadioButton;->isBoxOnRight()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int v2, v8, v4

    .line 353
    .local v2, "boxRight":I
    :goto_2
    iget-object v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mInvalidateRect:Landroid/graphics/Rect;

    sub-int v9, v1, v4

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 354
    iget-object v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mInvalidateRect:Landroid/graphics/Rect;

    add-int v9, v2, v4

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 355
    iget-object v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mInvalidateRect:Landroid/graphics/Rect;

    sub-int v9, v3, v4

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 356
    iget-object v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mInvalidateRect:Landroid/graphics/Rect;

    add-int v9, v0, v4

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 358
    iput v3, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTop:I

    .line 359
    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxBottom:I

    .line 360
    iput v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxLeft:I

    .line 361
    iput v2, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxRight:I

    .line 363
    iget-object v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v9, v1

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 364
    iget-object v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v9, v3

    iput v9, v8, Landroid/graphics/RectF;->top:F

    .line 365
    iget-object v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v9, v2

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 366
    iget-object v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v9, v0

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 326
    return-void

    .line 338
    .end local v0    # "boxBottom":I
    .end local v1    # "boxLeft":I
    .end local v2    # "boxRight":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 339
    goto :goto_0

    .line 341
    :sswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    sub-int/2addr v8, v9

    div-int/lit8 v3, v8, 0x2

    goto :goto_0

    .line 348
    .restart local v0    # "boxBottom":I
    :cond_0
    add-int v1, v4, v6

    .restart local v1    # "boxLeft":I
    goto :goto_1

    .line 351
    :cond_1
    iget v8, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxSize:I

    add-int/2addr v8, v4

    add-int v2, v8, v5

    .restart local v2    # "boxRight":I
    goto :goto_2

    .line 336
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 315
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 316
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 318
    .local v0, "height":I
    iget v2, p0, Lcom/letv/leui/widget/LeRadioButton;->mMeasureSize:I

    if-le v2, v0, :cond_0

    .line 319
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mMeasureSize:I

    .line 320
    const/high16 v1, 0x40000000    # 2.0f

    .line 322
    :cond_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Landroid/widget/RadioButton;->onMeasure(II)V

    .line 314
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 274
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowColor:I

    if-eq v0, p1, :cond_0

    .line 275
    iput p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowColor:I

    .line 273
    :cond_0
    return-void
.end method

.method public setArrowColorWithoutBorder(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 280
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowColorWithoutBorder:I

    if-eq v0, p1, :cond_0

    .line 281
    iput p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowColorWithoutBorder:I

    .line 279
    :cond_0
    return-void
.end method

.method public setArrowInterpolatedTime(F)V
    .locals 3
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 300
    iput p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    .line 302
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 305
    iget v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextColorOrigin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextColorOnChecked:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 303
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextViewColor:I

    .line 299
    :cond_0
    return-void
.end method

.method public setBoxBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 268
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxBorderColor:I

    if-eq v0, p1, :cond_0

    .line 269
    iput p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxBorderColor:I

    .line 267
    :cond_0
    return-void
.end method

.method public setBoxInnerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxInnerPadding:I

    .line 239
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeRadioButton;->setChecked(ZZ)V

    .line 401
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 4
    .param p1, "checked"    # Z
    .param p2, "playAnimation"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 407
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->isChecked()Z

    move-result v0

    .line 409
    .local v0, "oldChecked":Z
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 411
    if-ne v0, p1, :cond_0

    .line 412
    return-void

    .line 415
    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mIsAnimating:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 421
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    if-nez v1, :cond_6

    .line 422
    :cond_2
    if-eqz p1, :cond_7

    iget v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mMaxCircleRadius:I

    :goto_1
    iput v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mDynimacRadius:I

    .line 423
    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    int-to-float v1, v2

    iput v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mArrowInterpolatedTime:F

    .line 424
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->invalidate()V

    .line 425
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    .line 426
    iget-object v2, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextColorOnChecked:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    :cond_4
    :goto_3
    return-void

    .line 417
    :cond_5
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mIsAnimating:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 421
    :cond_6
    if-eqz p2, :cond_2

    .line 428
    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    if-eqz v1, :cond_9

    .line 429
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 430
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeRadioButton;->mIsAnimating:Z

    .line 431
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mShowAnimatior:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mCurrentAnimatior:Landroid/animation/Animator;

    goto :goto_3

    :cond_7
    move v1, v2

    .line 422
    goto :goto_1

    .line 426
    :cond_8
    iget v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mAnimateTextColorOrigin:I

    goto :goto_2

    .line 432
    :cond_9
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    if-eqz v1, :cond_4

    .line 433
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 434
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeRadioButton;->mIsAnimating:Z

    .line 435
    iget-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mHiddenAnimatior:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/letv/leui/widget/LeRadioButton;->mCurrentAnimatior:Landroid/animation/Animator;

    goto :goto_3
.end method

.method public setDynimacRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mDynimacRadius:I

    .line 295
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 452
    if-eqz p1, :cond_0

    .line 453
    const/16 v0, 0xff

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAlpha:I

    .line 450
    :goto_0
    return-void

    .line 455
    :cond_0
    const/16 v0, 0x4c

    iput v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mAlpha:I

    goto :goto_0
.end method

.method public setTrackBoxColor(I)V
    .locals 1
    .param p1, "colorOn"    # I

    .prologue
    .line 248
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    if-eq v0, p1, :cond_0

    .line 249
    iput p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    .line 247
    :cond_0
    return-void
.end method

.method public setTrackBoxColor(II)V
    .locals 1
    .param p1, "colorOn"    # I
    .param p2, "colorOff"    # I

    .prologue
    .line 258
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColor:I

    if-eq v0, p2, :cond_0

    .line 259
    iput p2, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColor:I

    .line 262
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    if-eq v0, p1, :cond_1

    .line 263
    iput p1, p0, Lcom/letv/leui/widget/LeRadioButton;->mBoxTrackColorOn:I

    .line 257
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 394
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeRadioButton;->isChecked()Z

    move-result v0

    .line 395
    .local v0, "checked":Z
    if-nez v0, :cond_0

    .line 396
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LeRadioButton;->setChecked(ZZ)V

    .line 393
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 396
    goto :goto_0
.end method
