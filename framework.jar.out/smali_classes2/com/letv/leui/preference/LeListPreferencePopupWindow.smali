.class public Lcom/letv/leui/preference/LeListPreferencePopupWindow;
.super Ljava/lang/Object;
.source "LeListPreferencePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;,
        Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;,
        Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;,
        Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;,
        Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAboveAnchorListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mShowListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic -get5(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic -get6(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Z)V
    .locals 0
    .param p1, "aboveAnchor"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 123
    const v1, 0x10100aa

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 122
    sput-object v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;-><init>(Landroid/view/View;II)V

    .line 237
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;-><init>(Landroid/view/View;II)V

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 160
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v7, 0x0

    iput v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mInputMethodMode:I

    .line 83
    const/4 v7, 0x1

    iput v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSoftInputMode:I

    .line 84
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchable:Z

    .line 85
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOutsideTouchable:Z

    .line 86
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mClippingEnabled:Z

    .line 87
    const/4 v7, -0x1

    iput v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSplitTouchEnabled:I

    .line 90
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAllowScrollingAnchorParent:Z

    .line 91
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLayoutInsetDecor:Z

    .line 106
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    .line 107
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mScreenLocation:[I

    .line 108
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 115
    const/16 v7, 0x3e8

    iput v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowLayoutType:I

    .line 118
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIgnoreCheekPress:Z

    .line 120
    const/4 v7, -0x1

    iput v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnimationStyle:I

    .line 128
    new-instance v7, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;

    invoke-direct {v7, p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;-><init>(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)V

    .line 127
    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 178
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    .line 179
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 183
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    .line 182
    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 185
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 187
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 188
    .local v2, "animStyle":I
    const v7, 0x10302ec

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2    # "animStyle":I
    :cond_0
    iput v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnimationStyle:I

    .line 200
    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 201
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 204
    .local v3, "background":Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 208
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 209
    .local v5, "count":I
    const/4 v4, -0x1

    .line 210
    .local v4, "belowAnchorStateIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 211
    if-eq v6, v1, :cond_3

    .line 212
    move v4, v6

    .line 219
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 220
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 228
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "belowAnchorStateIndex":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 177
    return-void

    .line 210
    .restart local v1    # "aboveAnchorStateIndex":I
    .restart local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .restart local v4    # "belowAnchorStateIndex":I
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 223
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, v0, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;-><init>(Landroid/view/View;II)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mInputMethodMode:I

    .line 83
    iput v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSoftInputMode:I

    .line 84
    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchable:Z

    .line 85
    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOutsideTouchable:Z

    .line 86
    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mClippingEnabled:Z

    .line 87
    iput v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSplitTouchEnabled:I

    .line 90
    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAllowScrollingAnchorParent:Z

    .line 91
    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLayoutInsetDecor:Z

    .line 106
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    .line 107
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mScreenLocation:[I

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 115
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowLayoutType:I

    .line 118
    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIgnoreCheekPress:Z

    .line 120
    iput v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnimationStyle:I

    .line 128
    new-instance v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;-><init>(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)V

    .line 127
    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 297
    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    .line 299
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 301
    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setContentView(Landroid/view/View;)V

    .line 302
    invoke-virtual {p0, p2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setWidth(I)V

    .line 303
    invoke-virtual {p0, p3}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setHeight(I)V

    .line 304
    invoke-virtual {p0, p4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setFocusable(Z)V

    .line 296
    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1139
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1140
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1141
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    .line 1142
    const v0, 0x10302e4

    .line 1141
    :goto_0
    return v0

    .line 1143
    :cond_0
    const v0, 0x10302e3

    goto :goto_0

    .line 1145
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1147
    :cond_2
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1095
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1103
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1104
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1106
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1107
    or-int/lit8 p1, p1, 0x8

    .line 1108
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1109
    or-int/2addr p1, v2

    .line 1114
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1115
    or-int/lit8 p1, p1, 0x10

    .line 1117
    :cond_2
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1118
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1120
    :cond_3
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1121
    or-int/lit16 p1, p1, 0x200

    .line 1123
    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1124
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1126
    :cond_5
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1127
    or-int/lit16 p1, p1, 0x100

    .line 1129
    :cond_6
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1130
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1132
    :cond_7
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1133
    or-int/lit8 p1, p1, 0x20

    .line 1135
    :cond_8
    return p1

    .line 1111
    :cond_9
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1112
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1072
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1077
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1078
    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidth:I

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1079
    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeight:I

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1080
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1085
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1086
    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1087
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1088
    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1091
    return-object v0

    .line 1083
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 16
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 1167
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1168
    .local v1, "anchorHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v13, v13, p3

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v13, v1

    add-int v13, v13, p4

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1172
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v13

    move/from16 v0, p5

    invoke-static {v0, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    and-int/lit8 v4, v13, 0x7

    .line 1174
    .local v4, "hgrav":I
    const/4 v13, 0x5

    if-ne v4, v13, :cond_0

    .line 1176
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1179
    :cond_0
    const/4 v5, 0x0

    .line 1181
    .local v5, "onTop":Z
    const/16 v13, 0x33

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1184
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1185
    .local v2, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v13, v1

    add-int v10, v13, p4

    .line 1189
    .local v10, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 1190
    .local v9, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupHeight:I

    add-int/2addr v13, v10

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v13, v14, :cond_1

    .line 1191
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupWidth:I

    add-int/2addr v13, v14

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    if-lez v13, :cond_4

    .line 1195
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v13, :cond_2

    .line 1196
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 1197
    .local v11, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 1198
    .local v12, "scrollY":I
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupWidth:I

    add-int/2addr v13, v11

    add-int v13, v13, p3

    .line 1199
    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupHeight:I

    add-int/2addr v14, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    add-int v14, v14, p4

    .line 1198
    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1200
    .local v7, "r":Landroid/graphics/Rect;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v13}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1205
    .end local v7    # "r":Landroid/graphics/Rect;
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v13, v13, p3

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int v13, v13, p4

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1210
    const/4 v13, 0x5

    if-ne v4, v13, :cond_3

    .line 1211
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1215
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1217
    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v13, v13, p4

    .line 1218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int v14, v14, p4

    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    .line 1217
    if-ge v13, v14, :cond_8

    const/4 v5, 0x1

    .line 1219
    :goto_0
    if-eqz v5, :cond_9

    .line 1220
    const/16 v13, 0x53

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1221
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    add-int v13, v13, p4

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1227
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mClipToScreen:Z

    if-eqz v13, :cond_7

    .line 1228
    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v13, v14

    .line 1230
    .local v3, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v8, v13, v14

    .line 1231
    .local v8, "right":I
    if-le v8, v3, :cond_5

    .line 1232
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v14, v8, v3

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1234
    :cond_5
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v14, v2, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_6

    .line 1235
    iget v13, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1236
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1239
    :cond_6
    if-eqz v5, :cond_a

    .line 1240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int v13, v13, p4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupHeight:I

    sub-int v6, v13, v14

    .line 1241
    .local v6, "popupTop":I
    if-gez v6, :cond_7

    .line 1242
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v13, v6

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1249
    .end local v3    # "displayFrameWidth":I
    .end local v6    # "popupTop":I
    .end local v8    # "right":I
    :cond_7
    :goto_2
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v14, 0x10000000

    or-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1251
    return v5

    .line 1217
    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    .line 1223
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int v13, v13, p4

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1245
    .restart local v3    # "displayFrameWidth":I
    .restart local v8    # "right":I
    :cond_a
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v14, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1045
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1046
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mShowListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;

    if-eqz v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mShowListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;

    invoke-interface {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;->onShow()V

    .line 1040
    :cond_1
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1000
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 1001
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1000
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v4, :cond_0

    .line 1005
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1006
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1007
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1008
    .local v0, "height":I
    if-eqz v1, :cond_2

    .line 1009
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1010
    const/4 v0, -0x2

    .line 1015
    :cond_2
    new-instance v3, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;-><init>(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Landroid/content/Context;)V

    .line 1016
    .local v3, "popupViewContainer":Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1017
    const/4 v4, -0x1

    .line 1016
    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1019
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1022
    iput-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    .line 1027
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "popupViewContainer":Lcom/letv/leui/preference/LeListPreferencePopupWindow$PopupViewContainer;
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    .line 1026
    :goto_1
    iput-boolean v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1028
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupWidth:I

    .line 1029
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupHeight:I

    .line 999
    return-void

    .line 1024
    :cond_3
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    .line 1027
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->unregisterForScrollChanged()V

    .line 1602
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1604
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1605
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1608
    :cond_0
    iput p2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorXoff:I

    .line 1609
    iput p3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorYoff:I

    .line 1610
    iput p4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchoredGravity:I

    .line 1599
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1056
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1053
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1587
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1588
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1589
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1590
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1592
    :cond_0
    if-eqz v0, :cond_1

    .line 1593
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1594
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1596
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    iput-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1586
    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 18
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "gravity"    # I

    .prologue
    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1534
    :cond_0
    return-void

    .line 1537
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1538
    .local v15, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v5, v0, :cond_7

    :cond_2
    const/4 v14, 0x1

    .line 1539
    .local v14, "needsUpdate":Z
    :goto_0
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    if-eq v5, v0, :cond_8

    .line 1540
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1548
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 1550
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1551
    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_a

    .line 1552
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1556
    :goto_2
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_b

    .line 1557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1563
    :cond_5
    :goto_3
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v16, v0

    .line 1564
    .local v16, "x":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    .line 1566
    .local v17, "y":I
    if-eqz p2, :cond_c

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p8

    .line 1567
    invoke-direct/range {v5 .. v10}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->updateAboveAnchor(Z)V

    .line 1573
    :goto_4
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_6

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v17

    if-eq v0, v5, :cond_d

    :cond_6
    const/4 v13, 0x1

    :goto_5
    move-object/from16 v8, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v8 .. v13}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->update(IIIIZ)V

    .line 1531
    return-void

    .line 1538
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "needsUpdate":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "needsUpdate":Z
    goto :goto_0

    .line 1539
    :cond_8
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIsDropdown:Z

    if-eqz v5, :cond_3

    .line 1541
    :cond_9
    if-eqz v14, :cond_4

    .line 1543
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorXoff:I

    .line 1544
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorYoff:I

    .line 1545
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchoredGravity:I

    goto :goto_1

    .line 1554
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupWidth:I

    goto :goto_2

    .line 1559
    :cond_b
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupHeight:I

    goto :goto_3

    .line 1569
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_c
    move-object/from16 v0, p0

    iget v8, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchorYoff:I

    .line 1570
    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchoredGravity:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 1569
    invoke-direct/range {v5 .. v10}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->updateAboveAnchor(Z)V

    goto :goto_4

    .line 1573
    :cond_d
    const/4 v13, 0x0

    goto :goto_5
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 957
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchor:Z

    .line 959
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 964
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1333
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIsShowing:Z

    .line 1336
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->unregisterForScrollChanged()V

    .line 1339
    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1344
    :cond_0
    iput-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    .line 1346
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnDismissListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnDismissListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;->onDismiss()V

    .line 1332
    :cond_1
    return-void

    .line 1340
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 1341
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1344
    :cond_2
    iput-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    .line 1346
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnDismissListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1347
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnDismissListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;->onDismiss()V

    .line 1340
    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1265
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1301
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1302
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1304
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mDrawingLocation:[I

    .line 1305
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1307
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1308
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 1309
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1310
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1312
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1313
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1316
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1317
    .local v6, "returnedHeight":I
    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1318
    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1319
    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1322
    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 767
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 616
    iget v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 617
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 619
    :cond_1
    iget v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSplitTouchEnabled:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchable:Z

    return v0
.end method

.method public setAboveAnchorListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;)V
    .locals 0
    .param p1, "mAboveAnchorListener"    # Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;

    .prologue
    .line 937
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchorListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;

    .line 936
    return-void
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAllowScrollingAnchorParent:Z

    .line 604
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnimationStyle:I

    .line 364
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 322
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mClipToScreen:Z

    .line 595
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setClippingEnabled(Z)V

    .line 593
    return-void

    .line 595
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mClippingEnabled:Z

    .line 583
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    return-void

    .line 395
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    .line 397
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 390
    :cond_2
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mFocusable:Z

    .line 441
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 756
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeight:I

    .line 755
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIgnoreCheekPress:Z

    .line 346
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 468
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mInputMethodMode:I

    .line 467
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLayoutInScreen:Z

    .line 658
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLayoutInsetDecor:Z

    .line 674
    return-void
.end method

.method public setOnDismissListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOnDismissListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnDismissListener;

    .line 1358
    return-void
.end method

.method public setOnShowListener(Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;)V
    .locals 0
    .param p1, "mShowListener"    # Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mShowListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$OnShowListener;

    .line 946
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mOutsideTouchable:Z

    .line 554
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSoftInputMode:I

    .line 481
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 636
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mSplitTouchEnabled:I

    .line 635
    return-void

    .line 636
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 410
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 703
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mNotTouchModal:Z

    .line 702
    return-void

    .line 703
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 522
    iput-boolean p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mTouchable:Z

    .line 521
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 782
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidth:I

    .line 781
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 729
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidthMode:I

    .line 730
    iput p2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeightMode:I

    .line 728
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 686
    iput p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowLayoutType:I

    .line 685
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 860
    invoke-virtual {p0, p1, v0, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 859
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 880
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 879
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 901
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 902
    :cond_0
    return-void

    .line 905
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 907
    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIsShowing:Z

    .line 908
    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIsDropdown:Z

    .line 910
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 911
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 913
    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v6

    .line 915
    .local v6, "aboveAnchor":Z
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchorListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;

    if-eqz v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAboveAnchorListener:Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;

    invoke-interface {v0, v6}, Lcom/letv/leui/preference/LeListPreferencePopupWindow$AboveAnchorListener;->onAbove(Z)V

    .line 919
    :cond_2
    invoke-direct {p0, v6}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->updateAboveAnchor(Z)V

    .line 921
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeightMode:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeightMode:I

    iput v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastHeight:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 922
    :cond_3
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidthMode:I

    if-gez v0, :cond_4

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidthMode:I

    iput v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastWidth:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 924
    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 926
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "height:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "width:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0, v2}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 900
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 824
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 825
    :cond_0
    return-void

    .line 828
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->unregisterForScrollChanged()V

    .line 830
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIsShowing:Z

    .line 831
    iput-boolean v2, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mIsDropdown:Z

    .line 833
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 834
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 836
    invoke-direct {p0, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 837
    if-nez p2, :cond_2

    .line 838
    const p2, 0x800033

    .line 840
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 841
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 842
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 843
    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 844
    :cond_3
    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 845
    :cond_4
    invoke-direct {p0, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 823
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 809
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 808
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1371
    :cond_0
    return-void

    .line 1375
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1374
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1377
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1379
    .local v3, "update":Z
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1380
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1381
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1382
    const/4 v3, 0x1

    .line 1385
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->computeFlags(I)I

    move-result v1

    .line 1386
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1387
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1388
    const/4 v3, 0x1

    .line 1391
    :cond_3
    if-eqz v3, :cond_4

    .line 1392
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1393
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1369
    :cond_4
    return-void
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1406
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1408
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->update(IIIIZ)V

    .line 1405
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1423
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->update(IIIIZ)V

    .line 1422
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1440
    if-eq p3, v7, :cond_0

    .line 1441
    iput p3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastWidth:I

    .line 1442
    invoke-virtual {p0, p3}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setWidth(I)V

    .line 1445
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1446
    iput p4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastHeight:I

    .line 1447
    invoke-virtual {p0, p4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setHeight(I)V

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1451
    :cond_2
    return-void

    .line 1454
    :cond_3
    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1456
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1458
    .local v5, "update":Z
    iget v6, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidthMode:I

    if-gez v6, :cond_b

    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWidthMode:I

    .line 1459
    .local v1, "finalWidth":I
    :goto_0
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1460
    iput v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1461
    const/4 v5, 0x1

    .line 1464
    .end local v5    # "update":Z
    :cond_4
    iget v6, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeightMode:I

    if-gez v6, :cond_c

    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mHeightMode:I

    .line 1465
    .local v0, "finalHeight":I
    :goto_1
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1466
    iput v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1467
    const/4 v5, 0x1

    .line 1470
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1471
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1472
    const/4 v5, 0x1

    .line 1475
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1476
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1477
    const/4 v5, 0x1

    .line 1480
    :cond_7
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1481
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1482
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1483
    const/4 v5, 0x1

    .line 1486
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->computeFlags(I)I

    move-result v3

    .line 1487
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1488
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1489
    const/4 v5, 0x1

    .line 1492
    :cond_9
    if-eqz v5, :cond_a

    .line 1493
    invoke-direct {p0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1494
    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1439
    :cond_a
    return-void

    .line 1458
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    .restart local v5    # "update":Z
    :cond_b
    iget v1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastWidth:I

    .restart local v1    # "finalWidth":I
    goto :goto_0

    .line 1464
    .end local v5    # "update":Z
    :cond_c
    iget v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mLastHeight:I

    .restart local v0    # "finalHeight":I
    goto :goto_1
.end method

.method public update(Landroid/view/View;II)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1508
    iget v8, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchoredGravity:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1507
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1527
    iget v8, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1526
    return-void
.end method
