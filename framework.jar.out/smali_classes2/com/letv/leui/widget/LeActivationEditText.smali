.class public Lcom/letv/leui/widget/LeActivationEditText;
.super Landroid/widget/LinearLayout;
.source "LeActivationEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;,
        Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;
    }
.end annotation


# static fields
.field private static final FOCUS_NEXT:I = 0x1

.field private static final FOCUS_PREV:I = -0x1

.field private static final FOCUS_PREV_AND_DELETE:I = -0x1

.field private static final FOCUS_STAY:I


# instance fields
.field private imeOptions:I

.field private inputType:I

.field private mActivationTextLength:I

.field private mAvaliableInputWidth:I

.field private mBtnClear:Landroid/widget/ImageView;

.field private mBtnClearMeasureWidth:I

.field private mCacheThreshold:I

.field private mCurrentEditTextId:I

.field private final mEditTextCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/EditText;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFontFamily:Ljava/lang/String;

.field private mInputBuffer:Ljava/lang/StringBuffer;

.field private mInputInnerMargin:I

.field private mInputMargin:I

.field private mInputTextColor:I

.field private mInputTextPaddingBottom:I

.field private mInputTextSize:I

.field private mIsTextClearing:Z

.field private mMeasureHeight:I

.field private mMeasureWidth:I

.field private mPerInputWidth:I

.field private mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

.field private mTextTypeFace:Landroid/graphics/Typeface;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextColor:I

