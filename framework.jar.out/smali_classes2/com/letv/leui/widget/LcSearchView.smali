.class public Lcom/letv/leui/widget/LcSearchView;
.super Landroid/widget/LinearLayout;
.source "LcSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LcSearchView$OnClearListener;,
        Lcom/letv/leui/widget/LcSearchView$OnCancelListener;,
        Lcom/letv/leui/widget/LcSearchView$SearchEditText;,
        Lcom/letv/leui/widget/LcSearchView$OnSuggestionListener;,
        Lcom/letv/leui/widget/LcSearchView$1;,
        Lcom/letv/leui/widget/LcSearchView$2;,
        Lcom/letv/leui/widget/LcSearchView$3;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_ICON_COLOR:I = -0x595852

.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final PREFERRED_WIDTH:I

.field private mAlwaysShowCancel:Z

.field private mCancelBaseline:F

.field private mCancelText:Ljava/lang/CharSequence;

.field private mCancelTextColor:Landroid/content/res/ColorStateList;

.field private mCancelTextWidth:F

.field private mClearingFocus:Z

.field private mCursorColor:I

.field private mEditorTextView:Landroid/widget/EditText;

.field private mFocusColor:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mIconClear:Landroid/graphics/drawable/Drawable;

.field private mIconClearColor:Landroid/content/res/ColorStateList;

.field private mIconSearch:Landroid/graphics/drawable/Drawable;

.field private mIconSearchColor:Landroid/content/res/ColorStateList;

.field private mIsSearchIconVisible:Z

.field private mMaxWidth:I

.field private mNormalColor:I

.field private mOnCancelListener:Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

.field private mOnClearListener:Lcom/letv/leui/widget/LcSearchView$OnClearListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mPaddingHorizontal:I

.field private mPaddingHorizontalLeft:I

.field private final mPaddingVertical:I

.field private mPaint:Landroid/graphics/Paint;

.field private mTextChangerListener:Landroid/text/TextWatcher;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUnderlineColor:Landroid/content/res/ColorStateList;

