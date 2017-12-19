.class public Lcom/letv/leui/preference/LeEditTextPreference;
.super Landroid/preference/Preference;
.source "LeEditTextPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeEditTextPreference$SavedState;,
        Lcom/letv/leui/preference/LeEditTextPreference$1;,
        Lcom/letv/leui/preference/LeEditTextPreference$2;
    }
.end annotation


# static fields
.field private static clickedId:I

.field public static clickedKey:Ljava/lang/String;

.field private static curMaxId:I

.field private static softInputShow:Z


# instance fields
.field private _id:I

.field private colorStateList:Landroid/content/res/ColorStateList;

.field private curMills:J

.field private editCharSequence:Ljava/lang/CharSequence;

.field private editRedId:I

.field private filters:[Landroid/text/InputFilter;

.field private forceColor:I

.field private hint:Ljava/lang/CharSequence;

.field private innerWatcher:Landroid/text/TextWatcher;

.field private inputType:I

.field private isAttached:Z

.field protected mEditText:Landroid/widget/EditText;

.field private mExtraHeight:I

.field private mIsMeasureInputArea:Z

.field private mPreEditText:Landroid/widget/EditText;

.field private mTmpTransformRect:Landroid/graphics/RectF;

.field private onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private preMills:J

.field private showCursor:Ljava/lang/Runnable;

.field private stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private textWatcher:Landroid/text/TextWatcher;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/preference/LeEditTextPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/preference/LeEditTextPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/preference/LeEditTextPreference;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->textWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/preference/LeEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set1(Lcom/letv/leui/preference/LeEditTextPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/preference/LeEditTextPreference;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->persistString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/letv/leui/preference/LeEditTextPreference;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->shouldPersist()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/letv/leui/preference/LeEditTextPreference;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->clearFocus(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/letv/leui/preference/LeEditTextPreference;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeEditTextPreference;->ensureViewArea(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedKey:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/letv/leui/preference/LeEditTextPreference;->softInputShow:Z

    .line 65
    const/4 v0, -0x1

    sput v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedId:I

    .line 67
    sput v1, Lcom/letv/leui/preference/LeEditTextPreference;->curMaxId:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    const v0, 0x11600c2

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-boolean v4, p0, Lcom/letv/leui/preference/LeEditTextPreference;->isAttached:Z

    .line 59
    iput-wide v6, p0, Lcom/letv/leui/preference/LeEditTextPreference;->preMills:J

    .line 61
    iput-wide v6, p0, Lcom/letv/leui/preference/LeEditTextPreference;->curMills:J

    .line 63
    iput v4, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    .line 78
    new-instance v3, Lcom/letv/leui/preference/LeEditTextPreference$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/preference/LeEditTextPreference$1;-><init>(Lcom/letv/leui/preference/LeEditTextPreference;)V

    iput-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->innerWatcher:Landroid/text/TextWatcher;

    .line 167
    const/4 v3, -0x1

    iput v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->inputType:I

    .line 268
    new-instance v3, Lcom/letv/leui/preference/LeEditTextPreference$2;

    invoke-direct {v3, p0}, Lcom/letv/leui/preference/LeEditTextPreference$2;-><init>(Lcom/letv/leui/preference/LeEditTextPreference;)V

    iput-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->showCursor:Ljava/lang/Runnable;

    .line 283
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 285
    iput v4, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mExtraHeight:I

    .line 108
    sget v3, Lcom/letv/leui/preference/LeEditTextPreference;->curMaxId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/letv/leui/preference/LeEditTextPreference;->curMaxId:I

    iput v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    .line 110
    sget-object v3, Lcom/android/internal/R$styleable;->LeEditTextPreference:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 111
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 112
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 113
    .local v1, "indexAttr":I
    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->hint:Ljava/lang/CharSequence;

    goto :goto_1

    .line 118
    :pswitch_1
    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->forceColor:I

    goto :goto_1

    .line 122
    .end local v1    # "indexAttr":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    return-void

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearFocus(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    move-object v1, p1

    .line 257
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 258
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->clearFocus(Landroid/view/View;)V

    .line 256
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 260
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    .line 264
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 254
    :cond_2
    return-void
.end method

.method private ensureViewArea(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 299
    if-nez p1, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 301
    .local v1, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    .line 303
    .local v2, "scrollY":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget v5, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mExtraHeight:I

    add-int/2addr v4, v5

    .line 303
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 305
    .local v0, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/letv/leui/preference/LeEditTextPreference;->requestRectangle(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 298
    return-void
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 489
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getItemOnAttachStateChangeListener()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Lcom/letv/leui/preference/LeEditTextPreference$3;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LeEditTextPreference$3;-><init>(Lcom/letv/leui/preference/LeEditTextPreference;)V

    return-object v0
.end method

.method public static hide(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 493
    invoke-static {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 494
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 492
    return-void
.end method

.method private requestRectangle(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 309
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_1

    .line 310
    :cond_0
    return-void

    .line 313
    :cond_1
    move-object/from16 v4, p1

    .line 314
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 316
    .local v6, "parent":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mTmpTransformRect:Landroid/graphics/RectF;

    if-nez v13, :cond_2

    .line 317
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 320
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/letv/leui/preference/LeEditTextPreference;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 321
    .local v8, "position":Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 323
    const/4 v11, 0x0

    .line 324
    .local v11, "scrolled":Z
    :goto_0
    if-eqz v6, :cond_3

    .line 325
    iget v13, v8, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    iget v14, v8, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    iget v15, v8, Landroid/graphics/RectF;->right:F

    float-to-int v15, v15

    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    instance-of v13, v6, Landroid/view/View;

    if-nez v13, :cond_4

    .line 308
    :cond_3
    return-void

    :cond_4
    move-object v7, v6

    .line 331
    check-cast v7, Landroid/view/View;

    .line 332
    .local v7, "parentView":Landroid/view/View;
    const/4 v13, -0x1

    invoke-virtual {v7, v13}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v13

    if-nez v13, :cond_6

    .line 333
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v3

    .line 334
    :goto_1
    if-eqz v3, :cond_5

    .line 335
    instance-of v13, v7, Landroid/widget/ScrollView;

    if-eqz v13, :cond_7

    move-object v13, v7

    .line 336
    check-cast v13, Landroid/widget/ScrollView;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v4, v0, v1}, Landroid/widget/ScrollView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 370
    :cond_5
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 371
    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    int-to-float v14, v14

    invoke-virtual {v8, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    .line 372
    move-object v4, v7

    .line 373
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    goto :goto_0

    .line 332
    :cond_6
    const/4 v3, 0x1

    .local v3, "canScroll":Z
    goto :goto_1

    .line 338
    .end local v3    # "canScroll":Z
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 339
    .local v5, "height":I
    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 340
    .local v12, "top":I
    add-int v2, v12, v5

    .line 342
    .local v2, "bottom":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 343
    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 345
    const/4 v10, 0x0

    .line 346
    .local v10, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v2, :cond_a

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v12, :cond_a

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v5, :cond_9

    .line 348
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v12

    add-int/lit8 v10, v13, 0x0

    .line 360
    :cond_8
    :goto_3
    if-eqz v10, :cond_c

    const/4 v9, 0x1

    .line 361
    .local v9, "scroll":Z
    :goto_4
    if-eqz v9, :cond_5

    .line 362
    instance-of v13, v7, Landroid/widget/ListView;

    if-eqz v13, :cond_5

    move-object v13, v7

    .line 363
    check-cast v13, Landroid/widget/ListView;

    invoke-virtual {v13, v10}, Landroid/widget/ListView;->scrollListBy(I)V

    goto :goto_2

    .line 350
    .end local v9    # "scroll":Z
    :cond_9
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v2

    add-int/lit8 v10, v13, 0x0

    goto :goto_3

    .line 352
    :cond_a
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v12, :cond_8

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v2, :cond_8

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v5, :cond_b

    .line 354
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v2, v13

    rsub-int/lit8 v10, v13, 0x0

    goto :goto_3

    .line 356
    :cond_b
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v12, v13

    rsub-int/lit8 v10, v13, 0x0

    goto :goto_3

    .line 360
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "scroll":Z
    goto :goto_4
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 483
    invoke-static {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 484
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 485
    sput-boolean v1, Lcom/letv/leui/preference/LeEditTextPreference;->softInputShow:Z

    .line 482
    return-void
.end method


# virtual methods
.method public getEditCharSequence()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getEditRedId()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->textWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method public isMeasureInputArea()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 184
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_9

    .line 185
    iget v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->inputType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 186
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->inputType:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->filters:[Landroid/text/InputFilter;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->filters:[Landroid/text/InputFilter;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 192
    :cond_1
    iget v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(I)V

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 195
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->hint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 199
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->hint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 202
    :cond_4
    const v2, 0x102046d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    .local v0, "reflectTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_5

    .line 204
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_5
    const v2, 0x102041f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 208
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v1, :cond_6

    .line 209
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :cond_6
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eq v2, v3, :cond_7

    .line 213
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 214
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->showCursor:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    :cond_7
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mPreEditText:Landroid/widget/EditText;

    .line 218
    sget v2, Lcom/letv/leui/preference/LeEditTextPreference;->clickedId:I

    iget v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    if-ne v2, v3, :cond_8

    .line 219
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_8

    .line 220
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 221
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/letv/leui/preference/LeEditTextPreference;->show(Landroid/content/Context;Landroid/view/View;)V

    .line 222
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 223
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/letv/leui/preference/LeEditTextPreference;->showCursor:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :cond_8
    invoke-direct {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getItemOnAttachStateChangeListener()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 228
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-wide v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->curMills:J

    iput-wide v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->preMills:J

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->curMills:J

    .line 182
    .end local v0    # "reflectTitle":Landroid/widget/TextView;
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 501
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->show(Landroid/content/Context;Landroid/view/View;)V

    .line 502
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedKey:Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 505
    iget v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    sput v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedId:I

    .line 498
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 146
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 149
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 151
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setClickable(Z)V

    .line 152
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/letv/leui/preference/LeEditTextPreference;->innerWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 155
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 156
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 157
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 158
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 159
    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->colorStateList:Landroid/content/res/ColorStateList;

    .line 161
    :cond_0
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->titleView:Landroid/widget/TextView;

    .line 163
    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 473
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 475
    sput-boolean v1, Lcom/letv/leui/preference/LeEditTextPreference;->softInputShow:Z

    .line 476
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 479
    :cond_0
    return v1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 388
    if-eqz p2, :cond_4

    .line 389
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 390
    iget v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->forceColor:I

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->titleView:Landroid/widget/TextView;

    iget v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->forceColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    :cond_1
    iget v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->_id:I

    sput v0, Lcom/letv/leui/preference/LeEditTextPreference;->clickedId:I

    .line 394
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/letv/leui/preference/LeEditTextPreference;->ensureViewArea(Landroid/view/View;)V

    .line 402
    :cond_2
    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getEditCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 380
    :cond_3
    return-void

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->colorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->titleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->colorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 403
    :cond_5
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 525
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 531
    check-cast v0, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;

    .line 532
    .local v0, "myState":Lcom/letv/leui/preference/LeEditTextPreference$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 533
    iget-object v1, v0, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->setEditCharSequence(Ljava/lang/CharSequence;)V

    .line 524
    return-void

    .line 527
    .end local v0    # "myState":Lcom/letv/leui/preference/LeEditTextPreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 528
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 512
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 513
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    return-object v1

    .line 518
    :cond_0
    new-instance v0, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 519
    .local v0, "myState":Lcom/letv/leui/preference/LeEditTextPreference$SavedState;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getEditCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    :goto_0
    iput-object v2, v0, Lcom/letv/leui/preference/LeEditTextPreference$SavedState;->text:Ljava/lang/String;

    .line 520
    return-object v0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->getEditCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeEditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 450
    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 465
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeEditTextPreference;->hide(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 461
    :cond_1
    return-void
.end method

.method public setEditCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "editCharSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    .line 437
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->notifyChanged()V

    .line 434
    return-void
.end method

.method public setEditRedId(I)V
    .locals 1
    .param p1, "editRedId"    # I

    .prologue
    .line 425
    iput p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editRedId:I

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/preference/LeEditTextPreference;->editCharSequence:Ljava/lang/CharSequence;

    .line 427
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->notifyChanged()V

    .line 424
    return-void
.end method

.method public setEditTextStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0
    .param p1, "stateChangeListener"    # Landroid/view/View$OnAttachStateChangeListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->stateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 74
    return-void
.end method

.method public setExtraHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mExtraHeight:I

    .line 294
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 0
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->filters:[Landroid/text/InputFilter;

    .line 169
    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->hint:Ljava/lang/CharSequence;

    .line 446
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeEditTextPreference;->notifyChanged()V

    .line 444
    return-void
.end method

.method public setInputType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->inputType:I

    .line 173
    return-void
.end method

.method public setMeasureInputArea(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->mIsMeasureInputArea:Z

    .line 286
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "onFocusChangeListener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 440
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "textWatcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/letv/leui/preference/LeEditTextPreference;->textWatcher:Landroid/text/TextWatcher;

    .line 420
    return-void
.end method
