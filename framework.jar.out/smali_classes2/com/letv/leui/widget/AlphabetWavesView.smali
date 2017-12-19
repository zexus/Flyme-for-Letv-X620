.class public Lcom/letv/leui/widget/AlphabetWavesView;
.super Landroid/widget/LinearLayout;
.source "AlphabetWavesView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;,
        Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;,
        Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;,
        Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;,
        Lcom/letv/leui/widget/AlphabetWavesView$1;,
        Lcom/letv/leui/widget/AlphabetWavesView$2;,
        Lcom/letv/leui/widget/AlphabetWavesView$3;
    }
.end annotation


# static fields
.field private static synthetic -com_letv_leui_widget_AlphabetWavesView$EnvLanguageSwitchesValues:[I = null

.field private static final DURATION_CROSS_FADE:I = 0x32

.field private static final DURATION_FADE_IN:I = 0x96

.field private static final DURATION_FADE_OUT:I = 0x12c

.field private static final FADE_TIMEOUT:J = 0x5dcL

.field private static final POP_LIMIT_NUM:I = 0xa

.field public static final STAR:Ljava/lang/String; = "\u2606"

.field private static final STATE_CHANGE_TEXT:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TOUCH_RECT_LEFT_OFFSET_DIP:I = 0x19

.field private static final mInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final LONGPRESS_TIMEOUT:I

.field private final LONG_SELECT:I

.field private final TAP_TIMEOUT:I

.field private envLanguage:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

.field private isPoped:Z

.field isSetList:Z

.field private isShowSelected:Z

.field private mAlphabetLeftMargin:I

.field private mAlphabetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphabetListener:Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

.field private mAlphabetMaxOffset:I

.field private mAlphabetTextSize:I

.field private mAnimMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mBackAnimTime:J

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mCurrentSelection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field mDefaultColor:I

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInSelect:Z

.field private mIndexListSize:I

.field private mIsClipInitial:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private mMaxOffset:I

.field private mMoveCount:I

.field private mOverlay:Landroid/view/ViewGroupOverlay;

.field private mPaddingTopBottom:I

.field private mPopAnimTime:J

.field private mPreSelection:I

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/widget/ImageView;

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mSecondaryText:Landroid/widget/TextView;

.field mSelectedColor:I

.field private mSelectedRect:Landroid/graphics/Rect;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mSideIndexHeight:I

.field private mSideIndexX:F

.field private mSideIndexY:F

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mToastBg:Landroid/graphics/drawable/Drawable;

.field private mToastOffset:I

.field private mToastTextSize:I

.field private mTouchRectLeftOffset:I

.field private mUpdatingLayout:Z

.field private mViewWidth:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/AlphabetWavesView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPrimary:Z

    return v0
.end method

.method private static synthetic -getcom_letv_leui_widget_AlphabetWavesView$EnvLanguageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/AlphabetWavesView;->-com_letv_leui_widget_AlphabetWavesView$EnvLanguageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/AlphabetWavesView;->-com_letv_leui_widget_AlphabetWavesView$EnvLanguageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->values()[Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->CN:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-virtual {v1}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->HK:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-virtual {v1}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->TW:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-virtual {v1}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/letv/leui/widget/AlphabetWavesView;->-com_letv_leui_widget_AlphabetWavesView$EnvLanguageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/AlphabetWavesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/AlphabetWavesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPrimary:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/AlphabetWavesView;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->transitionToHidden()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/AlphabetWavesView$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 176
    const v0, 0x11600c1

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/AlphabetWavesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v9, 0x7

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mBackAnimTime:J

    .line 114
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->LONGPRESS_TIMEOUT:I

    .line 115
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->TAP_TIMEOUT:I

    .line 116
    iput v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->LONG_SELECT:I

    .line 121
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedRect:Landroid/graphics/Rect;

    .line 128
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mContainerRect:Landroid/graphics/Rect;

    .line 129
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempBounds:Landroid/graphics/Rect;

    .line 130
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempMargins:Landroid/graphics/Rect;

    .line 131
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    .line 147
    iput v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreSelection:I

    .line 149
    iput v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    .line 157
    iput-boolean v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    .line 158
    iput-boolean v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    .line 161
    const v3, -0xdc6c14

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    .line 163
    const/high16 v3, -0x1000000

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    .line 166
    sget-object v3, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->CN:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->envLanguage:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    .line 169
    iput-boolean v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    .line 818
    new-instance v3, Lcom/letv/leui/widget/AlphabetWavesView$2;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/AlphabetWavesView$2;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDeferHide:Ljava/lang/Runnable;

    .line 981
    new-instance v3, Lcom/letv/leui/widget/AlphabetWavesView$3;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/AlphabetWavesView$3;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 185
    .local v1, "res":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/internal/R$styleable;->AlphabetWavesView:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 186
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x36

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMaxOffset:I

    .line 187
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    .line 188
    const/4 v3, 0x2

    const/16 v4, 0x78

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPopAnimTime:J

    .line 190
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    .line 194
    const v3, 0x10501ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 193
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastOffset:I

    .line 196
    const v3, 0x10501a8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 195
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastTextSize:I

    .line 198
    const v3, 0x10501a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 197
    invoke-virtual {v0, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetTextSize:I

    .line 200
    const v3, 0x10501ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 199
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetMaxOffset:I

    .line 202
    const v3, 0x10501aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 201
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    .line 204
    const v3, 0x10501ae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 203
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetLeftMargin:I

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 208
    const v3, 0x10804dd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    .line 214
    :cond_0
    const v3, 0x10501ab

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mViewWidth:I

    .line 215
    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->dip2px(F)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTouchRectLeftOffset:I

    .line 217
    new-instance v3, Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;)V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    .line 219
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    .line 222
    iput-boolean v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 224
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    .line 225
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 226
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 227
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 230
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 231
    .local v2, "textMinSize":I
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->createPreviewTextView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    .line 232
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 233
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 235
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->createPreviewTextView()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    .line 236
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 237
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 239
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->isCenter()V

    .line 180
    return-void
.end method

.method private addTextView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 894
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->removeAllViews()V

    .line 895
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 896
    return-void

    .line 900
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .local v0, "i":D
    :goto_0
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    int-to-double v6, v5

    cmpg-double v5, v0, v6

    if-gtz v5, :cond_1

    .line 901
    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    double-to-int v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    iget-object v3, v5, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .line 903
    .local v3, "tmpAlphabet":Ljava/lang/String;
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 904
    .local v4, "tmpTV":Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 906
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 907
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 908
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 909
    const/high16 v5, 0x3f800000    # 1.0f

    .line 908
    invoke-direct {v2, v8, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 910
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetLeftMargin:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 911
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 914
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->addView(Landroid/view/View;)V

    .line 900
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v6

    goto :goto_0

    .line 893
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "tmpAlphabet":Ljava/lang/String;
    .end local v4    # "tmpTV":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private adjustPadding()V
    .locals 5

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetMaxOffset:I

    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetTextSize:I

    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 920
    .local v0, "padding":I
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    if-le v0, v1, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->setPadding(IIII)V

    .line 918
    :goto_0
    return-void

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingEnd()I

    move-result v3

    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 992
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1090
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1091
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1089
    return-void
.end method

.method private changeTextColor(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "isWhite"    # Z

    .prologue
    .line 1102
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1103
    .local v0, "curTextV":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1104
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1101
    :cond_0
    return-void

    .line 1104
    :cond_1
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    goto :goto_0
.end method

.method private createPreviewTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v2, -0x2

    .line 1049
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1053
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1054
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1055
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1056
    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastTextSize:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1057
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1059
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1060
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1061
    return-object v1
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1110
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private doBackAnim(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1095
    const-string/jumbo v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    aput v3, v2, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1096
    .local v0, "tmpAnimator":Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mBackAnimTime:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1097
    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1098
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1094
    return-void
.end method

.method private getItemPosition()I
    .locals 8

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingTop()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexHeight:I

    .line 714
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexHeight:I

    int-to-double v4, v1

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    int-to-double v6, v1

    div-double v2, v4, v6

    .line 716
    .local v2, "pixelPerIndexItem":D
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    float-to-double v4, v1

    div-double/2addr v4, v2

    double-to-int v0, v4

    .line 717
    .local v0, "itemPosition":I
    return v0
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    const/4 v6, 0x0

    .line 837
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 838
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .line 840
    .local v2, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .end local v2    # "builder":Landroid/animation/AnimatorSet$Builder;
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 841
    aget-object v4, p2, v3

    const/4 v5, 0x1

    new-array v5, v5, [F

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 842
    .local v0, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 843
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 840
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 845
    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 849
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_1
    return-object v1
.end method

.method private isCenter()V
    .locals 4

    .prologue
    const/16 v3, 0x1b

    const/4 v2, 0x0

    .line 306
    invoke-static {}, Lcom/letv/leui/widget/AlphabetWavesView;->-getcom_letv_leui_widget_AlphabetWavesView$EnvLanguageSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->envLanguage:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    invoke-virtual {v1}, Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 314
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->setGravity(I)V

    .line 315
    iget v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->setPadding(IIII)V

    .line 305
    :goto_0
    return-void

    .line 309
    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->setGravity(I)V

    .line 310
    iget v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPaddingTopBottom:I

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->setPadding(IIII)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 17
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1018
    if-nez p2, :cond_0

    .line 1019
    const/4 v8, 0x0

    .line 1020
    .local v8, "marginLeft":I
    const/4 v10, 0x0

    .line 1021
    .local v10, "marginTop":I
    const/4 v9, 0x0

    .line 1028
    .local v9, "marginRight":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mContainerRect:Landroid/graphics/Rect;

    .line 1029
    .local v3, "container":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1030
    .local v5, "containerWidth":I
    sub-int v15, v5, v8

    sub-int v1, v15, v9

    .line 1031
    .local v1, "adjMaxWidth":I
    const/high16 v15, -0x80000000

    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 1032
    .local v14, "widthMeasureSpec":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1033
    .local v6, "heightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6}, Landroid/view/View;->measure(II)V

    .line 1036
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1037
    .local v4, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v13

    .line 1038
    .local v13, "width":I
    sub-int v15, v4, v13

    div-int/lit8 v15, v15, 0x2

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v12, v15, v16

    .line 1039
    .local v12, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int v2, v12, v15

    .line 1040
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mViewWidth:I

    sub-int v15, v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastOffset:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int/2addr v15, v13

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v7, v15, v16

    .line 1041
    .local v7, "left":I
    add-int v11, v7, v13

    .line 1042
    .local v11, "right":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v12, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1014
    return-void

    .line 1023
    .end local v1    # "adjMaxWidth":I
    .end local v2    # "bottom":I
    .end local v3    # "container":Landroid/graphics/Rect;
    .end local v4    # "containerHeight":I
    .end local v5    # "containerWidth":I
    .end local v6    # "heightMeasureSpec":I
    .end local v7    # "left":I
    .end local v8    # "marginLeft":I
    .end local v9    # "marginRight":I
    .end local v10    # "marginTop":I
    .end local v11    # "right":I
    .end local v12    # "top":I
    .end local v13    # "width":I
    .end local v14    # "widthMeasureSpec":I
    :cond_0
    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 1024
    .restart local v8    # "marginLeft":I
    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 1025
    .restart local v10    # "marginTop":I
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .restart local v9    # "marginRight":I
    goto :goto_0
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempMargins:Landroid/graphics/Rect;

    .line 1006
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1007
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1008
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1009
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1011
    invoke-direct {p0, p1, v0, p2}, Lcom/letv/leui/widget/AlphabetWavesView;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1003
    return-void
.end method

.method private postAutoHide()V
    .locals 4

    .prologue
    .line 889
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 890
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 888
    return-void
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 795
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 797
    packed-switch p1, :pswitch_data_0

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 799
    :pswitch_0
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->postAutoHide()V

    goto :goto_0

    .line 802
    :pswitch_1
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    iget-object v0, v1, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .line 803
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->transitionToVisible()V

    goto :goto_0

    .line 808
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    iget v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->transitionPreviewLayout(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->transitionToHidden()V

    goto :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private transitionPreviewLayout(I)Z
    .locals 10
    .param p1, "sectionIndex"    # I

    .prologue
    const-wide/16 v8, 0x32

    .line 936
    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    iget-object v5, v6, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .line 938
    .local v5, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempBounds:Landroid/graphics/Rect;

    .line 941
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    .line 942
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    .line 943
    .local v3, "showing":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    .line 950
    .local v4, "target":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    invoke-direct {p0, v4, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 952
    invoke-direct {p0, v4, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 954
    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_0

    .line 955
    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 959
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Lcom/letv/leui/widget/AlphabetWavesView;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 960
    .local v2, "showTarget":Landroid/animation/Animator;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/letv/leui/widget/AlphabetWavesView;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 961
    .local v1, "hideShowing":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 964
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 965
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 966
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 967
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 971
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 972
    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 973
    iget-object v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 975
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    return v6

    .line 945
    .end local v1    # "hideShowing":Landroid/animation/Animator;
    .end local v2    # "showTarget":Landroid/animation/Animator;
    .end local v3    # "showing":Landroid/widget/TextView;
    .end local v4    # "target":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    .line 946
    .restart local v3    # "showing":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    .restart local v4    # "target":Landroid/widget/TextView;
    goto :goto_0

    .line 975
    .restart local v1    # "hideShowing":Landroid/animation/Animator;
    .restart local v2    # "showTarget":Landroid/animation/Animator;
    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private transitionToHidden()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 856
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 860
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    .line 861
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 860
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/letv/leui/widget/AlphabetWavesView;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 861
    const-wide/16 v2, 0x12c

    .line 860
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 863
    .local v0, "fadeOut":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 864
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 865
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 867
    iput-boolean v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPreview:Z

    .line 855
    return-void
.end method

.method private transitionToVisible()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 874
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 878
    :cond_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    .line 879
    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 878
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v2}, Lcom/letv/leui/widget/AlphabetWavesView;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 879
    const-wide/16 v2, 0x96

    .line 878
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 881
    .local v0, "fadeIn":Landroid/animation/Animator;
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 882
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 883
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 885
    iput-boolean v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPreview:Z

    .line 873
    return-void
.end method

.method private updateContainerRect()V
    .locals 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mContainerRect:Landroid/graphics/Rect;

    .line 1076
    .local v0, "container":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1077
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1078
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1079
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1067
    return-void
.end method


# virtual methods
.method protected backAlphabet(Z)V
    .locals 8
    .param p1, "isSelected"    # Z

    .prologue
    const/4 v7, 0x0

    .line 681
    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    .line 682
    return-void

    .line 685
    :cond_0
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v0, v5, 0x2

    .line 686
    .local v0, "halfMoveCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 687
    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    .line 688
    .local v3, "vaAnim":Landroid/animation/ValueAnimator;
    if-eqz v3, :cond_1

    .line 689
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 692
    :cond_1
    if-eqz p1, :cond_5

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    sub-int/2addr v5, v0

    if-le v1, v5, :cond_5

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    add-int/2addr v5, v0

    if-ge v1, v5, :cond_5

    .line 693
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 695
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 696
    .local v2, "tX":F
    :goto_1
    cmpg-float v5, v2, v7

    if-ltz v5, :cond_2

    cmpl-float v5, v2, v7

    if-lez v5, :cond_3

    .line 697
    :cond_2
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->doBackAnim(Landroid/view/View;)V

    .line 686
    .end local v2    # "tX":F
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .restart local v4    # "view":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "tX":F
    goto :goto_1

    .line 700
    .end local v2    # "tX":F
    .end local v4    # "view":Landroid/view/View;
    :cond_5
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    sub-int/2addr v5, v0

    if-le v1, v5, :cond_6

    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    add-int/2addr v5, v0

    if-lt v1, v5, :cond_3

    .line 701
    :cond_6
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 703
    .restart local v4    # "view":Landroid/view/View;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 704
    .restart local v2    # "tX":F
    :goto_3
    cmpg-float v5, v2, v7

    if-ltz v5, :cond_7

    cmpl-float v5, v2, v7

    if-lez v5, :cond_3

    .line 705
    :cond_7
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->doBackAnim(Landroid/view/View;)V

    goto :goto_2

    .line 703
    .end local v2    # "tX":F
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "tX":F
    goto :goto_3

    .line 680
    .end local v2    # "tX":F
    .end local v3    # "vaAnim":Landroid/animation/ValueAnimator;
    .end local v4    # "view":Landroid/view/View;
    :cond_9
    return-void
.end method

.method public isClipIntial()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 767
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 768
    iget-boolean v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    if-eqz v2, :cond_2

    .line 769
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->adjustPadding()V

    .line 770
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->requestLayout()V

    .line 771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 772
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 773
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 771
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iput-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    .line 777
    iput-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    .line 779
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->updatePopAlphabetLayout()V

    .line 780
    iget-boolean v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    if-nez v2, :cond_3

    .line 781
    iget v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    .line 766
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIndexListSize:I

    .line 789
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->addTextView()V

    .line 791
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 786
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 756
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 757
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 758
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 760
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 761
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 762
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 755
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    .line 501
    const/4 v15, 0x6

    .line 500
    if-ne v14, v15, :cond_0

    const/4 v8, 0x1

    .line 502
    .local v8, "pointerUp":Z
    :goto_0
    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    .line 504
    .local v11, "skipIndex":I
    :goto_1
    const/4 v12, 0x0

    .local v12, "sumX":F
    const/4 v13, 0x0

    .line 505
    .local v13, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 506
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_3

    .line 507
    if-ne v11, v6, :cond_2

    .line 506
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 500
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v8    # "pointerUp":Z
    .end local v11    # "skipIndex":I
    .end local v12    # "sumX":F
    .end local v13    # "sumY":F
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "pointerUp":Z
    goto :goto_0

    .line 502
    :cond_1
    const/4 v11, -0x1

    .restart local v11    # "skipIndex":I
    goto :goto_1

    .line 508
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v12    # "sumX":F
    .restart local v13    # "sumY":F
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 509
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    goto :goto_3

    .line 511
    :cond_3
    if-eqz v8, :cond_6

    add-int/lit8 v3, v2, -0x1

    .line 512
    .local v3, "div":I
    :goto_4
    int-to-float v14, v3

    div-float v4, v12, v14

    .line 513
    .local v4, "focusX":F
    int-to-float v14, v3

    div-float v5, v13, v14

    .line 514
    .local v5, "focusY":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTouchRectLeftOffset:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v14, Landroid/graphics/Rect;->left:I

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingTop()I

    move-result v14

    int-to-float v14, v14

    cmpg-float v14, v5, v14

    if-ltz v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    cmpl-float v14, v5, v14

    if-lez v14, :cond_7

    .line 519
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->backAlphabet(Z)V

    .line 523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 524
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    .line 525
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    if-nez v14, :cond_5

    .line 526
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    .line 529
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    .line 530
    const/4 v14, 0x0

    return v14

    .line 511
    .end local v3    # "div":I
    .end local v4    # "focusX":F
    .end local v5    # "focusY":F
    :cond_6
    move v3, v2

    .restart local v3    # "div":I
    goto :goto_4

    .line 518
    .restart local v4    # "focusX":F
    .restart local v5    # "focusY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempRect:Landroid/graphics/Rect;

    float-to-int v15, v4

    float-to-int v0, v5

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 533
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreSelection:I

    if-eq v14, v15, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 534
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    .line 537
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    packed-switch v14, :pswitch_data_0

    .line 607
    :cond_9
    :goto_5
    const/4 v14, 0x1

    return v14

    .line 539
    :pswitch_0
    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    .line 540
    move-object/from16 v0, p0

    iput v5, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    .line 541
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->selectAlphabet()Z

    .line 543
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getItemPosition()I

    move-result v7

    .line 545
    .local v7, "itemPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreSelection:I

    if-ne v14, v7, :cond_a

    .line 546
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    .line 548
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    .line 549
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    .line 550
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/16 v15, 0xa

    if-lt v14, v15, :cond_9

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v16

    .line 553
    move-object/from16 v0, p0

    iget v15, v0, Lcom/letv/leui/widget/AlphabetWavesView;->TAP_TIMEOUT:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    .line 552
    add-long v16, v16, v18

    const/4 v15, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_5

    .line 558
    .end local v7    # "itemPosition":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusX:F

    sub-float v9, v14, v4

    .line 559
    .local v9, "scrollX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusY:F

    sub-float v10, v14, v5

    .line 560
    .local v10, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    if-nez v14, :cond_c

    .line 561
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-gez v14, :cond_b

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_c

    .line 562
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    sub-float/2addr v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    .line 563
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    sub-float/2addr v14, v10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    .line 564
    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusX:F

    .line 565
    move-object/from16 v0, p0

    iput v5, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusY:F

    .line 566
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    .line 567
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->selectAlphabet()Z

    goto/16 :goto_5

    .line 574
    :cond_c
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-gez v14, :cond_d

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    .line 575
    :cond_d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    sub-float/2addr v14, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    .line 576
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    sub-float/2addr v14, v10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    .line 577
    move-object/from16 v0, p0

    iput v4, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusX:F

    .line 578
    move-object/from16 v0, p0

    iput v5, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mLastFocusY:F

    .line 579
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    .line 581
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexX:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mSideIndexY:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_9

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->selectAlphabet()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->popAlphabet()V

    goto/16 :goto_5

    .line 590
    .end local v9    # "scrollX":F
    .end local v10    # "scrollY":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    if-eqz v14, :cond_e

    .line 591
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z

    .line 593
    :cond_e
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    .line 595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->backAlphabet(Z)V

    .line 598
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    .line 599
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    .line 601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 602
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    goto/16 :goto_5

    .line 537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected popAlphabet()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 644
    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    .line 645
    return-void

    .line 647
    :cond_0
    invoke-virtual {p0, v12}, Lcom/letv/leui/widget/AlphabetWavesView;->backAlphabet(Z)V

    .line 649
    iput-boolean v13, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    .line 650
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-direct {p0, v5, v12}, Lcom/letv/leui/widget/AlphabetWavesView;->changeTextColor(IZ)V

    .line 651
    iput-boolean v12, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 652
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    .line 655
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v0, v5, 0x2

    .line 656
    .local v0, "halfMoveCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    if-ge v1, v5, :cond_4

    .line 657
    iget v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x1

    add-int v2, v5, v1

    .line 658
    .local v2, "position":I
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 659
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 660
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_1

    const-string/jumbo v5, "translationX"

    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v7

    aput v7, v6, v12

    .line 661
    iget v7, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMaxOffset:I

    neg-int v7, v7

    int-to-float v7, v7

    add-int/lit8 v8, v1, 0x1

    int-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mMoveCount:I

    add-int/lit8 v10, v10, 0x1

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v7, v8

    aput v7, v6, v13

    .line 660
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 664
    :goto_1
    if-nez v3, :cond_2

    .line 665
    return-void

    .line 661
    :cond_1
    const/4 v3, 0x0

    .local v3, "tmpAnimator":Landroid/animation/ValueAnimator;
    goto :goto_1

    .line 666
    .end local v3    # "tmpAnimator":Landroid/animation/ValueAnimator;
    :cond_2
    iget-wide v6, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPopAnimTime:J

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 667
    invoke-virtual {v3, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 668
    sget-object v5, Lcom/letv/leui/widget/AlphabetWavesView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 669
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 670
    iget-object v5, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAnimMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    .end local v2    # "position":I
    :cond_4
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 370
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 371
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 368
    return-void
.end method

.method protected selectAlphabet()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 721
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->getItemPosition()I

    move-result v2

    .line 723
    .local v2, "itemPosition":I
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    if-eq v4, v2, :cond_4

    .line 724
    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    iput v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreSelection:I

    .line 725
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    iget-object v1, v4, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .line 727
    .local v1, "firstAlphabet":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 728
    .local v3, "textV":Landroid/widget/TextView;
    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 730
    .local v0, "curTextV":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 731
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 733
    :cond_0
    iput v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    .line 735
    if-eqz v3, :cond_1

    .line 736
    iget v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 739
    :cond_1
    iget-boolean v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPreview:Z

    if-eqz v4, :cond_3

    .line 740
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    .line 746
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetListener:Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

    if-eqz v4, :cond_2

    .line 747
    iget-object v4, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetListener:Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

    invoke-interface {v4, v2, v1}, Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;->onAlphabetChanged(ILjava/lang/String;)V

    .line 749
    :cond_2
    return v5

    .line 742
    :cond_3
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    goto :goto_0

    .line 751
    .end local v0    # "curTextV":Landroid/widget/TextView;
    .end local v1    # "firstAlphabet":Ljava/lang/String;
    .end local v3    # "textV":Landroid/widget/TextView;
    :cond_4
    const/4 v4, 0x0

    return v4
.end method

.method public setAlphabetList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listStr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 325
    iget-object v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 326
    move-object v1, p1

    .line 330
    .local v1, "countries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 331
    .local v6, "previousAlphabet":Ljava/lang/String;
    const-string/jumbo v8, "[0-9]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 333
    .local v5, "numberPattern":Ljava/util/regex/Pattern;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v6    # "previousAlphabet":Ljava/lang/String;
    .local v3, "country$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, "country":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "firstAlphabet":Ljava/lang/String;
    :goto_1
    iget-boolean v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    if-eqz v8, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 338
    const-string/jumbo v4, "#"

    .line 342
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 350
    :cond_1
    :goto_2
    move-object v6, v4

    .local v6, "previousAlphabet":Ljava/lang/String;
    goto :goto_0

    .line 334
    .end local v4    # "firstAlphabet":Ljava/lang/String;
    .end local v6    # "previousAlphabet":Ljava/lang/String;
    :cond_2
    move-object v4, v2

    .restart local v4    # "firstAlphabet":Ljava/lang/String;
    goto :goto_1

    .line 343
    :cond_3
    iget-boolean v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    if-eqz v8, :cond_4

    sget-object v8, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, "tempLeter":Ljava/lang/String;
    :goto_3
    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    invoke-direct {v0, p0, v9}, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;)V

    .line 345
    .local v0, "alphabet":Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;
    iput-object v7, v0, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .line 346
    iget-object v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 343
    .end local v0    # "alphabet":Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;
    .end local v7    # "tempLeter":Ljava/lang/String;
    :cond_4
    move-object v7, v6

    .restart local v7    # "tempLeter":Ljava/lang/String;
    goto :goto_3

    .line 353
    .end local v2    # "country":Ljava/lang/String;
    .end local v4    # "firstAlphabet":Ljava/lang/String;
    .end local v7    # "tempLeter":Ljava/lang/String;
    :cond_5
    if-eqz v6, :cond_6

    .line 355
    new-instance v0, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;

    invoke-direct {v0, p0, v9}, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;-><init>(Lcom/letv/leui/widget/AlphabetWavesView;Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;)V

    .line 356
    .restart local v0    # "alphabet":Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;
    iput-object v6, v0, Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;->firstAlphabet:Ljava/lang/String;

    .line 357
    iget-object v8, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v0    # "alphabet":Lcom/letv/leui/widget/AlphabetWavesView$Alphabet;
    :cond_6
    iput-boolean v10, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isSetList:Z

    .line 362
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->requestLayout()V

    .line 324
    return-void
.end method

.method public setEnvLangage(Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;)V
    .locals 0
    .param p1, "language"    # Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    iput-object p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->envLanguage:Lcom/letv/leui/widget/AlphabetWavesView$EnvLanguage;

    .line 301
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->isCenter()V

    .line 298
    :cond_0
    return-void
.end method

.method public setIsClipInitial(Z)V
    .locals 0
    .param p1, "isClipInitial"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mIsClipInitial:Z

    .line 487
    return-void
.end method

.method public setOnAlphabetListener(Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;)V
    .locals 0
    .param p1, "aListener"    # Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetListener:Lcom/letv/leui/widget/AlphabetWavesView$OnAlphabetListener;

    .line 289
    return-void
.end method

.method public setSelectedBackGroundColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 468
    iget v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    if-eq p1, v0, :cond_0

    .line 469
    iput p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    .line 467
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 409
    if-ltz p1, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mAlphabetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 410
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 411
    .local v2, "textV":Landroid/widget/TextView;
    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 413
    .local v0, "curTextV":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 414
    .local v1, "oldColor":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 417
    .end local v1    # "oldColor":Landroid/content/res/ColorStateList;
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 420
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mCurrentSelection:I

    .line 421
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 422
    iget-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    if-eqz v3, :cond_5

    .line 423
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 428
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isPoped:Z

    if-nez v3, :cond_3

    .line 429
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->isShowSelected:Z

    .line 430
    invoke-virtual {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->invalidate()V

    .line 433
    :cond_3
    iget-boolean v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mShowingPreview:Z

    if-eqz v3, :cond_4

    .line 434
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    .line 435
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/AlphabetWavesView;->setState(I)V

    .line 408
    .end local v0    # "curTextV":Landroid/widget/TextView;
    .end local v2    # "textV":Landroid/widget/TextView;
    :cond_4
    return-void

    .line 425
    .restart local v0    # "curTextV":Landroid/widget/TextView;
    .restart local v2    # "textV":Landroid/widget/TextView;
    :cond_5
    iget v3, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSelectedColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTextDefaultColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 477
    iget v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    if-eq p1, v0, :cond_0

    .line 478
    iput p1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mDefaultColor:I

    .line 476
    :cond_0
    return-void
.end method

.method public setToastBackGroundColor(I)V
    .locals 2
    .param p1, "argb"    # I

    .prologue
    .line 446
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mToastBg:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 448
    .local v0, "gDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 445
    .end local v0    # "gDrawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    return-void
.end method

.method public updatePopAlphabetLayout()V
    .locals 3

    .prologue
    .line 380
    iget-boolean v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mUpdatingLayout:Z

    if-eqz v1, :cond_0

    .line 381
    return-void

    .line 384
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mUpdatingLayout:Z

    .line 386
    invoke-direct {p0}, Lcom/letv/leui/widget/AlphabetWavesView;->updateContainerRect()V

    .line 388
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mTempBounds:Landroid/graphics/Rect;

    .line 389
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 390
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 391
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 392
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 394
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 396
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 397
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 398
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 399
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 400
    iget-object v1, p0, Lcom/letv/leui/widget/AlphabetWavesView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/letv/leui/widget/AlphabetWavesView;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 377
    :cond_1
    return-void
.end method
