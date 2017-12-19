.class public Landroid/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SearchView$OnQueryTextListener;,
        Landroid/widget/SearchView$OnCloseListener;,
        Landroid/widget/SearchView$OnSuggestionListener;,
        Landroid/widget/SearchView$SearchAutoComplete;,
        Landroid/widget/SearchView$1;,
        Landroid/widget/SearchView$2;,
        Landroid/widget/SearchView$3;,
        Landroid/widget/SearchView$4;,
        Landroid/widget/SearchView$5;,
        Landroid/widget/SearchView$6;,
        Landroid/widget/SearchView$7;,
        Landroid/widget/SearchView$8;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field private final mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;
    .locals 1

    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/SearchView;IILjava/lang/String;)Z
    .locals 1
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/SearchView;I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/SearchView;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/SearchView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 261
    const v0, 0x1010480

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 269
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 158
    new-instance v7, Landroid/widget/SearchView$1;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$1;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 169
    new-instance v7, Landroid/widget/SearchView$2;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$2;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 175
    new-instance v7, Landroid/widget/SearchView$3;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$3;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 187
    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    .line 186
    iput-object v7, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 941
    new-instance v7, Landroid/widget/SearchView$4;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$4;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 990
    new-instance v7, Landroid/widget/SearchView$5;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$5;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1389
    new-instance v7, Landroid/widget/SearchView$6;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$6;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1400
    new-instance v7, Landroid/widget/SearchView$7;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$7;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1689
    new-instance v7, Landroid/widget/SearchView$8;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$8;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 272
    sget-object v7, Lcom/android/internal/R$styleable;->SearchView:[I

    .line 271
    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v7, "layout_inflater"

    .line 273
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 276
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const/4 v7, 0x1

    const v8, 0x109014a

    .line 275
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 277
    .local v5, "layoutResId":I
    const/4 v7, 0x1

    invoke-virtual {v3, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 279
    const v7, 0x1020503

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SearchView$SearchAutoComplete;

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    .line 280
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, p0}, Landroid/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/widget/SearchView;)V

    .line 282
    const v7, 0x1020500

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 283
    const v7, 0x1020502

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 284
    const v7, 0x1020505

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 285
    const v7, 0x10204ff

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 286
    const v7, 0x1020506

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 287
    const v7, 0x1020504

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 288
    const v7, 0x1020507

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 289
    const v7, 0x1020501

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 292
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    iget-object v7, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    const/16 v8, 0xe

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v7, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    const/16 v7, 0xf

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 303
    const/16 v7, 0xf

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 309
    :goto_0
    const/16 v7, 0xc

    .line 310
    const v8, 0x1090149

    .line 309
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/widget/SearchView;->mSuggestionRowLayout:I

    .line 311
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 313
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v7, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 323
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 326
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v8, Landroid/widget/SearchView$9;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$9;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 334
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 336
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 337
    .local v6, "maxWidth":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 338
    invoke-virtual {p0, v6}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 341
    :cond_0
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 342
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 344
    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 345
    .local v2, "imeOptions":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 346
    invoke-virtual {p0, v2}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 349
    :cond_1
    const/4 v7, 0x3

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 350
    .local v4, "inputType":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 351
    invoke-virtual {p0, v4}, Landroid/widget/SearchView;->setInputType(I)V

    .line 354
    :cond_2
    const/4 v1, 0x1

    .line 355
    .local v1, "focusable":Z
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 356
    .local v1, "focusable":Z
    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 358
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 362
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string/jumbo v8, "android.speech.extra.LANGUAGE_MODEL"

    .line 364
    const-string/jumbo v9, "web_search"

    .line 363
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 367
    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 370
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 371
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v8, Landroid/widget/SearchView$10;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$10;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 380
    :cond_3
    iget-boolean v7, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v7}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 381
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 268
    return-void

    .line 305
    .end local v1    # "focusable":Z
    .end local v2    # "imeOptions":I
    .end local v4    # "inputType":I
    .end local v6    # "maxWidth":I
    :cond_4
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 9

    .prologue
    .line 1346
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 1347
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1348
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1349
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1350
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isLayoutRtl()Z

    move-result v3

    .line 1351
    .local v3, "isLayoutRtl":Z
    iget-boolean v7, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v7, :cond_1

    .line 1352
    const v7, 0x1050051

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1353
    const v8, 0x105004f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1352
    add-int v2, v7, v8

    .line 1355
    .local v2, "iconOffset":I
    :goto_0
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1357
    if-eqz v3, :cond_2

    .line 1358
    iget v7, v1, Landroid/graphics/Rect;->left:I

    neg-int v4, v7

    .line 1362
    .local v4, "offset":I
    :goto_1
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1363
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    .line 1364
    iget v8, v1, Landroid/graphics/Rect;->right:I

    .line 1363
    add-int/2addr v7, v8

    add-int/2addr v7, v2

    sub-int v6, v7, v0

    .line 1365
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1345
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "offset":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "width":I
    :cond_0
    return-void

    .line 1354
    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "isLayoutRtl":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "iconOffset":I
    goto :goto_0

    .line 1360
    :cond_2
    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    sub-int v4, v0, v7

    .restart local v4    # "offset":I
    goto :goto_1
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1519
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1523
    if-eqz p2, :cond_0

    .line 1524
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1526
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1527
    if-eqz p4, :cond_1

    .line 1528
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    :cond_1
    if-eqz p3, :cond_2

    .line 1531
    const-string/jumbo v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    :cond_2
    iget-object v1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1534
    const-string/jumbo v1, "app_data"

    iget-object v2, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1536
    :cond_3
    if-eqz p5, :cond_4

    .line 1537
    const-string/jumbo v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    const-string/jumbo v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1540
    :cond_4
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1541
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1636
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1638
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1639
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1641
    :cond_0
    if-nez v1, :cond_1

    .line 1642
    const-string/jumbo v1, "android.intent.action.SEARCH"

    .line 1646
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1647
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1648
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1651
    :cond_2
    if-eqz v7, :cond_3

    .line 1652
    const-string/jumbo v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1653
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1657
    .end local v10    # "id":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1659
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1660
    .local v4, "query":Ljava/lang/String;
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1662
    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1657
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "dataUri":Landroid/net/Uri;
    goto :goto_0

    .line 1663
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v7    # "data":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1666
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1670
    .local v11, "rowNum":I
    :goto_1
    const-string/jumbo v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1671
    const-string/jumbo v6, " returned exception."

    .line 1670
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1672
    const/4 v0, 0x0

    return-object v0

    .line 1667
    .end local v11    # "rowNum":I
    :catch_1
    move-exception v9

    .line 1668
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11    # "rowNum":I
    goto :goto_1
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1563
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1568
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1569
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1570
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    .line 1571
    const/high16 v12, 0x40000000    # 2.0f

    .line 1570
    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1577
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1578
    .local v5, "queryExtras":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_0

    .line 1579
    const-string/jumbo v10, "app_data"

    iget-object v11, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1585
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1588
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "free_form"

    .line 1589
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1590
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1591
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1593
    .local v2, "maxResults":I
    invoke-virtual {p0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1594
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1595
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1597
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1598
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1600
    .end local v4    # "prompt":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1601
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1603
    .end local v0    # "language":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1604
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1606
    :cond_4
    const-string/jumbo v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1607
    const-string/jumbo v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    const-string/jumbo v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    const-string/jumbo v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1610
    const-string/jumbo v11, "calling_package"

    if-nez v8, :cond_5

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    const-string/jumbo v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1615
    const-string/jumbo v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1617
    return-object v9

    .line 1611
    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    const/4 v2, 0x0

    .line 1548
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1549
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1550
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string/jumbo v3, "calling_package"

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1552
    return-object v1

    .line 1551
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1241
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doBeforeTextChanged()V

    .line 1678
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doAfterTextChanged()V

    .line 1676
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .prologue
    .line 1112
    const/4 v1, 0x0

    .line 1114
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1116
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1121
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 1122
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1124
    :cond_1
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x0

    .line 1130
    iget-boolean v2, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 1131
    :cond_0
    return-object p1

    .line 1134
    :cond_1
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1135
    .local v1, "textSize":I
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1137
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v2, "   "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1138
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1139
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1140
    return-object v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 811
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 812
    const v1, 0x105003a

    .line 811
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 832
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 835
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 839
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 840
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 841
    const/high16 v4, 0x10000

    .line 840
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 842
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 836
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 837
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .local v1, "testIntent":Landroid/content/Intent;
    goto :goto_0

    .line 845
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_3
    return v2
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1682
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1683
    const/4 v1, 0x2

    .line 1682
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 849
    iget-boolean v1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1473
    if-nez p1, :cond_0

    .line 1474
    return-void

    .line 1479
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    :goto_0
    return-void

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1495
    const-string/jumbo v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1496
    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1497
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1494
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1456
    iget-object v2, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1457
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1459
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1462
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1464
    const/4 v2, 0x1

    return v2

    .line 1466
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1246
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1247
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1248
    iget-boolean v1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-interface {v1}, Landroid/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1254
    invoke-direct {p0, v3}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 1258
    :cond_2
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1260
    invoke-direct {p0, v3}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1370
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    return v1

    .line 1372
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1373
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    .line 1374
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    .line 1375
    const/4 v0, 0x1

    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    const/4 v0, 0x0

    return v0

    .line 1383
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1384
    const/4 v0, 0x1

    return v0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1267
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    .line 1269
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1265
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1228
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1229
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1230
    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_1

    .line 1231
    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_2

    .line 1233
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v3, v1}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_2
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    .line 1236
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    goto :goto_0
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1040
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v5, :cond_0

    .line 1041
    return v6

    .line 1043
    :cond_0
    iget-object v5, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-nez v5, :cond_1

    .line 1044
    return v6

    .line 1046
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1049
    const/16 v5, 0x42

    if-eq p2, v5, :cond_2

    const/16 v5, 0x54

    if-ne p2, v5, :cond_3

    .line 1051
    :cond_2
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1052
    .local v3, "position":I
    invoke-direct {p0, v3, v6, v7}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    return v5

    .line 1050
    .end local v3    # "position":I
    :cond_3
    const/16 v5, 0x3d

    if-eq p2, v5, :cond_2

    .line 1057
    if-eq p2, v9, :cond_4

    const/16 v5, 0x16

    if-ne p2, v5, :cond_6

    .line 1062
    :cond_4
    if-ne p2, v9, :cond_5

    const/4 v4, 0x0

    .line 1064
    .local v4, "selPoint":I
    :goto_0
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1065
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1066
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1067
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v8}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 1069
    return v8

    .line 1062
    .end local v4    # "selPoint":I
    :cond_5
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    move-result v4

    .restart local v4    # "selPoint":I
    goto :goto_0

    .line 1073
    .end local v4    # "selPoint":I
    :cond_6
    const/16 v5, 0x13

    if-ne p2, v5, :cond_7

    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v5

    if-nez v5, :cond_7

    .line 1076
    return v6

    .line 1080
    :cond_7
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v5, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1081
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_9

    .line 1082
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1085
    :cond_8
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1086
    .restart local v3    # "position":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_9

    .line 1087
    iget-object v5, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1088
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1089
    invoke-static {v2, v0}, Landroid/widget/SearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "actionMsg":Ljava/lang/String;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 1091
    invoke-direct {p0, v3, p2, v1}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    return v5

    .line 1097
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    .end local v1    # "actionMsg":Ljava/lang/String;
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "position":I
    :cond_9
    return v6
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1214
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1215
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 1217
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    .line 1218
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    .line 1219
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    .line 1220
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    .line 1221
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1224
    :cond_0
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1213
    return-void

    .line 1216
    .end local v0    # "hasText":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "hasText":Z
    goto :goto_0

    .line 1218
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1222
    :cond_3
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private onVoiceClicked()V
    .locals 6

    .prologue
    .line 1276
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_0

    .line 1277
    return-void

    .line 1279
    :cond_0
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1281
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1282
    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1284
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1274
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 1285
    :cond_2
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1286
    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1288
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1290
    .end local v0    # "appSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1293
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "SearchView"

    const-string/jumbo v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 883
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1423
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1424
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1425
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1426
    return-void

    .line 1428
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1430
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1431
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1434
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1422
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1437
    .restart local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_1
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1441
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 920
    if-eqz p1, :cond_1

    .line 921
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 925
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 924
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 927
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p0}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 1489
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1491
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1488
    return-void

    .line 1491
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 5

    .prologue
    .line 872
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    .line 875
    .local v1, "hasText":Z
    :goto_0
    if-nez v1, :cond_3

    iget-boolean v3, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v3, :cond_3

    :cond_0
    const/4 v2, 0x0

    .line 876
    .local v2, "showClose":Z
    :goto_1
    iget-object v4, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 877
    iget-object v3, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 878
    .local v0, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 879
    if-eqz v1, :cond_5

    sget-object v3, Landroid/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 871
    :cond_1
    return-void

    .line 872
    .end local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasText":Z
    .end local v2    # "showClose":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "hasText":Z
    goto :goto_0

    .line 875
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "showClose":Z
    goto :goto_1

    .line 876
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 879
    .restart local v0    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v3, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateFocusedState()V
    .locals 5

    .prologue
    .line 888
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 889
    .local v0, "focused":Z
    if-eqz v0, :cond_2

    sget-object v2, Landroid/widget/SearchView;->FOCUSED_STATE_SET:[I

    .line 890
    .local v2, "stateSet":[I
    :goto_0
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 891
    .local v1, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 892
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 894
    :cond_0
    iget-object v4, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 895
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 896
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 898
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->invalidate()V

    .line 887
    return-void

    .line 889
    .end local v1    # "searchPlateBg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "stateSet":[I
    .end local v3    # "submitAreaBg":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v2, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    .restart local v2    # "stateSet":[I
    goto :goto_0
.end method

.method private updateQueryHint()V
    .locals 3

    .prologue
    .line 1144
    invoke-virtual {p0}, Landroid/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1145
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1143
    return-void
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1152
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 1153
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1154
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1155
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1158
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1161
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1162
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1163
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1170
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1173
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1174
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1175
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1179
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1180
    new-instance v1, Landroid/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1181
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 1180
    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1182
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1183
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Landroid/widget/SuggestionsAdapter;

    .line 1184
    iget-boolean v3, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    .line 1183
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1151
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 862
    const/16 v0, 0x8

    .line 863
    .local v0, "visibility":I
    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 864
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 866
    :cond_0
    const/4 v0, 0x0

    .line 868
    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 861
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 853
    const/16 v0, 0x8

    .line 854
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    if-nez p1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_1

    .line 858
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    return-void

    .line 856
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateViewsVisibility(Z)V
    .locals 6
    .param p1, "collapsed"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 816
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconified:Z

    .line 818
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 820
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 822
    .local v0, "hasText":Z
    :goto_1
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 823
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    .line 824
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-object v2, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    iget-boolean v5, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 826
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    .line 827
    if-eqz v0, :cond_4

    :goto_4
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    .line 828
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    .line 815
    return-void

    .line 818
    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    const/16 v1, 0x8

    .restart local v1    # "visCollapsed":I
    goto :goto_0

    .line 820
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "hasText":Z
    goto :goto_1

    :cond_2
    move v2, v4

    .line 824
    goto :goto_2

    :cond_3
    move v3, v4

    .line 825
    goto :goto_3

    .line 827
    :cond_4
    const/4 v4, 0x1

    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .param p1, "empty"    # Z

    .prologue
    .line 1196
    const/16 v0, 0x8

    .line 1197
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1201
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1195
    return-void

    .line 1197
    :cond_1
    if-eqz p1, :cond_0

    .line 1198
    const/4 v0, 0x0

    .line 1199
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    .line 494
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    .line 495
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 496
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 497
    iput-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    .line 492
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1342
    const-class v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 614
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 615
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 621
    .local v0, "hint":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 616
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 619
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroid/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Landroid/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 678
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1319
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1320
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1321
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1322
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1323
    iput-boolean v2, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    .line 1318
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1331
    iget-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    return-void

    .line 1333
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    .line 1334
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    .line 1335
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1336
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1330
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 906
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 907
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Landroid/widget/SuggestionsAdapter;

    invoke-virtual {v0}, Landroid/widget/SuggestionsAdapter;->enable()V

    .line 905
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 915
    iget-object v0, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 916
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 913
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 969
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    .line 970
    const/4 v1, 0x0

    return v1

    .line 975
    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 976
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 977
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 979
    const/4 v1, 0x1

    return v1

    .line 982
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 780
    return-void

    .line 783
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 784
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 786
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 806
    :cond_1
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 807
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 776
    return-void

    .line 789
    :sswitch_0
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 790
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 792
    :cond_2
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 797
    :sswitch_1
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 798
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 803
    :sswitch_2
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_0

    .line 786
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 938
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 937
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1298
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1301
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    .line 1302
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    .line 1297
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1309
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1311
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    .line 1308
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    if-eqz v1, :cond_0

    return v2

    .line 477
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 479
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_3

    .line 480
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 481
    .local v0, "result":Z
    if-eqz v0, :cond_2

    .line 482
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 484
    :cond_2
    return v0

    .line 486
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 423
    iput-object p1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 422
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 664
    if-eqz p1, :cond_0

    .line 665
    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    .line 663
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 637
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 638
    :cond_0
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    .line 639
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 640
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 636
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 435
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 434
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 458
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 457
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 759
    iput p1, p0, Landroid/widget/SearchView;->mMaxWidth:I

    .line 761
    invoke-virtual {p0}, Landroid/widget/SearchView;->requestLayout()V

    .line 758
    return-void
.end method

.method public setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnCloseListener;

    .prologue
    .line 516
    iput-object p1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 515
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 525
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 524
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .prologue
    .line 507
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 506
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 546
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 545
    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SearchView$OnSuggestionListener;

    .prologue
    .line 534
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    .line 533
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 567
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 570
    iput-object p1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 574
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    :cond_1
    :goto_0
    return-void

    .line 575
    :cond_2
    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    goto :goto_0
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 590
    iput-object p1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 591
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 589
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    .line 719
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Landroid/widget/SuggestionsAdapter;

    .line 721
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 720
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 717
    :cond_0
    return-void

    .line 721
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 401
    iput-object p1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 402
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSearchAutoComplete()V

    .line 404
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 407
    :cond_0
    invoke-direct {p0}, Landroid/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 409
    iget-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 414
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 400
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 690
    iput-boolean p1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 691
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 689
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 740
    iput-object p1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 742
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 739
    return-void
.end method
