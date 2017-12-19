.class public Lcom/letv/leui/widget/LeTitleEditTextExt;
.super Landroid/widget/EditText;
.source "LeTitleEditTextExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;,
        Lcom/letv/leui/widget/LeTitleEditTextExt$1;
    }
.end annotation


# instance fields
.field private mClearDrawable:Landroid/graphics/drawable/Drawable;

.field private mClearIconPadding:I

.field private mClearPadding:Landroid/graphics/Rect;

.field private mClearText:Ljava/lang/CharSequence;

.field private mClearTextColor:Landroid/content/res/ColorStateList;

.field private mClearTextHeight:I

.field private final mClearTextPaint:Landroid/text/TextPaint;

.field private mClearTextSize:F

.field private mClearTextWidth:I

.field private mCurClearTextColor:I

.field private mCurTitleTextColor:I

.field private mCurrentUnderlineColor:I

.field private mIsTouchClearArea:Z

.field private mLeInputType:I

.field private mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

.field private mPasswordSwitchListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

.field private mTitleHeight:I

.field private mTitleIcon:Landroid/graphics/drawable/Drawable;

.field mTitlePadding:Landroid/graphics/Rect;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private final mTitleTextPaint:Landroid/text/TextPaint;

.field private mTitleTextSize:F

.field private mTitleWidth:I

.field private mUnderlineColor:Landroid/content/res/ColorStateList;

.field private mUnderlineHeight:F

