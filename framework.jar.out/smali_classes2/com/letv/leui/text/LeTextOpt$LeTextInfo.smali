.class public Lcom/letv/leui/text/LeTextOpt$LeTextInfo;
.super Ljava/lang/Object;
.source "LeTextOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeTextOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeTextInfo"
.end annotation


# instance fields
.field public mAutoLinkMask:I

.field public mCJKFontFamily:Ljava/lang/String;

.field public mCJKFontTextSize:I

.field public mCursorBoundOffset:I

.field public mCursorColor:Landroid/content/res/ColorStateList;

.field public mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public mCursorPadding:I

.field public mCursorWidth:I

.field mEnablePressToDragMode:Z

.field public mEnableSectionSelect:Z

.field public mIsFixCursorHeightToTextHeight:Z

.field public mIsLineCenterVertical:Z

.field public mLastDownPositionX:F

.field public mLastDownPositionY:F

.field public mLeTextStyle:I

.field public mSectionBoundColor:I

.field public mSectionBoundPaint:Landroid/graphics/Paint;

.field public mSectionBoundWidth:I

.field public mSelectedURLTextColor:I

.field protected mSelectionHandleColor:I

.field public mSnapZoomMultiplier:F

.field public mStyleIndex:I

.field public mTextBufferType:Landroid/widget/TextView$BufferType;

.field protected mTextSectionHandleRes:I

.field public mTypefaceIndex:I

.field public mURLPaddingHorizontal:I

.field public mURLPaddingVertical:I

.field public mUrlHighlightColor:I

