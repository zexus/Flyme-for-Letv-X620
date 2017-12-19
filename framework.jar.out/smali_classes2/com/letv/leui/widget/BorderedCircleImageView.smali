.class public Lcom/letv/leui/widget/BorderedCircleImageView;
.super Landroid/widget/ImageView;
.source "BorderedCircleImageView.java"


# static fields
.field private static synthetic -android_widget_ImageView$ScaleTypeSwitchesValues:[I = null

.field public static final DEFAULT_BORDER:I = 0x0

.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final DEFAULT_RADIUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BorderedCircleImageView"

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBorderColor:I

.field private mBorderWidth:I

.field private mCircleRadius:I

.field private mCustomizedXmlParamsLoaded:Z

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mRoundBackground:Z

.field private mRoundImage:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method private static synthetic -getandroid_widget_ImageView$ScaleTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/BorderedCircleImageView;->-android_widget_ImageView$ScaleTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/BorderedCircleImageView;->-android_widget_ImageView$ScaleTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/letv/leui/widget/BorderedCircleImageView;->-android_widget_ImageView$ScaleTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 36
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 37
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 40
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 41
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 42
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 43
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 35
    sput-object v0, Lcom/letv/leui/widget/BorderedCircleImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    .line 48
    iput v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    .line 49
    iput v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    .line 50
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    .line 52
    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-boolean v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    .line 62
    sget-object v1, Lcom/android/internal/R$styleable;->LeCustomizedImageView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    .line 67
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    .line 70
    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    if-gez v1, :cond_0

    .line 71
    iput v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    .line 73
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    if-gez v1, :cond_1

    .line 74
    iput v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    .line 77
    :cond_1
    const/4 v1, 0x4

    .line 78
    const/high16 v2, -0x1000000

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    .line 80
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    .line 81
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    iput-boolean v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    .line 87
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 88
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 94
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    :cond_4
    return-void

    .line 89
    :cond_5
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getBorder()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public isRoundBackground()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 356
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 358
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredWidth()I

    move-result v3

    .line 359
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredHeight()I

    move-result v1

    .line 360
    .local v1, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 361
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 363
    .local v2, "heightMode":I
    const/4 v0, 0x0

    .line 365
    .local v0, "changed":Z
    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_0

    if-ne v4, v6, :cond_0

    .line 366
    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    mul-int/lit8 v3, v5, 0x2

    .line 367
    const/4 v0, 0x1

    .line 370
    :cond_0
    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v1, v5, :cond_1

    if-ne v2, v6, :cond_1

    .line 371
    iget v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    mul-int/lit8 v1, v5, 0x2

    .line 372
    const/4 v0, 0x1

    .line 375
    :cond_1
    if-eqz v0, :cond_2

    .line 379
    invoke-static {v3, p1}, Lcom/letv/leui/widget/BorderedCircleImageView;->resolveSize(II)I

    move-result v5

    .line 380
    invoke-static {v1, p2}, Lcom/letv/leui/widget/BorderedCircleImageView;->resolveSize(II)I

    move-result v6

    .line 379
    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/BorderedCircleImageView;->setMeasuredDimension(II)V

    .line 355
    :cond_2
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 258
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v1, :cond_0

    .line 214
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    return-void

    .line 218
    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    .line 219
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_5

    .line 220
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getWidth()I

    move-result v5

    .line 221
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getHeight()I

    move-result v6

    .line 223
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredWidth()I

    move-result v1

    if-ge v5, v1, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredWidth()I

    move-result v5

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredHeight()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getMeasuredHeight()I

    move-result v6

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 232
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v5, v1, :cond_3

    .line 233
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v6, v1, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    :cond_4
    new-instance v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v2, v2

    .line 243
    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    .line 244
    iget-object v7, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 242
    invoke-direct/range {v0 .. v7}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable;FIIIILandroid/widget/ImageView$ScaleType;)V

    .line 245
    .local v0, "drawable":Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;
    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    .end local v0    # "drawable":Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;
    .end local v5    # "width":I
    .end local v6    # "height":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-void

    .line 248
    :cond_5
    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iget-object v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 247
    invoke-static {p1, v1, v2, v3, v4}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 251
    :cond_6
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 267
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 262
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 312
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    if-ne v0, p1, :cond_0

    .line 313
    return-void

    .line 316
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    .line 317
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderColor(I)V

    .line 320
    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderColor(I)V

    .line 323
    :cond_2
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    if-lez v0, :cond_3

    .line 324
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->invalidate()V

    .line 311
    :cond_3
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 297
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    if-ne v0, p1, :cond_0

    .line 298
    return-void

    .line 301
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    .line 302
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderWidth(I)V

    .line 305
    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderWidth(I)V

    .line 308
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->invalidate()V

    .line 296
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .prologue
    .line 283
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    if-ne v0, p1, :cond_0

    .line 284
    return-void

    .line 287
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    .line 288
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setCircleRadius(F)V

    .line 291
    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setCircleRadius(F)V

    .line 282
    :cond_2
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    .line 190
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 191
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    return-void

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 196
    new-instance v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v2, v1

    iget v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    .line 197
    iget v4, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iget-object v5, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v1, p1

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;FIILandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    return-void

    .line 200
    :cond_1
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    iput-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 171
    return-void

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    if-eqz v0, :cond_1

    .line 175
    iget v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v0, v0

    .line 176
    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    iget v2, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    iget-object v3, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 175
    invoke-static {p1, v0, v1, v2, v3}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;FIILandroid/widget/ImageView$ScaleType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 2
    .param p1, "roundBackground"    # Z

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    if-ne v0, p1, :cond_0

    .line 334
    return-void

    .line 337
    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundBackground:Z

    .line 338
    if-eqz p1, :cond_3

    .line 339
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget-object v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCircleRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setCircleRadius(F)V

    .line 342
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderWidth:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderWidth(I)V

    .line 343
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    iget v1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderColor(I)V

    .line 352
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->invalidate()V

    .line 332
    return-void

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setBorderWidth(I)V

    .line 349
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setCircleRadius(F)V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 113
    return-void

    .line 116
    :cond_0
    if-nez p1, :cond_1

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 120
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 122
    invoke-static {}, Lcom/letv/leui/widget/BorderedCircleImageView;->-getandroid_widget_ImageView$ScaleTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 148
    iget-object v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/BorderedCircleBitmapDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 150
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setWillNotCacheDrawing(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->requestLayout()V

    .line 152
    invoke-virtual {p0}, Lcom/letv/leui/widget/BorderedCircleImageView;->invalidate()V

    .line 110
    return-void

    .line 130
    :pswitch_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mCustomizedXmlParamsLoaded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/letv/leui/widget/BorderedCircleImageView;->mRoundImage:Z

    if-eqz v0, :cond_4

    .line 131
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 133
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