.field private showPwdVisibleSwitch:Z


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeTitleEditTextExt;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/LeTitleEditTextExt;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->onPwdVisibleSwitch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 70
    invoke-direct/range {p0 .. p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    .line 48
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    .line 54
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    .line 637
    new-instance v13, Lcom/letv/leui/widget/LeTitleEditTextExt$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt$1;-><init>(Lcom/letv/leui/widget/LeTitleEditTextExt;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPasswordSwitchListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 73
    .local v10, "res":Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 75
    .local v6, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    const v14, 0x106000d

    invoke-direct {v13, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    .line 77
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    iput v14, v13, Landroid/text/TextPaint;->density:F

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v14, v6, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 79
    const/4 v8, -0x1

    .line 81
    .local v8, "inputType":I
    new-instance v13, Landroid/text/TextPaint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    .line 82
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    iput v14, v13, Landroid/text/TextPaint;->density:F

    .line 83
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v14, v6, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 85
    const/4 v11, 0x0

    .line 87
    .local v11, "titleText":Ljava/lang/CharSequence;
    const v13, 0x1050158

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 88
    .local v12, "titleTextSize":I
    const v13, 0x10600fa

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    .line 89
    const v13, 0x10804bb

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    .line 91
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    .line 92
    int-to-float v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    .line 94
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    const/4 v15, 0x1

    .line 93
    invoke-static {v15, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    .line 96
    sget-object v13, Lcom/android/internal/R$styleable;->LeTitleEditText:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 97
    .local v4, "a":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_0

    .line 98
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    .line 100
    .local v9, "n":I
    const/4 v7, 0x0

    .end local v11    # "titleText":Ljava/lang/CharSequence;
    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 101
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 103
    .local v5, "attr":I
    sparse-switch v5, :sswitch_data_0

    .line 100
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 105
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 109
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 113
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 117
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 121
    :sswitch_4
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 125
    :sswitch_5
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .local v11, "titleText":Ljava/lang/CharSequence;
    goto :goto_1

    .line 129
    .end local v11    # "titleText":Ljava/lang/CharSequence;
    :sswitch_6
    invoke-virtual {v4, v5, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    goto :goto_1

    .line 133
    :sswitch_7
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 137
    :sswitch_8
    const/4 v13, 0x0

    invoke-virtual {v4, v5, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    goto :goto_1

    .line 141
    :sswitch_9
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 145
    :sswitch_a
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 148
    :sswitch_b
    invoke-virtual {v4, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    goto :goto_1

    .line 151
    :sswitch_c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    invoke-virtual {v4, v5, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    goto :goto_1

    .line 156
    .end local v5    # "attr":I
    .end local v7    # "i":I
    .end local v9    # "n":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    int-to-float v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    .line 161
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v13}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setColor(I)V

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateUnderlineColors()Z

    .line 167
    if-eqz v11, :cond_1

    .line 168
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    :cond_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setIncludeFontPadding(Z)V

    .line 181
    const/4 v13, -0x1

    if-eq v8, v13, :cond_4

    .line 182
    and-int/lit16 v13, v8, 0xfff

    move-object/from16 v0, p0

    iput v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setInputType(I)V

    .line 184
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    if-eqz v13, :cond_4

    .line 185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mPasswordSwitchListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setOnClearListener(Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;)V

    .line 69
    :cond_4
    return-void

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_b
        0x5 -> :sswitch_9
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x1f -> :sswitch_c
        0x26 -> :sswitch_8
        0x2d -> :sswitch_a
    .end sparse-switch
.end method

.method private internalInputTypeSet(I)V
    .locals 5
    .param p1, "inputType"    # I

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 197
    const-string/jumbo v3, "helve-neue"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTypeface(Landroid/graphics/Typeface;)V

    .line 199
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->showPwdVisibleSwitch:Z

    if-nez v3, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    invoke-static {p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isPasswordInputType(I)Z

    move-result v0

    .line 204
    .local v0, "isPassword":Z
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isVisiblePasswordInputType(I)Z

    move-result v1

    .line 206
    .local v1, "isVisiblePassword":Z
    if-eqz v0, :cond_3

    .line 207
    const v3, 0x10805ba

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setClearDrawable(I)V

    .line 212
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    .line 213
    .local v2, "length":I
    if-lez v2, :cond_2

    .line 214
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setSelection(I)V

    .line 195
    :cond_2
    return-void

    .line 208
    .end local v2    # "length":I
    :cond_3
    if-eqz v1, :cond_1

    .line 209
    const v3, 0x10805bb

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setClearDrawable(I)V

    goto :goto_0
.end method

.method private static isPasswordInputType(I)Z
    .locals 3
    .param p0, "inputType"    # I

    .prologue
    const/4 v1, 0x1

    .line 220
    and-int/lit16 v0, p0, 0xfff

    .line 222
    .local v0, "variation":I
    const/16 v2, 0x81

    .line 221
    if-eq v0, v2, :cond_0

    .line 224
    const/16 v2, 0xe1

    .line 223
    if-ne v0, v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 226
    :cond_1
    const/16 v2, 0x12

    .line 225
    if-eq v0, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVisiblePasswordInputType(I)Z
    .locals 5
    .param p1, "inputType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    and-int/lit16 v0, p1, 0xfff

    .line 232
    .local v0, "variation":I
    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    .line 233
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 236
    :cond_1
    const/16 v3, 0x91

    .line 235
    if-ne v0, v3, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private measureClearArea(Landroid/text/TextPaint;FLjava/lang/String;)V
    .locals 4
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "clearTextSize"    # F
    .param p3, "clearText"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 422
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 423
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 425
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 425
    add-float/2addr v0, v1

    .line 426
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 425
    add-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    .line 427
    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 428
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 427
    add-float/2addr v0, v1

    .line 428
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 427
    add-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    .line 421
    return-void
.end method

.method private measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V
    .locals 4
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "titleTextSize"    # F
    .param p3, "titleText"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 412
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 413
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 415
    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 415
    add-float/2addr v0, v1

    .line 416
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 415
    add-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleWidth:I

    .line 417
    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 418
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 417
    add-float/2addr v0, v1

    .line 418
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 417
    add-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleHeight:I

    .line 411
    return-void
.end method

.method private onClearText()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;->onClear()Z

    .line 625
    :goto_0
    return-void

    .line 629
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private onPwdVisibleSwitch()V
    .locals 5

    .prologue
    const/16 v4, 0x12

    .line 240
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getInputType()I

    move-result v0

    .line 242
    .local v0, "inputType":I
    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isPasswordInputType(I)Z

    move-result v1

    .line 243
    .local v1, "isPassword":Z
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->isVisiblePasswordInputType(I)Z

    move-result v2

    .line 245
    .local v2, "isVisiblePassword":Z
    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    if-ne v3, v4, :cond_2

    .line 246
    if-eqz v1, :cond_1

    .line 247
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    if-eqz v2, :cond_0

    .line 249
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    goto :goto_0

    .line 254
    :cond_2
    if-eqz v1, :cond_4

    .line 255
    const/16 v3, 0x91

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    .line 239
    :cond_3
    :goto_1
    return-void

    .line 256
    :cond_4
    if-eqz v2, :cond_3

    .line 257
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    goto :goto_1
.end method

.method private setClearDrawable(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setClearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    return-void
.end method

.method private setOnClearListener(Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mOnClearListener:Lcom/letv/leui/widget/LeTitleEditTextExt$OnClearListener;

    .line 633
    return-void
.end method

.method private updateClearTextColors()Z
    .locals 5

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 389
    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    if-eq v0, v2, :cond_0

    .line 390
    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    .line 391
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurClearTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 392
    const/4 v1, 0x1

    .line 394
    :cond_0
    return v1
.end method

.method private updateTitleTextColors()Z
    .locals 5

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 378
    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    if-eq v0, v2, :cond_0

    .line 379
    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    .line 380
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurTitleTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 381
    const/4 v1, 0x1

    .line 383
    :cond_0
    return v1
.end method

.method private updateUnderlineColors()Z
    .locals 5

    .prologue
    .line 398
    const/4 v1, 0x0

    .line 399
    .local v1, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_0

    .line 400
    return v1

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 403
    .local v0, "color":I
    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    if-eq v0, v2, :cond_1

    .line 404
    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    .line 405
    const/4 v1, 0x1

    .line 408
    :cond_1
    return v1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 350
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "inval":Z
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateTitleTextColors()Z

    move-result v0

    .line 357
    .end local v0    # "inval":Z
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateClearTextColors()Z

    move-result v2

    or-int/2addr v0, v2

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getDrawableState()[I

    move-result-object v1

    .line 362
    .local v1, "state":[I
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateUnderlineColors()Z

    move-result v2

    or-int/2addr v0, v2

    .line 370
    :cond_3
    if-eqz v0, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 349
    :cond_4
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleWidth:I

    .line 434
    .local v0, "extraWidth":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 435
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 438
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 443
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    .line 444
    .local v0, "extraPadding":I
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 447
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 486
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    .line 489
    .local v15, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 491
    .local v17, "titleText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v13, v2

    .line 493
    .local v13, "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v19

    .line 494
    .local v19, "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v2

    sub-int v2, v19, v2

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 494
    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 495
    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v3

    .line 494
    sub-float/2addr v2, v3

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    .line 494
    add-float v14, v2, v3

    .line 496
    .local v14, "offsetY":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getGravity()I

    move-result v2

    and-int/lit8 v18, v2, 0x70

    .line 498
    .local v18, "verticalGravity":I
    sparse-switch v18, :sswitch_data_0

    .line 508
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 511
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v17    # "titleText":Ljava/lang/String;
    .end local v18    # "verticalGravity":I
    .end local v19    # "viewHeight":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v13, v2

    .line 514
    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v19

    .line 515
    .restart local v19    # "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 516
    .local v11, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v2

    sub-int v2, v19, v2

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 516
    sub-int/2addr v2, v3

    sub-int/2addr v2, v11

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    .line 516
    add-int/2addr v2, v3

    int-to-float v14, v2

    .line 518
    .restart local v14    # "offsetY":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getGravity()I

    move-result v2

    and-int/lit8 v18, v2, 0x70

    .line 520
    .restart local v18    # "verticalGravity":I
    sparse-switch v18, :sswitch_data_1

    .line 529
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 530
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 535
    .end local v11    # "iconHeight":I
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v18    # "verticalGravity":I
    .end local v19    # "viewHeight":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v19

    .line 537
    .restart local v19    # "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v11, v2, v3

    .line 538
    .restart local v11    # "iconHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int v12, v2, v3

    .line 539
    .local v12, "iconWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    add-int/2addr v2, v3

    int-to-float v13, v2

    .line 540
    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 541
    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    .line 540
    add-int/2addr v2, v3

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    .line 540
    add-int/2addr v2, v3

    int-to-float v14, v2

    .line 543
    .restart local v14    # "offsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 544
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 549
    .end local v11    # "iconHeight":I
    .end local v12    # "iconWidth":I
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v19    # "viewHeight":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 551
    .local v8, "clearText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v13, v2

    .line 553
    .restart local v13    # "offsetX":F
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v19

    .line 554
    .restart local v19    # "viewHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v19, v3

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    .line 554
    sub-int/2addr v3, v4

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 554
    sub-int/2addr v3, v4

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 554
    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 556
    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v4

    .line 554
    sub-float/2addr v3, v4

    .line 556
    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    .line 554
    add-float/2addr v3, v4

    .line 556
    const/high16 v4, 0x40000000    # 2.0f

    .line 554
    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 556
    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    .line 554
    sub-float/2addr v2, v3

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    .line 554
    add-float v14, v2, v3

    .line 557
    .restart local v14    # "offsetY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13, v14, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 560
    .end local v8    # "clearText":Ljava/lang/String;
    .end local v13    # "offsetX":F
    .end local v14    # "offsetY":F
    .end local v19    # "viewHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_5

    .line 561
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 563
    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleWidth:I

    .line 564
    .local v10, "extraWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v2, v10, :cond_4

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 567
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v16

    .line 568
    .local v16, "strokeWidth":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    .line 569
    .local v9, "color":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mCurrentUnderlineColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 571
    int-to-float v3, v10

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    sub-float v4, v2, v4

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mUnderlineHeight:F

    sub-float v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    .line 571
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 575
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 485
    .end local v9    # "color":I
    .end local v10    # "extraWidth":I
    .end local v16    # "strokeWidth":F
    :cond_5
    return-void

    .line 500
    .restart local v13    # "offsetX":F
    .restart local v14    # "offsetY":F
    .restart local v17    # "titleText":Ljava/lang/String;
    .restart local v18    # "verticalGravity":I
    .restart local v19    # "viewHeight":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v19, v3

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    .line 500
    sub-int/2addr v3, v4

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 500
    sub-int/2addr v3, v4

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 500
    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 502
    invoke-virtual {v15}, Landroid/text/TextPaint;->descent()F

    move-result v4

    .line 500
    sub-float/2addr v3, v4

    .line 502
    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    .line 500
    add-float/2addr v3, v4

    .line 502
    const/high16 v4, 0x40000000    # 2.0f

    .line 500
    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 502
    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    .line 500
    sub-float/2addr v2, v3

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    .line 500
    add-float v14, v2, v3

    .line 503
    goto/16 :goto_0

    .line 505
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v15}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float v14, v2, v3

    .line 506
    goto/16 :goto_0

    .line 522
    .end local v17    # "titleText":Ljava/lang/String;
    .restart local v11    # "iconHeight":I
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingBottom()I

    move-result v3

    sub-int v3, v19, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v11

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    .line 522
    add-int/2addr v2, v3

    int-to-float v14, v2

    .line 524
    goto/16 :goto_1

    .line 526
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getCompoundPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v14, v2

    .line 527
    goto/16 :goto_1

    .line 498
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch

    .line 520
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 452
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 453
    .local v4, "widhtMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 455
    .local v5, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 456
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 458
    .local v1, "height":I
    iget v6, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleHeight:I

    if-le v6, v1, :cond_0

    .line 459
    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleHeight:I

    .line 462
    :cond_0
    iget v6, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    if-le v6, v1, :cond_1

    .line 463
    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    .line 466
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 467
    iget-object v6, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 468
    .local v3, "iconHeight":I
    if-le v3, v1, :cond_2

    .line 469
    move v1, v3

    .line 473
    .end local v3    # "iconHeight":I
    :cond_2
    iget-object v6, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 474
    iget-object v6, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 475
    .local v0, "clearBtnHeight":I
    if-le v0, v1, :cond_3

    .line 476
    move v1, v0

    .line 481
    .end local v0    # "clearBtnHeight":I
    :cond_3
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 480
    invoke-super {p0, p1, v6}, Landroid/widget/EditText;->onMeasure(II)V

    .line 451
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 583
    .local v0, "action":I
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 585
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v6

    .line 587
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v5

    .line 588
    .local v5, "height":I
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    .line 589
    .local v2, "clearBtnLeft":I
    move v3, v6

    .line 590
    .local v3, "clearBtnRight":I
    iget-object v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v5, v7

    iget v8, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    .line 591
    .local v4, "clearBtnTop":I
    add-int v7, v4, v5

    iget v8, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearIconPadding:I

    mul-int/lit8 v8, v8, 0x2

    add-int v1, v7, v8

    .line 601
    .local v1, "clearBtnBottom":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 622
    .end local v1    # "clearBtnBottom":I
    .end local v2    # "clearBtnLeft":I
    .end local v3    # "clearBtnRight":I
    .end local v4    # "clearBtnTop":I
    .end local v5    # "height":I
    .end local v6    # "width":I
    :cond_1
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getWidth()I

    move-result v6

    .line 594
    .restart local v6    # "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getHeight()I

    move-result v5

    .line 595
    .restart local v5    # "height":I
    iget v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextWidth:I

    sub-int v2, v6, v7

    .line 596
    .restart local v2    # "clearBtnLeft":I
    move v3, v6

    .line 597
    .restart local v3    # "clearBtnRight":I
    iget v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    sub-int v7, v5, v7

    div-int/lit8 v4, v7, 0x2

    .line 598
    .restart local v4    # "clearBtnTop":I
    iget v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextHeight:I

    add-int v1, v4, v7

    .restart local v1    # "clearBtnBottom":I
    goto :goto_0

    .line 603
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 605
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    goto :goto_1

    .line 609
    :pswitch_2
    iget-boolean v7, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    if-eqz v7, :cond_1

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v3

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    int-to-float v8, v2

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    int-to-float v8, v4

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 612
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->onClearText()V

    .line 614
    :cond_3
    iput-boolean v9, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    goto :goto_1

    .line 618
    :pswitch_3
    iput-boolean v9, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mIsTouchClearArea:Z

    goto :goto_1

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClearDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 267
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 271
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 265
    :cond_1
    return-void
.end method

.method public setClearText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_0

    .line 277
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    .line 278
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureClearArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 280
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 275
    :cond_0
    return-void
.end method

.method public setClearTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 294
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setClearTextColor(Landroid/content/res/ColorStateList;)V

    .line 293
    return-void
.end method

.method public setClearTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextColor:Landroid/content/res/ColorStateList;

    .line 299
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateClearTextColors()Z

    .line 297
    return-void
.end method

.method public setClearTextPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    return-void
.end method

.method public setClearTextSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 285
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 286
    int-to-float v0, p1

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    .line 287
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mClearTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 289
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 284
    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 191
    and-int/lit16 v0, p1, 0xfff

    iput v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mLeInputType:I

    .line 192
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeTitleEditTextExt;->internalInputTypeSet(I)V

    .line 190
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    .line 306
    return-void
.end method

.method public setTitleIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 312
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 316
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 310
    :cond_1
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_0

    .line 322
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    .line 323
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 325
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 320
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 340
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 339
    return-void
.end method

.method public setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextColor:Landroid/content/res/ColorStateList;

    .line 345
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->updateTitleTextColors()Z

    .line 343
    return-void
.end method

.method public setTitleTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 331
    iget v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 332
    iput p1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    .line 333
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleTextSize:F

    iget-object v2, p0, Lcom/letv/leui/widget/LeTitleEditTextExt;->mTitleText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/letv/leui/widget/LeTitleEditTextExt;->measureTitleArea(Landroid/text/TextPaint;FLjava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->requestLayout()V

    .line 335
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTitleEditTextExt;->invalidate()V

    .line 330
    :cond_0
    return-void
.end method