.field private mTitleTextSize:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWordsBgResId:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeActivationEditText;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeActivationEditText;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LeActivationEditText;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/LeActivationEditText;)Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/LeActivationEditText;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z

    return v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/LeActivationEditText;)Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/LeActivationEditText;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeActivationEditText;->moveInputFocus(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeActivationEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeActivationEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v5, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    .line 54
    iput v9, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCacheThreshold:I

    .line 57
    iput v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mAvaliableInputWidth:I

    .line 59
    iput v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    .line 60
    iput v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    .line 61
    iput-boolean v6, p0, Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z

    .line 63
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 80
    .local v3, "res":Landroid/content/res/Resources;
    iput v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    .line 81
    const v4, 0x10405fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleText:Ljava/lang/CharSequence;

    .line 83
    const v4, 0x10501a2

    .line 82
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    .line 85
    const v4, 0x10501a6

    .line 84
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    .line 87
    const v4, 0x10501a3

    .line 86
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    .line 88
    const v4, 0x10e00be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    .line 90
    const v4, 0x106011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextColor:I

    .line 91
    const v4, 0x10501a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextSize:I

    .line 92
    const v4, 0x1060120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextColor:I

    .line 93
    const v4, 0x10501a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextSize:I

    .line 94
    const v4, 0x10804db

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mWordsBgResId:I

    .line 95
    const v4, 0x1080513

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 98
    .local v2, "imageClearSrc":Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/android/internal/R$styleable;->LeActivationEditText:[I

    .line 97
    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleText:Ljava/lang/CharSequence;

    .line 105
    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextColor:I

    const/16 v5, 0xa

    .line 104
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextColor:I

    .line 107
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextSize:I

    const/16 v5, 0x9

    .line 106
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextSize:I

    .line 109
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextSize:I

    const/16 v5, 0xb

    .line 108
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextSize:I

    .line 111
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextColor:I

    const/16 v5, 0xc

    .line 110
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextColor:I

    .line 113
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    const/4 v5, 0x3

    .line 112
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    .line 115
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    .line 114
    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    .line 118
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    .line 117
    const/4 v5, 0x5

    .line 116
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    .line 121
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    .line 120
    const/4 v5, 0x7

    .line 119
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    .line 124
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    .line 123
    invoke-virtual {v0, v9, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    .line 126
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mFontFamily:Ljava/lang/String;

    .line 131
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mWordsBgResId:I

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mWordsBgResId:I

    .line 133
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    .line 134
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/LeActivationEditText;->setOrientation(I)V

    .line 138
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v1, "editTextParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    .line 141
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 144
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeActivationEditText;->addView(Landroid/view/View;)V

    .line 147
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    .line 148
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClearMeasureWidth:I

    .line 153
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mFontFamily:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 156
    iget-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mFontFamily:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextTypeFace:Landroid/graphics/Typeface;

    .line 74
    :cond_2
    return-void
.end method

.method private clearTextAtIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 311
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 315
    :cond_0
    check-cast v0, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    .end local v0    # "view":Landroid/view/View;
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_1
    return-void
.end method

.method private getCacheEditText()Landroid/widget/EditText;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 239
    const/4 v1, 0x0

    .line 241
    .local v1, "editText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 242
    .local v0, "cacheSize":I
    if-lez v0, :cond_0

    .line 243
    iget-object v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "editText":Landroid/widget/EditText;
    check-cast v1, Landroid/widget/EditText;

    .line 246
    :cond_0
    if-nez v1, :cond_3

    .line 247
    new-instance v1, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;-><init>(Lcom/letv/leui/widget/LeActivationEditText;Landroid/content/Context;)V

    .line 248
    .local v1, "editText":Landroid/widget/EditText;
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 249
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 250
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mWordsBgResId:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 251
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 252
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 253
    new-array v2, v6, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 254
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 256
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    if-eq v2, v5, :cond_1

    .line 257
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->imeOptions:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 260
    :cond_1
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    if-eq v2, v5, :cond_2

    .line 261
    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->inputType:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextTypeFace:Landroid/graphics/Typeface;

    if-eqz v2, :cond_3

    .line 265
    iget-object v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextTypeFace:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 268
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_3
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    return-object v1
.end method

.method private moveInputFocus(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    .line 294
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 295
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    .line 299
    :cond_0
    :goto_0
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 301
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 302
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->clearTextAtIndex(I)V

    .line 304
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 293
    :cond_2
    return-void

    .line 296
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    if-gez p2, :cond_0

    .line 297
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    goto :goto_0
.end method

.method private recycle(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCacheThreshold:I

    if-ge v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mEditTextCache:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    return-void
.end method

.method private removeAllEditTextViews()V
    .locals 4

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getChildCount()I

    move-result v1

    .line 281
    .local v1, "size":I
    const/4 v2, 0x0

    .line 282
    .local v2, "view":Landroid/view/View;
    add-int/lit8 v0, v1, -0x1

    .end local v2    # "view":Landroid/view/View;
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 283
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 285
    check-cast v3, Landroid/widget/EditText;

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeActivationEditText;->recycle(Landroid/widget/EditText;)V

    .line 286
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText;->removeViewAt(I)V

    .line 282
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 287
    :cond_1
    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText;->removeViewAt(I)V

    goto :goto_1

    .line 278
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public clearAllText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z

    .line 328
    iget v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 329
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeActivationEditText;->clearTextAtIndex(I)V

    .line 328
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 331
    :cond_0
    iput v3, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    .line 332
    const-string/jumbo v1, ""

    invoke-direct {p0, v1, v3}, Lcom/letv/leui/widget/LeActivationEditText;->moveInputFocus(Ljava/lang/CharSequence;I)V

    .line 333
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;->onTextChange(Ljava/lang/String;)V

    .line 337
    :cond_1
    iput-boolean v3, p0, Lcom/letv/leui/widget/LeActivationEditText;->mIsTextClearing:Z

    .line 326
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->clearAllText()V

    .line 320
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 165
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureWidth:I

    .line 166
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureHeight:I

    .line 168
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mAvaliableInputWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 170
    .local v0, "titleTextWidth":I
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureWidth:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClearMeasureWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mAvaliableInputWidth:I

    .line 171
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mActivationTextLength:I

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->setActivitionTextLength(I)V

    .line 174
    .end local v0    # "titleTextWidth":I
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeActivationEditText;->mMeasureHeight:I

    iget v3, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LeActivationEditText;->setMeasuredDimension(II)V

    .line 162
    return-void
.end method

.method public setActivitionTextLength(I)V
    .locals 8
    .param p1, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 183
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mAvaliableInputWidth:I

    iget v6, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    .line 184
    .local v0, "avaliableInputWidth":I
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 185
    iget v4, p0, Lcom/letv/leui/widget/LeActivationEditText;->mPerInputWidth:I

    .line 187
    .local v4, "perTextWidth":I
    :goto_0
    const/4 v1, 0x0

    .line 188
    .local v1, "editText":Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/letv/leui/widget/LeActivationEditText;->removeAllEditTextViews()V

    .line 189
    const/4 v2, 0x0

    .end local v1    # "editText":Landroid/widget/EditText;
    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_4

    .line 191
    invoke-direct {p0}, Lcom/letv/leui/widget/LeActivationEditText;->getCacheEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 192
    .local v1, "editText":Landroid/widget/EditText;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-nez v3, :cond_0

    .line 195
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    :cond_0
    if-nez v2, :cond_2

    .line 200
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 205
    :goto_2
    add-int/lit8 v5, p1, -0x1

    if-ne v2, v5, :cond_3

    .line 206
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 211
    :goto_3
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputTextPaddingBottom:I

    invoke-virtual {v1, v7, v7, v7, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 213
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeActivationEditText;->addView(Landroid/view/View;)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    .end local v1    # "editText":Landroid/widget/EditText;
    .end local v2    # "i":I
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "perTextWidth":I
    :cond_1
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    add-int/lit8 v6, p1, -0x1

    mul-int/2addr v5, v6

    sub-int v5, v0, v5

    div-int v4, v5, p1

    .restart local v4    # "perTextWidth":I
    goto :goto_0

    .line 202
    .restart local v1    # "editText":Landroid/widget/EditText;
    .restart local v2    # "i":I
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputInnerMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 208
    :cond_3
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 215
    .end local v1    # "editText":Landroid/widget/EditText;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    if-lez p1, :cond_5

    .line 216
    iput v7, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    .line 218
    :cond_5
    iget-object v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/letv/leui/widget/LeActivationEditText;->mInputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 219
    iget-object v5, p0, Lcom/letv/leui/widget/LeActivationEditText;->mBtnClear:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeActivationEditText;->addView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public setOnTextChangeListener(Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/letv/leui/widget/LeActivationEditText;->mTextChangeListener:Lcom/letv/leui/widget/LeActivationEditText$OnTextChangeListener;

    .line 177
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeActivationEditText;->clearAllText()V

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 230
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 231
    iget v3, p0, Lcom/letv/leui/widget/LeActivationEditText;->mCurrentEditTextId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeActivationEditText;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 232
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    if-eqz v3, :cond_0

    .line 233
    check-cast v2, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;

    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeActivationEditText$SingleEditText;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-void
.end method