.field public textColorLink:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorBoundOffset:I

    .line 127
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsFixCursorHeightToTextHeight:Z

    .line 128
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorColor:Landroid/content/res/ColorStateList;

    .line 130
    const v8, 0x1080636

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTextSectionHandleRes:I

    .line 135
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    .line 136
    const/16 v8, 0xc

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingVertical:I

    .line 137
    const v8, -0xdc6a12

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUrlHighlightColor:I

    .line 138
    const v8, -0xdc6a12

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundColor:I

    .line 139
    const/4 v8, -0x1

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSelectedURLTextColor:I

    .line 142
    const/4 v8, 0x3

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundWidth:I

    .line 144
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mEnableSectionSelect:Z

    .line 145
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSnapZoomMultiplier:F

    .line 146
    const v8, -0xdc6a12

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSelectionHandleColor:I

    .line 147
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsLineCenterVertical:Z

    .line 150
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->textColorLink:Landroid/content/res/ColorStateList;

    .line 153
    const/4 v8, -0x1

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontTextSize:I

    .line 154
    const/4 v8, -0x1

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    .line 155
    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTextBufferType:Landroid/widget/TextView$BufferType;

    .line 157
    const/4 v8, -0x1

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTypefaceIndex:I

    .line 158
    const/4 v8, -0x1

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mStyleIndex:I

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 163
    .local v2, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundPaint:Landroid/graphics/Paint;

    .line 164
    iget-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundPaint:Landroid/graphics/Paint;

    iget v9, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 168
    .local v7, "theme":Landroid/content/res/Resources$Theme;
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 169
    .local v6, "outValue":Landroid/util/TypedValue;
    const v8, 0x101042a

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 170
    iget v8, v6, Landroid/util/TypedValue;->data:I

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUrlHighlightColor:I

    .line 171
    iget v8, v6, Landroid/util/TypedValue;->data:I

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundColor:I

    .line 172
    iget v8, v6, Landroid/util/TypedValue;->data:I

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSelectionHandleColor:I

    .line 173
    iget v8, v6, Landroid/util/TypedValue;->data:I

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorColor:Landroid/content/res/ColorStateList;

    .line 176
    :cond_0
    const/4 v4, 0x0

    .line 178
    .local v4, "isSetFixedCursorHeight":Z
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/4 v10, 0x1

    .line 177
    invoke-static {v10, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    .line 180
    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/4 v10, 0x1

    .line 179
    invoke-static {v10, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    .line 181
    sget-object v8, Lcom/android/internal/R$styleable;->LeTextView:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 183
    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 184
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 186
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 183
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :pswitch_1
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mAutoLinkMask:I

    goto :goto_1

    .line 193
    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->textColorLink:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 196
    :pswitch_3
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUrlHighlightColor:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mUrlHighlightColor:I

    goto :goto_1

    .line 199
    :pswitch_4
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSelectedURLTextColor:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSelectedURLTextColor:I

    goto :goto_1

    .line 202
    :pswitch_5
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundColor:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundColor:I

    goto :goto_1

    .line 205
    :pswitch_6
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundWidth:I

    goto :goto_1

    .line 208
    :pswitch_7
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingHorizontal:I

    goto :goto_1

    .line 211
    :pswitch_8
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingVertical:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mURLPaddingVertical:I

    goto :goto_1

    .line 214
    :pswitch_9
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTextSectionHandleRes:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mTextSectionHandleRes:I

    goto :goto_1

    .line 217
    :pswitch_a
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mEnablePressToDragMode:Z

    goto :goto_1

    .line 220
    :pswitch_b
    iget-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mEnableSectionSelect:Z

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mEnableSectionSelect:Z

    goto :goto_1

    .line 223
    :pswitch_c
    iget-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsLineCenterVertical:Z

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsLineCenterVertical:Z

    goto :goto_1

    .line 226
    :pswitch_d
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 229
    :pswitch_e
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    goto :goto_1

    .line 232
    :pswitch_f
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSnapZoomMultiplier:F

    goto/16 :goto_1

    .line 235
    :pswitch_10
    iget-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsFixCursorHeightToTextHeight:Z

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsFixCursorHeightToTextHeight:Z

    .line 236
    const/4 v4, 0x1

    .line 237
    goto/16 :goto_1

    .line 239
    :pswitch_11
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontFamily:Ljava/lang/String;

    goto/16 :goto_1

    .line 242
    :pswitch_12
    const/4 v8, -0x1

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCJKFontTextSize:I

    goto/16 :goto_1

    .line 245
    :pswitch_13
    const/4 v8, -0x1

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    goto/16 :goto_1

    .line 248
    :pswitch_14
    const/4 v8, -0x1

    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mLeTextStyle:I

    goto/16 :goto_1

    .line 252
    .end local v1    # "attr":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    return-void

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public getCursorDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cursorDrawableRes"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    .line 288
    :cond_0
    if-eqz p2, :cond_1

    const v0, 0x10808cd

    if-ne p2, v0, :cond_3

    .line 290
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 291
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 292
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorBoundOffset:I

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mIsFixCursorHeightToTextHeight:Z

    .line 294
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 295
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 300
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0

    .line 289
    :cond_3
    const v0, 0x10808ce

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    const v1, -0xdc6a12

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1
.end method

.method public getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 408
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSelectionHandleColor:I

    .line 409
    .local v0, "color":I
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 410
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lcom/letv/leui/text/HandleShape;

    invoke-direct {v3, p1, p2, v0}, Lcom/letv/leui/text/HandleShape;-><init>(Landroid/content/Context;II)V

    .line 412
    .local v3, "shape":Landroid/graphics/drawable/shapes/Shape;
    invoke-virtual {v3}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v5

    float-to-int v4, v5

    .line 413
    .local v4, "width":I
    invoke-virtual {v3}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v5

    float-to-int v2, v5

    .line 414
    .local v2, "height":I
    invoke-virtual {v1, v6, v6, v4, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 415
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 416
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 417
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 419
    return-object v1
.end method

.method public getInsertHandle(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mTextSelectHandleRes"    # I

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->isSystemHandleRes(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 385
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 383
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getLeFontWeight(I)Ljava/lang/String;
    .locals 1
    .param p1, "weight"    # I

    .prologue
    .line 267
    packed-switch p1, :pswitch_data_0

    .line 279
    const/4 v0, 0x0

    return-object v0

    .line 269
    :pswitch_0
    const-string/jumbo v0, "helve-neue-thin"

    return-object v0

    .line 271
    :pswitch_1
    const-string/jumbo v0, "helve-neue-light"

    return-object v0

    .line 273
    :pswitch_2
    const-string/jumbo v0, "helve-neue"

    return-object v0

    .line 275
    :pswitch_3
    const-string/jumbo v0, "helve-neue-medium"

    return-object v0

    .line 277
    :pswitch_4
    const-string/jumbo v0, "helve-neue-bold"

    return-object v0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSelectHandleLeft(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mTextSelectHandleLeftRes"    # I

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->isSystemHandleLeftRes(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 365
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 363
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getSelectHandleRight(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mTextSelectHandleRightRes"    # I

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->isSystemHandleRightRes(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 373
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getHandleDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getURLSpanPos(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 262
    invoke-static {p1}, Lcom/letv/leui/text/LeSelection;->getURLSpanPos(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public isSystemHandleLeftRes(I)Z
    .locals 2
    .param p1, "mTextSelectHandleLeftRes"    # I

    .prologue
    const/4 v0, 0x1

    .line 389
    const v1, 0x10808d3

    if-eq p1, v1, :cond_0

    .line 391
    const v1, 0x10808d4

    if-ne p1, v1, :cond_1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemHandleRes(I)Z
    .locals 2
    .param p1, "mTextSelectHandleRes"    # I

    .prologue
    const/4 v0, 0x1

    .line 401
    const v1, 0x10808d6

    if-eq p1, v1, :cond_0

    .line 403
    const v1, 0x10808d7

    if-ne p1, v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemHandleRightRes(I)Z
    .locals 2
    .param p1, "mTextSelectHandleRightRes"    # I

    .prologue
    const/4 v0, 0x1

    .line 395
    const v1, 0x10808d9

    if-eq p1, v1, :cond_0

    .line 397
    const v1, 0x10808da

    if-ne p1, v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurcorColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 306
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 307
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorBoundOffset:I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 303
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 258
    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mSectionBoundColor:I

    .line 257
    return-void
.end method

.method public updateCursorPosition(Landroid/widget/TextView;[Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;IIIFZ)V
    .locals 11
    .param p1, "mTextView"    # Landroid/widget/TextView;
    .param p2, "mCursorDrawable"    # [Landroid/graphics/drawable/Drawable;
    .param p3, "mCursorDrawableRes"    # I
    .param p4, "mTempRect"    # Landroid/graphics/Rect;
    .param p5, "cursorIndex"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "horizontal"    # F
    .param p9, "isShowingHint"    # Z

    .prologue
    .line 318
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->updateCursorPosition(Landroid/widget/TextView;[Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;IIIFZZ)V

    .line 317
    return-void
.end method

.method public updateCursorPosition(Landroid/widget/TextView;[Landroid/graphics/drawable/Drawable;ILandroid/graphics/Rect;IIIFZZ)V
    .locals 18
    .param p1, "mTextView"    # Landroid/widget/TextView;
    .param p2, "mCursorDrawable"    # [Landroid/graphics/drawable/Drawable;
    .param p3, "mCursorDrawableRes"    # I
    .param p4, "mTempRect"    # Landroid/graphics/Rect;
    .param p5, "cursorIndex"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "horizontal"    # F
    .param p9, "isShowingHint"    # Z
    .param p10, "isSingleLine"    # Z

    .prologue
    .line 324
    aget-object v14, p2, p5

    if-nez v14, :cond_0

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v14, v1}, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->getCursorDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 326
    .local v3, "customCursor":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .end local v3    # "customCursor":Landroid/graphics/drawable/Drawable;
    :goto_0
    aput-object v3, p2, p5

    .line 330
    :cond_0
    aget-object v14, p2, p5

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 331
    aget-object v14, p2, p5

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 332
    .local v13, "width":I
    const/high16 v14, 0x3f000000    # 0.5f

    sub-float v14, p8, v14

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result p8

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    .line 334
    .local v12, "selectionStart":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    .line 335
    .local v11, "selectionEnd":I
    if-ne v11, v12, :cond_5

    if-eqz v11, :cond_5

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ne v11, v14, :cond_4

    const/4 v5, 0x1

    .line 337
    .local v5, "isEnd":Z
    :goto_1
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    .line 338
    .local v2, "cursorPadding":I
    :goto_2
    if-ne v11, v12, :cond_1

    if-nez v11, :cond_1

    if-eqz p9, :cond_1

    .line 339
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/text/LeTextOpt$LeTextInfo;->mCursorPadding:I

    neg-int v2, v14

    .line 341
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    .line 342
    .local v7, "layout":Landroid/text/Layout;
    if-nez p10, :cond_2

    if-eqz v7, :cond_2

    .line 343
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    .line 344
    .local v9, "line":I
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v6, v14

    .line 345
    .local v6, "l":I
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v10, v14

    .line 347
    .local v10, "r":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v15

    sub-int v4, v14, v15

    .line 348
    .local v4, "hspace":I
    sub-int v14, v10, v6

    add-int/2addr v14, v2

    add-int/2addr v14, v13

    if-le v14, v4, :cond_2

    .line 349
    const/4 v2, 0x0

    .line 353
    .end local v4    # "hspace":I
    .end local v6    # "l":I
    .end local v9    # "line":I
    .end local v10    # "r":I
    :cond_2
    move/from16 v0, p8

    float-to-int v14, v0

    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v15

    add-int v8, v14, v2

    .line 354
    .local v8, "left":I
    aget-object v14, p2, p5

    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->top:I

    sub-int v15, p6, v15

    add-int v16, v8, v13

    .line 355
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v17, v17, p7

    .line 354
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v8, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    return-void

    .line 327
    .end local v2    # "cursorPadding":I
    .end local v5    # "isEnd":Z
    .end local v7    # "layout":Landroid/text/Layout;
    .end local v8    # "left":I
    .end local v11    # "selectionEnd":I
    .end local v12    # "selectionStart":I
    .end local v13    # "width":I
    .restart local v3    # "customCursor":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_0

    .line 336
    .end local v3    # "customCursor":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "selectionEnd":I
    .restart local v12    # "selectionStart":I
    .restart local v13    # "width":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "isEnd":Z
    goto :goto_1

    .line 335
    .end local v5    # "isEnd":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "isEnd":Z
    goto :goto_1

    .line 337
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "cursorPadding":I
    goto :goto_2
.end method
