.class public Lcom/letv/leui/widget/LeCheckBox;
.super Landroid/widget/CheckBox;
.source "LeCheckBox.java"

# interfaces
.implements Lcom/letv/leui/widget/LeCheckable;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeCheckBox$1;,
        Lcom/letv/leui/widget/LeCheckBox$2;
    }
.end annotation


# static fields
.field private static final ARROWINTERPOLATEDTIME:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/letv/leui/widget/LeCheckBox;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISABLE_ALPHA:I = 0x4c

.field private static final DYNIMACRADIUS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/letv/leui/widget/LeCheckBox;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


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
.method static synthetic -get0(Lcom/letv/leui/widget/LeCheckBox;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mArrowInterpolatedTime:F

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeCheckBox;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mDynimacRadius:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 558
    new-instance v0, Lcom/letv/leui/widget/LeCheckBox$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "ArrowInterpolatedTime"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LeCheckBox$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/widget/LeCheckBox;->ARROWINTERPOLATEDTIME:Landroid/util/Property;

    .line 572
    new-instance v0, Lcom/letv/leui/widget/LeCheckBox$2;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "DynimacRadius"

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LeCheckBox$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/letv/leui/widget/LeCheckBox;->DYNIMACRADIUS:Landroid/util/Property;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mDynimacRadius:I

    .line 58
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowInterpolatedTime:F

    .line 59
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mInvalidateRect:Landroid/graphics/Rect;

    .line 60
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mCirclePath:Landroid/graphics/Path;

    .line 75
    const/16 v21, 0xff

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mAlpha:I

    .line 76
    new-instance v21, Landroid/graphics/RectF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mSaveLayerRectF:Landroid/graphics/RectF;

    .line 89
    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setLayerType(ILandroid/graphics/Paint;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 92
    .local v19, "res":Landroid/content/res/Resources;
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mIsBoxTextOnRight:Z

    .line 93
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    .line 94
    const v21, 0x106011a

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColorOn:I

    .line 95
    const v21, 0x106011b

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxBorderColor:I

    .line 96
    const v21, 0x106011c

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColor:I

    .line 97
    const v21, 0x106011d

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowColor:I

    .line 98
    const v21, 0x106011a

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowColorWithoutBorder:I

    .line 99
    const v21, 0x10501a1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    .line 102
    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    .line 103
    .local v18, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    .line 104
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

    .line 105
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColorOn:I

    .line 106
    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowColorWithoutBorder:I

    .line 113
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

    .line 114
    .local v6, "a":Landroid/content/res/TypedArray;
    if-eqz v6, :cond_2

    .line 115
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v17

    .line 116
    .local v17, "n":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 117
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v12

    .line 119
    .local v12, "attr":I
    packed-switch v12, :pswitch_data_0

    .line 116
    :cond_1
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 121
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    .line 122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 123
    const v21, 0x10501a0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    goto :goto_1

    .line 127
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxInnerPadding:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxInnerPadding:I

    goto :goto_1

    .line 130
    :pswitch_2
    invoke-virtual {v6, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 133
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColorOn:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColorOn:I

    goto :goto_1

    .line 136
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowColor:I

    goto :goto_1

    .line 139
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowColorWithoutBorder:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowColorWithoutBorder:I

    goto/16 :goto_1

    .line 142
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    goto/16 :goto_1

    .line 145
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mIsBoxTextOnRight:Z

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mIsBoxTextOnRight:Z

    goto/16 :goto_1

    .line 148
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColor:I

    goto/16 :goto_1

    .line 151
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxBorderColor:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v6, v12, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mBoxBorderColor:I

    goto/16 :goto_1

    .line 156
    .end local v12    # "attr":I
    .end local v16    # "i":I
    .end local v17    # "n":I
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    const/4 v14, 0x1

    .line 159
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

    .line 160
    const/16 v21, 0x1e

    move/from16 v0, v21

    invoke-virtual {v6, v0, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 161
    .local v14, "clickable":Z
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/LeCheckBox;->setClickable(Z)V

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mMaxCircleRadius:I

    .line 166
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 167
    const/16 v11, 0x12c

    .line 168
    .local v11, "arrowDuration":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mMeasureSize:I

    .line 170
    sget-object v21, Lcom/letv/leui/widget/LeCheckBox;->ARROWINTERPOLATEDTIME:Landroid/util/Property;

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

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    new-instance v22, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x12c

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    sget-object v21, Lcom/letv/leui/widget/LeCheckBox;->ARROWINTERPOLATEDTIME:Landroid/util/Property;

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

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    new-instance v22, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual/range {v21 .. v22}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x12c

    invoke-virtual/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mMeasureSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeCheckBox;->setMinHeight(I)V

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowShownAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mShowAnimatior:Landroid/animation/Animator;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowHiddenAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mHiddenAnimatior:Landroid/animation/Animator;

    .line 230
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v13

    .line 231
    .local v13, "checked":Z
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mMaxCircleRadius:I

    move/from16 v21, v0

    :goto_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mDynimacRadius:I

    .line 232
    if-eqz v13, :cond_7

    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrowInterpolatedTime:F

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mCircleBoxRadius:I

    .line 236
    new-instance v21, Lcom/letv/leui/widget/LeArrowShape;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Lcom/letv/leui/widget/LeArrowShape;-><init>(FZZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mArrawShape:Lcom/letv/leui/widget/LeArrowShape;

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeCheckBox;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 239
    const/16 v21, 0xff

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mAlpha:I

    .line 244
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->attachAnimateToTextViewColor(Landroid/widget/TextView;I)V

    .line 86
    :cond_3
    return-void

    .line 182
    .end local v11    # "arrowDuration":I
    .end local v13    # "checked":Z
    :cond_4
    const v15, 0x3f99999a    # 1.2f

    .line 183
    .local v15, "enLargeRate":F
    const/16 v11, 0x64

    .line 184
    .restart local v11    # "arrowDuration":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

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

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mMeasureSize:I

    .line 186
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    .line 188
    sget-object v21, Lcom/letv/leui/widget/LeCheckBox;->DYNIMACRADIUS:Landroid/util/Property;

    .line 187
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 188
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v23, v22, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mMaxCircleRadius:I

    move/from16 v23, v0

    const/16 v24, 0x1

    aput v23, v22, v24

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 190
    .local v10, "animatorOutEnlarge":Landroid/animation/ObjectAnimator;
    sget-object v21, Lcom/letv/leui/widget/LeCheckBox;->ARROWINTERPOLATEDTIME:Landroid/util/Property;

    .line 189
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 190
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v23, v22, v24

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x1

    aput v23, v22, v24

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 192
    .local v8, "animatorArrowShown":Landroid/animation/ObjectAnimator;
    new-instance v21, Landroid/view/animation/OvershootInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    new-instance v21, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 195
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    const-wide/16 v22, 0x64

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 199
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    .line 206
    sget-object v21, Lcom/letv/leui/widget/LeCheckBox;->ARROWINTERPOLATEDTIME:Landroid/util/Property;

    .line 205
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 206
    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    aput v23, v22, v24

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v23, v22, v24

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 207
    .local v7, "animatorArrowHidden":Landroid/animation/ObjectAnimator;
    sget-object v21, Lcom/letv/leui/widget/LeCheckBox;->DYNIMACRADIUS:Landroid/util/Property;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mMaxCircleRadius:I

    move/from16 v23, v0

    const/16 v24, 0x0

    aput v23, v22, v24

    const/16 v23, 0x0

    const/16 v24, 0x1

    aput v23, v22, v24

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 209
    .local v9, "animatorInNarrow":Landroid/animation/ObjectAnimator;
    new-instance v21, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    new-instance v21, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct/range {v21 .. v21}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 212
    const-wide/16 v22, 0x64

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 213
    const-wide/16 v22, 0xc8

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_2

    .line 227
    .end local v7    # "animatorArrowHidden":Landroid/animation/ObjectAnimator;
    .end local v8    # "animatorArrowShown":Landroid/animation/ObjectAnimator;
    .end local v9    # "animatorInNarrow":Landroid/animation/ObjectAnimator;
    .end local v10    # "animatorOutEnlarge":Landroid/animation/ObjectAnimator;
    .end local v15    # "enLargeRate":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mZoomOutAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mShowAnimatior:Landroid/animation/Animator;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LeCheckBox;->mZoomInAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mHiddenAnimatior:Landroid/animation/Animator;

    goto/16 :goto_3

    .line 231
    .restart local v13    # "checked":Z
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 232
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 241
    :cond_8
    const/16 v21, 0x4c

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LeCheckBox;->mAlpha:I

    goto/16 :goto_6

    .line 119
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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private isBoxOnRight()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mIsBoxTextOnRight:Z

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
    .line 278
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 283
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    .line 285
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextView:Landroid/widget/TextView;

    .line 286
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextColorOrigin:I

    .line 287
    iput p2, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextColorOnChecked:I

    .line 277
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 366
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 367
    .local v0, "padding":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeCheckBox;->isBoxOnRight()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iget v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mMeasureSize:I

    iget v2, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxInnerPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 370
    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 375
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingRight()I

    move-result v0

    .line 376
    .local v0, "padding":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeCheckBox;->isBoxOnRight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mMeasureSize:I

    iget v2, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxInnerPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 379
    :cond_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 430
    invoke-super {p0}, Landroid/widget/CheckBox;->jumpDrawablesToCurrentState()V

    .line 432
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 434
    iput-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    .line 429
    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 550
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mShowAnimatior:Landroid/animation/Animator;

    if-ne p1, v0, :cond_2

    .line 536
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mArrowInterpolatedTime:F

    .line 537
    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mMaxCircleRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mDynimacRadius:I

    .line 542
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    .line 543
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mTextColorOnChecked:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 544
    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextColorOnChecked:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeCheckBox;->invalidate(Landroid/graphics/Rect;)V

    .line 533
    return-void

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mHiddenAnimatior:Landroid/animation/Animator;

    if-ne p1, v0, :cond_0

    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mArrowInterpolatedTime:F

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mDynimacRadius:I

    goto :goto_0

    .line 544
    :cond_3
    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextColorOrigin:I

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 554
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 529
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextViewColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextView:Landroid/widget/TextView;

    if-ne v0, p0, :cond_0

    .line 522
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeCheckBox;->invalidate(Landroid/graphics/Rect;)V

    .line 518
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 450
    invoke-super/range {p0 .. p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mShowAnimatior:Landroid/animation/Animator;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mHiddenAnimatior:Landroid/animation/Animator;

    if-eqz v11, :cond_2

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v2

    .line 455
    .local v2, "checked":Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxLeft:I

    .line 456
    .local v4, "left":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTop:I

    .line 457
    .local v10, "top":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LeCheckBox;->mCircleBoxRadius:I

    .line 459
    .local v1, "boxRadius":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeCheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    .line 460
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeCheckBox;->isEnabled()Z

    move-result v3

    .line 461
    .local v3, "isEnabled":Z
    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 462
    .local v5, "originColor":I
    invoke-virtual {v7}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 465
    .local v6, "originStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    if-nez v11, :cond_1

    .line 466
    if-nez v3, :cond_0

    .line 467
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mSaveLayerRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeCheckBox;->mAlpha:I

    const/16 v13, 0x1f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 471
    :cond_0
    add-int v8, v4, v1

    .line 472
    .local v8, "pivotX":I
    add-int v9, v10, v1

    .line 474
    .local v9, "pivotY":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxBorderColor:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    int-to-float v11, v8

    int-to-float v12, v9

    int-to-float v13, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 477
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColor:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    int-to-float v11, v8

    int-to-float v12, v9

    add-int/lit8 v13, v1, -0x1

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 480
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColorOn:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    int-to-float v11, v8

    int-to-float v12, v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/widget/LeCheckBox;->mDynimacRadius:I

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 483
    if-nez v3, :cond_1

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 488
    .end local v8    # "pivotX":I
    .end local v9    # "pivotY":I
    :cond_1
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    if-eqz v11, :cond_3

    .line 489
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mSaveLayerRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeCheckBox;->mAlpha:I

    const/16 v13, 0x1f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 495
    :goto_0
    int-to-float v11, v4

    int-to-float v12, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 496
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mWithoutBoxBorder:Z

    if-nez v11, :cond_4

    .line 497
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mCirclePath:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    .line 498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mCirclePath:Landroid/graphics/Path;

    int-to-float v12, v1

    int-to-float v13, v1

    int-to-float v14, v1

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mCirclePath:Landroid/graphics/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 500
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowColor:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    :goto_1
    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrawShape:Lcom/letv/leui/widget/LeArrowShape;

    invoke-virtual {v11, v2}, Lcom/letv/leui/widget/LeArrowShape;->setIsShowUp(Z)V

    .line 508
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrawShape:Lcom/letv/leui/widget/LeArrowShape;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowInterpolatedTime:F

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v7, v12}, Lcom/letv/leui/widget/LeArrowShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 512
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 513
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
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

    .line 493
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

    .line 502
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/letv/leui/widget/LeCheckBox;->mArrowColorWithoutBorder:I

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 385
    const-class v0, Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 383
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 391
    const-class v0, Lcom/letv/leui/widget/LeCheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 389
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
    .line 322
    invoke-super/range {p0 .. p5}, Landroid/widget/CheckBox;->onLayout(ZIIII)V

    .line 324
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckBox;->getGravity()I

    move-result v8

    and-int/lit8 v7, v8, 0x70

    .line 325
    .local v7, "verticalGravity":I
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v6

    .line 326
    .local v6, "padidngLeft":I
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingRight()I

    move-result v5

    .line 328
    .local v5, "paddingRight":I
    iget v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mMeasureSize:I

    iget v9, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    .line 330
    .local v4, "mMeasureBorderSize":I
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingTop()I

    move-result v8

    add-int v3, v4, v8

    .line 331
    .local v3, "boxTop":I
    sparse-switch v7, :sswitch_data_0

    .line 340
    :goto_0
    iget v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    add-int v0, v3, v8

    .line 341
    .local v0, "boxBottom":I
    invoke-direct {p0}, Lcom/letv/leui/widget/LeCheckBox;->isBoxOnRight()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckBox;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    iget v9, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    sub-int/2addr v8, v9

    sub-int v1, v8, v4

    .line 344
    .local v1, "boxLeft":I
    :goto_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LeCheckBox;->isBoxOnRight()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckBox;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int v2, v8, v4

    .line 348
    .local v2, "boxRight":I
    :goto_2
    iget-object v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mInvalidateRect:Landroid/graphics/Rect;

    sub-int v9, v1, v4

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 349
    iget-object v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mInvalidateRect:Landroid/graphics/Rect;

    add-int v9, v2, v4

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 350
    iget-object v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mInvalidateRect:Landroid/graphics/Rect;

    sub-int v9, v3, v4

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 351
    iget-object v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mInvalidateRect:Landroid/graphics/Rect;

    add-int v9, v0, v4

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 353
    iput v3, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTop:I

    .line 354
    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxBottom:I

    .line 355
    iput v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxLeft:I

    .line 356
    iput v2, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxRight:I

    .line 358
    iget-object v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v9, v1

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 359
    iget-object v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v9, v3

    iput v9, v8, Landroid/graphics/RectF;->top:F

    .line 360
    iget-object v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v9, v2

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 361
    iget-object v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mSaveLayerRectF:Landroid/graphics/RectF;

    int-to-float v9, v0

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 321
    return-void

    .line 333
    .end local v0    # "boxBottom":I
    .end local v1    # "boxLeft":I
    .end local v2    # "boxRight":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckBox;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 334
    goto :goto_0

    .line 336
    :sswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckBox;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    sub-int/2addr v8, v9

    div-int/lit8 v3, v8, 0x2

    goto :goto_0

    .line 343
    .restart local v0    # "boxBottom":I
    :cond_0
    add-int v1, v4, v6

    .restart local v1    # "boxLeft":I
    goto :goto_1

    .line 346
    :cond_1
    iget v8, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxSize:I

    add-int/2addr v8, v4

    add-int v2, v8, v5

    .restart local v2    # "boxRight":I
    goto :goto_2

    .line 331
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
    .line 310
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 311
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 313
    .local v0, "height":I
    iget v2, p0, Lcom/letv/leui/widget/LeCheckBox;->mMeasureSize:I

    if-le v2, v0, :cond_0

    .line 314
    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mMeasureSize:I

    .line 315
    const/high16 v1, 0x40000000    # 2.0f

    .line 317
    :cond_0
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, p1, v2}, Landroid/widget/CheckBox;->onMeasure(II)V

    .line 309
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 266
    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mArrowColor:I

    if-eq v0, p1, :cond_0

    .line 267
    iput p1, p0, Lcom/letv/leui/widget/LeCheckBox;->mArrowColor:I

    .line 265
    :cond_0
    return-void
.end method

.method public setArrowColorWithoutBorder(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 272
    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mArrowColorWithoutBorder:I

    if-eq v0, p1, :cond_0

    .line 273
    iput p1, p0, Lcom/letv/leui/widget/LeCheckBox;->mArrowColorWithoutBorder:I

    .line 271
    :cond_0
    return-void
.end method

.method public setArrowInterpolatedTime(F)V
    .locals 3
    .param p1, "interpolatedTime"    # F

    .prologue
    .line 295
    iput p1, p0, Lcom/letv/leui/widget/LeCheckBox;->mArrowInterpolatedTime:F

    .line 297
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 300
    iget v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextColorOrigin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextColorOnChecked:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 298
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAnimateTextViewColor:I

    .line 294
    :cond_0
    return-void
.end method

.method public setBoxBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 260
    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxBorderColor:I

    if-eq v0, p1, :cond_0

    .line 261
    iput p1, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxBorderColor:I

    .line 259
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    .line 401
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 3
    .param p1, "checked"    # Z
    .param p2, "playAnimation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v0

    .line 409
    .local v0, "oldChecked":Z
    if-ne v0, p1, :cond_0

    .line 410
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 415
    iput-object v2, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    .line 418
    :cond_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mShowAnimatior:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mShowAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 420
    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mShowAnimatior:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    .line 425
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 406
    return-void

    .line 421
    :cond_3
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mHiddenAnimatior:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mHiddenAnimatior:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 423
    iget-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mHiddenAnimatior:Landroid/animation/Animator;

    iput-object v1, p0, Lcom/letv/leui/widget/LeCheckBox;->mCurrentAnimatior:Landroid/animation/Animator;

    goto :goto_0
.end method

.method public setDynimacRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 291
    iput p1, p0, Lcom/letv/leui/widget/LeCheckBox;->mDynimacRadius:I

    .line 290
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 441
    if-eqz p1, :cond_0

    .line 442
    const/16 v0, 0xff

    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAlpha:I

    .line 439
    :goto_0
    return-void

    .line 444
    :cond_0
    const/16 v0, 0x4c

    iput v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mAlpha:I

    goto :goto_0
.end method

.method public setTrackBoxColor(II)V
    .locals 1
    .param p1, "colorOn"    # I
    .param p2, "colorOff"    # I

    .prologue
    .line 250
    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColor:I

    if-eq v0, p2, :cond_0

    .line 251
    iput p2, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColor:I

    .line 254
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColorOn:I

    if-eq v0, p1, :cond_1

    .line 255
    iput p1, p0, Lcom/letv/leui/widget/LeCheckBox;->mBoxTrackColorOn:I

    .line 249
    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 396
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v0

    .line 397
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    .line 395
    return-void

    :cond_0
    move v1, v2

    .line 397
    goto :goto_0
.end method