.field private final mUnderlineHeight:I

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private final mWidgetHeight:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LcSearchView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LcSearchView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LcSearchView;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/LcSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/LcSearchView;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/LcSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LcSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/LcSearchView;Z)V
    .locals 0
    .param p1, "isShowCancel"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LcSearchView;->setPadding(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/letv/leui/widget/LcSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->updateFocusedState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/widget/LcSearchView;->LOG_TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LcSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LcSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LcSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 116
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/16 v19, 0x140

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->PREFERRED_WIDTH:I

    .line 62
    new-instance v19, Lcom/letv/leui/widget/LcSearchView$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView$1;-><init>(Lcom/letv/leui/widget/LcSearchView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 68
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    .line 73
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIsSearchIconVisible:Z

    .line 77
    const v19, -0x393835

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mNormalColor:I

    .line 92
    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    .line 771
    new-instance v19, Lcom/letv/leui/widget/LcSearchView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView$2;-><init>(Lcom/letv/leui/widget/LcSearchView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 795
    new-instance v19, Lcom/letv/leui/widget/LcSearchView$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView$3;-><init>(Lcom/letv/leui/widget/LcSearchView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 117
    const v19, 0x800033

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->setGravity(I)V

    .line 118
    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 121
    .local v17, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .line 122
    .local v8, "compat":Landroid/content/res/CompatibilityInfo;
    new-instance v19, Landroid/graphics/Paint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    iget v0, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 125
    new-instance v19, Landroid/text/TextPaint;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    iget v0, v8, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 129
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 130
    .local v14, "metrics":Landroid/util/DisplayMetrics;
    const/16 v19, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    .line 131
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaddingVertical:I

    .line 132
    const/16 v19, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mWidgetHeight:I

    .line 133
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mUnderlineHeight:I

    .line 135
    const v19, 0x1080532

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    .line 136
    const v19, 0x1080531

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    .line 137
    new-instance v19, Landroid/widget/EditText;

    const/16 v20, 0x0

    const v21, 0x1010084

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1060119

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mFocusColor:I

    .line 141
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 142
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    .line 143
    .local v18, "theme":Landroid/content/res/Resources$Theme;
    const v19, 0x1010435

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 144
    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mFocusColor:I

    .line 146
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mFocusColor:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCursorColor:I

    .line 147
    new-instance v19, Landroid/content/res/ColorStateList;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    sget-object v21, Lcom/letv/leui/widget/LcSearchView;->FOCUSED_STATE_SET:[I

    const/16 v22, 0x0

    aput-object v21, v20, v22

    sget-object v21, Lcom/letv/leui/widget/LcSearchView;->EMPTY_STATE_SET:[I

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mFocusColor:I

    move/from16 v22, v0

    const/16 v23, 0x0

    aput v22, v21, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mNormalColor:I

    move/from16 v22, v0

    const/16 v23, 0x1

    aput v22, v21, v23

    invoke-direct/range {v19 .. v21}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mUnderlineColor:Landroid/content/res/ColorStateList;

    .line 149
    const/4 v13, -0x1

    .line 150
    .local v13, "maxWidth":I
    const/4 v10, -0x1

    .line 151
    .local v10, "imeOptions":I
    const/4 v11, -0x1

    .line 152
    .local v11, "inputType":I
    const/4 v9, 0x1

    .line 153
    .local v9, "focusable":Z
    const v19, -0x595852

    invoke-static/range {v19 .. v19}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    .line 154
    new-instance v19, Landroid/content/res/ColorStateList;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    sget-object v21, Lcom/letv/leui/widget/LcSearchView;->PRESSED_STATE_SET:[I

    const/16 v22, 0x0

    aput-object v21, v20, v22

    sget-object v21, Lcom/letv/leui/widget/LcSearchView;->EMPTY_STATE_SET:[I

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 155
    const v21, 0x4ca6a7ae    # 8.7375216E7f

    const v22, -0x595852

    filled-new-array/range {v21 .. v22}, [I

    move-result-object v21

    .line 154
    invoke-direct/range {v19 .. v21}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    .line 157
    const/high16 v19, 0x41700000    # 15.0f

    const/16 v20, 0x2

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v12, v0

    .line 158
    .local v12, "mTextSize":I
    const/high16 v19, -0x1000000

    invoke-static/range {v19 .. v19}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 159
    const v19, -0x393835

    invoke-static/range {v19 .. v19}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 160
    const/high16 v6, -0x1000000

    .line 163
    .local v6, "cancelColor":I
    sget-object v19, Lcom/android/internal/R$styleable;->LcSearchView:[I

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 165
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 167
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 168
    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 171
    :cond_1
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 172
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 175
    :cond_2
    const/16 v19, 0x1b

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 176
    const/16 v19, 0x1b

    move/from16 v0, v19

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 179
    :cond_3
    const/16 v19, 0x1e

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 180
    const/16 v19, 0x1e

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    .line 183
    :cond_4
    const/16 v19, 0x1f

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 184
    const/16 v19, 0x1f

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    .line 186
    :cond_5
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 187
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mUnderlineColor:Landroid/content/res/ColorStateList;

    .line 190
    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 191
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 192
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    .line 195
    :cond_7
    const/16 v19, 0x21

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LcSearchView;->mIsSearchIconVisible:Z

    .line 197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    move/from16 v19, v0

    const/16 v20, 0xf

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    .line 198
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 199
    const/16 v19, 0x3

    move/from16 v0, v19

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 200
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 202
    .local v9, "focusable":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCursorColor:I

    move/from16 v19, v0

    const/16 v20, 0x1d

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCursorColor:I

    .line 204
    const/16 v19, 0x19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 205
    const/16 v19, 0x19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    .line 208
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    move/from16 v19, v0

    const/16 v20, 0x1c

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    .line 209
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    new-instance v19, Landroid/content/res/ColorStateList;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [[I

    move-object/from16 v20, v0

    sget-object v21, Lcom/letv/leui/widget/LcSearchView;->PRESSED_STATE_SET:[I

    const/16 v22, 0x0

    aput-object v21, v20, v22

    sget-object v21, Lcom/letv/leui/widget/LcSearchView;->EMPTY_STATE_SET:[I

    const/16 v22, 0x1

    aput-object v21, v20, v22

    .line 212
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const v22, 0xffffff

    and-int v22, v22, v6

    const/high16 v23, 0x4c000000    # 3.3554432E7f

    or-int v22, v22, v23

    const/16 v23, 0x0

    aput v22, v21, v23

    const/16 v22, 0x1

    aput v6, v21, v22

    .line 211
    invoke-direct/range {v19 .. v21}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    int-to-float v0, v12

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->setSingleLine()V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v19 .. v23}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const-string/jumbo v20, "helve-neue-normal"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mHintTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/letv/leui/text/LeTextInterface;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCursorColor:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/letv/leui/text/LeTextInterface;->setCurcorColor(I)V

    .line 225
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/letv/leui/widget/LcSearchView$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView$4;-><init>(Lcom/letv/leui/widget/LcSearchView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 237
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    .line 238
    const/16 v20, -0x1

    .line 237
    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v16, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/letv/leui/widget/LcSearchView;->dpToPx(Landroid/util/DisplayMetrics;I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x10

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setGravity(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LcSearchView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 253
    const/high16 v19, 0x41700000    # 15.0f

    const/16 v20, 0x2

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 254
    .local v7, "cancelTextSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setColor(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    const-string/jumbo v20, "helve-neue-regular"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 257
    const/high16 v19, 0x1040000

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelTextWidth:F

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LcSearchView;->mWidgetHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->descent()F

    move-result v20

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->ascent()F

    move-result v20

    sub-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LcSearchView;->mCancelBaseline:F

    .line 261
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_a

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/letv/leui/widget/LcSearchView;->setMaxWidth(I)V

    .line 265
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 269
    :cond_b
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_c

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/letv/leui/widget/LcSearchView;->setImeOptions(I)V

    .line 272
    :cond_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_d

    .line 273
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/LcSearchView;->setInputType(I)V

    .line 276
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/letv/leui/widget/LcSearchView;->setFocusable(Z)V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->updateHintText()V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/LcSearchView;->setPadding(Z)V

    .line 115
    return-void
.end method

.method private dpToPx(Landroid/util/DisplayMetrics;I)I
    .locals 4
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "value"    # I

    .prologue
    .line 283
    int-to-float v0, p2

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getCancelTextWidth()F
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextWidth:F

    return v0
.end method

.method private getPreferredWidth()I
    .locals 4

    .prologue
    .line 461
    const/high16 v0, 0x43a00000    # 320.0f

    .line 462
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 461
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    .line 462
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 461
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 789
    const/4 v1, 0x2

    .line 788
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCancelClicked()V
    .locals 3

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "hanled":Z
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnCancelListener:Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnCancelListener:Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/LcSearchView$OnCancelListener;->onCancel()Z

    move-result v0

    .line 753
    .end local v0    # "hanled":Z
    :cond_0
    if-nez v0, :cond_1

    .line 754
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->clearFocus()V

    .line 746
    :cond_1
    return-void
.end method

.method private onClearClicked()V
    .locals 2

    .prologue
    .line 737
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 738
    .local v0, "text":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 739
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnClearListener:Lcom/letv/leui/widget/LcSearchView$OnClearListener;

    if-eqz v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnClearListener:Lcom/letv/leui/widget/LcSearchView$OnClearListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/LcSearchView$OnClearListener;->onClear()Z

    .line 736
    :cond_1
    return-void
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->updateButtonState()V

    .line 707
    return-void
.end method

.method private onTouchAreaDetected(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 308
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 309
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 310
    .local v7, "y":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getWidth()I

    move-result v5

    .line 311
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getHeight()I

    move-result v1

    .line 312
    .local v1, "height":I
    iget v8, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    sub-int v4, v5, v8

    .line 314
    .local v4, "lineEndPosX":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 315
    int-to-float v8, v4

    iget v9, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    int-to-float v9, v9

    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->getCancelTextWidth()F

    move-result v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v4, v8

    .line 318
    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v4, v8

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gez v8, :cond_2

    int-to-float v8, v4

    cmpg-float v8, v6, v8

    if-gez v8, :cond_2

    const/4 v3, 0x1

    .line 319
    .local v3, "isInClearArea":Z
    :goto_0
    int-to-float v8, v4

    cmpg-float v8, v8, v6

    if-gez v8, :cond_3

    int-to-float v8, v5

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v2

    .line 321
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 352
    :cond_1
    :goto_2
    :pswitch_0
    if-nez v3, :cond_7

    :goto_3
    return v2

    .line 318
    .end local v3    # "isInClearArea":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isInClearArea":Z
    goto :goto_0

    .line 319
    :cond_3
    const/4 v2, 0x0

    .local v2, "isInCancelArea":Z
    goto :goto_1

    .line 323
    .end local v2    # "isInCancelArea":Z
    :pswitch_1
    if-eqz v3, :cond_4

    .line 324
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    sget-object v10, Lcom/letv/leui/widget/LcSearchView;->PRESSED_STATE_SET:[I

    const v11, -0x595852

    invoke-virtual {v9, v10, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 325
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {p0, v8, v12, v4, v1}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    .line 327
    :cond_4
    if-eqz v2, :cond_1

    .line 328
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    sget-object v10, Lcom/letv/leui/widget/LcSearchView;->PRESSED_STATE_SET:[I

    const/high16 v11, -0x1000000

    invoke-virtual {v9, v10, v11}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 329
    invoke-virtual {p0, v4, v12, v5, v1}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    goto :goto_2

    .line 333
    :pswitch_2
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 334
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 335
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {p0, v8, v12, v5, v1}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    goto :goto_2

    .line 338
    :pswitch_3
    if-eqz v3, :cond_5

    .line 339
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->onClearClicked()V

    .line 341
    :cond_5
    if-eqz v2, :cond_6

    .line 342
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->onCancelClicked()V

    .line 344
    :cond_6
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 345
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setColor(I)V

    .line 346
    iget-object v8, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {p0, v8, v12, v5, v1}, Lcom/letv/leui/widget/LcSearchView;->invalidate(IIII)V

    goto/16 :goto_2

    .line 352
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LcSearchView;->post(Ljava/lang/Runnable;)Z

    .line 680
    return-void
.end method

.method private setPadding(Z)V
    .locals 8
    .param p1, "isShowCancel"    # Z

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "searchIconWidth":I
    iget-boolean v1, p0, Lcom/letv/leui/widget/LcSearchView;->mIsSearchIconVisible:Z

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 291
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingVertical:I

    .line 292
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    int-to-float v1, v1

    iget v4, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelTextWidth:F

    add-float/2addr v1, v4

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v1, v4

    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    add-int/2addr v1, v4

    .line 293
    iget v4, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingVertical:I

    .line 291
    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/letv/leui/widget/LcSearchView;->setPadding(IIII)V

    .line 286
    return-void

    .line 292
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateButtonState()V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method private updateFocusedState()V
    .locals 2

    .prologue
    .line 685
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    .line 688
    .local v0, "focused":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->invalidate()V

    .line 684
    return-void
.end method

.method private updateHintText()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 699
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LcSearchView;->mClearingFocus:Z

    .line 502
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LcSearchView;->setImeVisibility(Z)V

    .line 503
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 504
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 505
    iput-boolean v1, p0, Lcom/letv/leui/widget/LcSearchView;->mClearingFocus:Z

    .line 500
    return-void
.end method

.method public getClearIconColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "create"    # Z

    .prologue
    .line 555
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    return-object v0

    .line 641
    :cond_0
    return-object v1
.end method

.method public getSearchIconColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnderlineWidth()F
    .locals 5

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getWidth()I

    move-result v1

    .line 400
    .local v1, "width":I
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    sub-int v2, v1, v2

    iget v3, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    sub-int v0, v2, v3

    .line 401
    .local v0, "lineWidth":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    int-to-float v2, v0

    iget v3, p0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->getCancelTextWidth()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 404
    :cond_0
    int-to-float v2, v0

    return v2
.end method

.method public isShowCancel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 391
    iget-boolean v1, p0, Lcom/letv/leui/widget/LcSearchView;->mAlwaysShowCancel:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LcSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 493
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 491
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 357
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getWidth()I

    move-result v16

    .line 360
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getHeight()I

    move-result v13

    .line 361
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/letv/leui/widget/LcSearchView;->mIsSearchIconVisible:Z

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 363
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    int-to-float v1, v1

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v13, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 363
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mIconSearch:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 368
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    sub-int v14, v16, v1

    .line 369
    .local v14, "lineEndPosX":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->isShowCancel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    int-to-float v2, v2

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LcSearchView;->getCancelTextWidth()F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v14, v1

    .line 372
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontal:I

    add-int/2addr v1, v14

    int-to-float v5, v1

    .line 373
    .local v5, "x":F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelBaseline:F

    .line 374
    .local v6, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mCancelText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/letv/leui/widget/LcSearchView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 376
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LcSearchView;->mUnderlineHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 377
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingVertical:I

    sub-int v1, v13, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LcSearchView;->mUnderlineHeight:I

    sub-int v15, v1, v2

    .line 378
    .local v15, "linePosY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LcSearchView;->mUnderlineColor:Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/LcSearchView;->mNormalColor:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LcSearchView;->mPaddingHorizontalLeft:I

    int-to-float v8, v1

    int-to-float v9, v15

    int-to-float v10, v14

    int-to-float v11, v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/LcSearchView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 382
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v14, v1

    int-to-float v1, v1

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v13, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 383
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LcSearchView;->mIconClear:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 356
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 761
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 762
    const-class v0, Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 760
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 767
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 768
    const-class v0, Lcom/letv/leui/widget/LcSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 766
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 430
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 431
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 433
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 455
    :cond_0
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 456
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 457
    iget v3, p0, Lcom/letv/leui/widget/LcSearchView;->mWidgetHeight:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 456
    invoke-super {p0, v2, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 428
    return-void

    .line 437
    :sswitch_0
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 438
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 446
    :sswitch_1
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    if-lez v2, :cond_0

    .line 447
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 452
    :sswitch_2
    iget v2, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    iget v0, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_0

    .line 433
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onTextFocusChanged()V
    .locals 0

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->updateButtonState()V

    .line 696
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->postUpdateFocusedState()V

    .line 691
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 300
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 301
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LcSearchView;->onTouchAreaDetected(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 303
    .end local v1    # "result":Z
    :cond_1
    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_2
    return v2

    .line 300
    .restart local v1    # "result":Z
    :cond_3
    if-ne v0, v2, :cond_1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 487
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->postUpdateFocusedState()V

    .line 485
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-boolean v1, p0, Lcom/letv/leui/widget/LcSearchView;->mClearingFocus:Z

    if-eqz v1, :cond_0

    .line 476
    return v2

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 479
    return v2

    .line 480
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v1, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 481
    .local v0, "result":Z
    return v0
.end method

.method public requestQueryTextFocus()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public setClearIconColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 669
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LcSearchView;->setClearIconColor(Landroid/content/res/ColorStateList;)V

    .line 668
    return-void
.end method

.method public setClearIconColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mIconClearColor:Landroid/content/res/ColorStateList;

    .line 672
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 566
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 565
    return-void
.end method

.method public setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 647
    const-string/jumbo v2, "input_method"

    .line 646
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 649
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 644
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 587
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/letv/leui/widget/LcSearchView;->mMaxWidth:I

    .line 413
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->requestLayout()V

    .line 411
    return-void
.end method

.method public setOnCancelListener(Lcom/letv/leui/widget/LcSearchView$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnCancelListener:Lcom/letv/leui/widget/LcSearchView$OnCancelListener;

    .line 522
    return-void
.end method

.method public setOnClearListener(Lcom/letv/leui/widget/LcSearchView$OnClearListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LcSearchView$OnClearListener;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnClearListener:Lcom/letv/leui/widget/LcSearchView$OnClearListener;

    .line 513
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TextView$OnEditorActionListener;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnQueryEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 550
    return-void
.end method

.method public setOnSuggestionListener(Lcom/letv/leui/widget/LcSearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LcSearchView$OnSuggestionListener;

    .prologue
    .line 43
    return-void
.end method

.method public setOnTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mTextChangerListener:Landroid/text/TextWatcher;

    .line 531
    return-void
.end method

.method public setOnTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mOnTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 540
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v1, p0, Lcom/letv/leui/widget/LcSearchView;->mEditorTextView:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 604
    return-void

    .line 607
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mHintText:Ljava/lang/CharSequence;

    .line 628
    invoke-direct {p0}, Lcom/letv/leui/widget/LcSearchView;->updateHintText()V

    .line 626
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 884
    return-void
.end method

.method public setSearchIconColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 656
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LcSearchView;->setSearchIconColor(Landroid/content/res/ColorStateList;)V

    .line 655
    return-void
.end method

.method public setSearchIconColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView;->mIconSearchColor:Landroid/content/res/ColorStateList;

    .line 661
    invoke-virtual {p0}, Lcom/letv/leui/widget/LcSearchView;->invalidate()V

    .line 659
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 0
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 877
    return-void
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 891
    return-void
.end method
