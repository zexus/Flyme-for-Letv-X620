.class public Lcom/letv/leui/widget/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/SlidingMenu$State;,
        Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;,
        Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;,
        Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;,
        Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;,
        Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;,
        Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;,
        Lcom/letv/leui/widget/SlidingMenu$SavedState;
    }
.end annotation


# static fields
.field public static final LEFT:I = 0x0

.field public static final LEFT_RIGHT:I = 0x2

.field public static final RIGHT:I = 0x1

.field public static final SLIDING_CONTENT:I = 0x1

.field public static final SLIDING_WINDOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SlidingMenu"

.field public static final TOUCHMODE_FULLSCREEN:I = 0x1

.field public static final TOUCHMODE_MARGIN:I = 0x0

.field public static final TOUCHMODE_NONE:I = 0x2


# instance fields
.field private mActionbarOverlay:Z

.field private mCloseListener:Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;

.field private mFitSystemWindows:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOpenListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

.field private mSecondaryOpenListner:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

.field private mSlidingMenuStateChangeListener:Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;

.field private mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

.field private mViewAboveOffset:I

.field private mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mCloseListener:Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mOpenListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mSecondaryOpenListner:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-boolean v4, p0, Lcom/letv/leui/widget/SlidingMenu;->mActionbarOverlay:Z

    .line 42
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mFitSystemWindows:Z

    .line 86
    iput v4, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAboveOffset:I

    .line 1154
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mHandler:Landroid/os/Handler;

    .line 233
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 234
    .local v1, "behindParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Lcom/letv/leui/widget/CustomViewBehind;

    invoke-direct {v2, p1}, Lcom/letv/leui/widget/CustomViewBehind;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    .line 235
    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {p0, v2, v1}, Lcom/letv/leui/widget/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 237
    .local v0, "aboveParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Lcom/letv/leui/widget/CustomViewAbove;

    invoke-direct {v2, p1}, Lcom/letv/leui/widget/CustomViewAbove;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    .line 238
    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {p0, v2, v0}, Lcom/letv/leui/widget/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    iget-object v3, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setCustomViewBehind(Lcom/letv/leui/widget/CustomViewBehind;)V

    .line 241
    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    iget-object v3, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/CustomViewBehind;->setCustomViewAbove(Lcom/letv/leui/widget/CustomViewAbove;)V

    .line 242
    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    new-instance v3, Lcom/letv/leui/widget/SlidingMenu$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/SlidingMenu$1;-><init>(Lcom/letv/leui/widget/SlidingMenu;)V

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/CustomViewAbove;->setOnPageChangeListener(Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;)V

    .line 230
    return-void
.end method

.method private getViewFromActivity(Landroid/app/LocalActivityManager;Landroid/content/Intent;)Landroid/view/View;
    .locals 10
    .param p1, "activityManager"    # Landroid/app/LocalActivityManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 399
    new-array v5, v9, [I

    const v6, 0x1010054

    aput v6, v5, v7

    .line 398
    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 400
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 401
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    invoke-virtual {p1, v8, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v3

    .line 404
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 405
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 407
    if-eqz v2, :cond_0

    .line 408
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 409
    invoke-virtual {v2, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v4, v2

    .line 410
    check-cast v4, Landroid/view/ViewGroup;

    .line 411
    const/high16 v5, 0x40000

    .line 410
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 413
    :cond_0
    return-object v2

    .line 404
    :cond_1
    const/4 v2, 0x0

    .local v2, "contentView":Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public addIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 983
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->addIgnoredView(Landroid/view/View;)V

    .line 982
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/SlidingMenu;->attachToActivity(Landroid/app/Activity;IZ)V

    .line 284
    return-void
.end method

.method public attachToActivity(Landroid/app/Activity;IZ)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "slideStyle"    # I
    .param p3, "actionbarOverlay"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 297
    if-eqz p2, :cond_0

    if-eq p2, v7, :cond_0

    .line 298
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 299
    const-string/jumbo v7, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    .line 298
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 302
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 303
    const-string/jumbo v7, "This SlidingMenu appears to already be attached"

    .line 302
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 307
    new-array v7, v7, [I

    const v8, 0x1010054

    aput v8, v7, v9

    .line 306
    invoke-virtual {v6, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 308
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 309
    .local v1, "background":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    packed-switch p2, :pswitch_data_0

    .line 296
    :cond_2
    :goto_0
    return-void

    .line 313
    :pswitch_0
    iput-boolean v9, p0, Lcom/letv/leui/widget/SlidingMenu;->mActionbarOverlay:Z

    .line 314
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 315
    .local v4, "decor":Landroid/view/ViewGroup;
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 317
    .local v5, "decorChild":Landroid/view/ViewGroup;
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 318
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 319
    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 320
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/SlidingMenu;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 323
    .end local v4    # "decor":Landroid/view/ViewGroup;
    .end local v5    # "decorChild":Landroid/view/ViewGroup;
    :pswitch_1
    iput-boolean p3, p0, Lcom/letv/leui/widget/SlidingMenu;->mActionbarOverlay:Z

    .line 326
    const v6, 0x1020002

    .line 325
    invoke-virtual {p1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 327
    .local v3, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 328
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 329
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 332
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2

    .line 333
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public clearIgnoredViews()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewAbove;->clearIgnoredViews()V

    .line 999
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1143
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 1144
    .local v1, "leftPadding":I
    iget v2, p1, Landroid/graphics/Rect;->right:I

    .line 1145
    .local v2, "rightPadding":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 1146
    .local v3, "topPadding":I
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1147
    .local v0, "bottomPadding":I
    iget-boolean v4, p0, Lcom/letv/leui/widget/SlidingMenu;->mActionbarOverlay:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/letv/leui/widget/SlidingMenu;->mFitSystemWindows:Z

    if-eqz v4, :cond_0

    .line 1148
    const-string/jumbo v4, "SlidingMenu"

    const-string/jumbo v5, "setting padding!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/letv/leui/widget/SlidingMenu;->setPadding(IIII)V

    .line 1151
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public getBehindOffset()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getBehindScrollScale()F
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewBehind;->getScrollScale()F

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewAbove;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentOffsetLeft()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAboveOffset:I

    return v0
.end method

.method public getMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewBehind;->getContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenuOffset()I
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewBehind;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewBehind;->getMode()I

    move-result v0

    return v0
.end method

.method public getSecondaryMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewBehind;->getSecondaryContent()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTouchModeAbove()I
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewAbove;->getTouchMode()I

    move-result v0

    return v0
.end method

.method public isMenuShowing()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 643
    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v2}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v2}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 643
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 644
    goto :goto_0
.end method

.method public isSecondaryMenuShowing()Z
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlidingEnabled()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/letv/leui/widget/CustomViewAbove;->isSlidingEnabled()Z

    move-result v0

    return v0
.end method

.method public manageLayers(F)V
    .locals 4
    .param p1, "percentOpen"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 1159
    return-void

    .line 1161
    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    const/4 v0, 0x1

    .line 1162
    .local v0, "layer":Z
    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 1165
    .local v1, "layerType":I
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1166
    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/letv/leui/widget/SlidingMenu$2;

    invoke-direct {v3, p0, v1}, Lcom/letv/leui/widget/SlidingMenu$2;-><init>(Lcom/letv/leui/widget/SlidingMenu;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1157
    :cond_1
    return-void

    .line 1161
    .end local v0    # "layer":Z
    .end local v1    # "layerType":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "layer":Z
    goto :goto_0

    .line 1163
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "layerType":I
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 916
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 914
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 901
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 902
    invoke-static {v5, p1}, Lcom/letv/leui/widget/SlidingMenu;->getDefaultSize(II)I

    move-result v3

    .line 903
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/letv/leui/widget/SlidingMenu;->getDefaultSize(II)I

    move-result v2

    .line 904
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/letv/leui/widget/SlidingMenu;->setMeasuredDimension(II)V

    .line 906
    iget v4, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAboveOffset:I

    .line 905
    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/letv/leui/widget/SlidingMenu;->getChildMeasureSpec(III)I

    move-result v1

    .line 907
    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/letv/leui/widget/SlidingMenu;->getChildMeasureSpec(III)I

    move-result v0

    .line 909
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    if-eqz v4, :cond_0

    .line 910
    iget-object v4, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v4, v1, v0}, Lcom/letv/leui/widget/CustomViewAbove;->measure(II)V

    .line 899
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1126
    check-cast v0, Lcom/letv/leui/widget/SlidingMenu$SavedState;

    .line 1127
    .local v0, "ss":Lcom/letv/leui/widget/SlidingMenu$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/widget/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1128
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/letv/leui/widget/SlidingMenu$SavedState;->getItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 1125
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1115
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/letv/leui/widget/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v2}, Lcom/letv/leui/widget/CustomViewAbove;->getCurrentItem()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 1116
    .local v0, "ss":Lcom/letv/leui/widget/SlidingMenu$SavedState;
    return-object v0
.end method

.method public removeIgnoredView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->removeIgnoredView(Landroid/view/View;)V

    .line 991
    return-void
.end method

.method public setBehindCanvasTransformer(Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;)V
    .locals 1
    .param p1, "t"    # Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setCanvasTransformer(Lcom/letv/leui/widget/SlidingMenu$CanvasTransformer;)V

    .line 794
    return-void
.end method

.method public setBehindScrollScale(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    .line 783
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 785
    const-string/jumbo v1, "ScrollScale must be between 0 and 1"

    .line 784
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setScrollScale(F)V

    .line 782
    return-void
.end method

.method public setContent(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 354
    return-void
.end method

.method public setContent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v1, :cond_0

    .line 375
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 376
    const-string/jumbo v2, "Did you forget to call \'public void setup(LocalActivityManager activityManager)\'?"

    .line 375
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {p0, v1, p1}, Lcom/letv/leui/widget/SlidingMenu;->getViewFromActivity(Landroid/app/LocalActivityManager;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 381
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "get content from Activity failed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_1
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setContent(Landroid/view/View;)V

    .line 365
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->showContent()V

    .line 363
    return-void
.end method

.method public setContentOffsetLeft(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 693
    iput p1, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAboveOffset:I

    .line 694
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setAboveOffsetLeft(I)V

    .line 695
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v1}, Lcom/letv/leui/widget/CustomViewAbove;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 697
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAboveOffset:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 698
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->requestLayout()V

    .line 692
    return-void
.end method

.method public setContentOffsetRes(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 729
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setContentOffsetLeft(I)V

    .line 727
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 935
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setFadeDegree(F)V

    .line 934
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 925
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setFadeEnabled(Z)V

    .line 924
    return-void
.end method

.method public setFitSystemWindowsEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1132
    iput-boolean p1, p0, Lcom/letv/leui/widget/SlidingMenu;->mFitSystemWindows:Z

    .line 1131
    return-void
.end method

.method public setMenu(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 431
    return-void
.end method

.method public setMenu(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 450
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v1, :cond_0

    .line 451
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 452
    const-string/jumbo v2, "Did you forget to call \'public void setup(LocalActivityManager activityManager)\'?"

    .line 451
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-direct {p0, v1, p1}, Lcom/letv/leui/widget/SlidingMenu;->getViewFromActivity(Landroid/app/LocalActivityManager;Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1

    .line 457
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "get content from Activity failed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :cond_1
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 449
    return-void
.end method

.method public setMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setContent(Landroid/view/View;)V

    .line 440
    return-void
.end method

.method public setMenuOffset(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setWidthOffset(I)V

    .line 671
    return-void
.end method

.method public setMenuOffsetRes(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 684
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setMenuOffset(I)V

    .line 682
    return-void
.end method

.method public setMenuVisibleAlways(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 535
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setMenuVisibleAlways(Z)V

    .line 534
    return-void
.end method

.method public setMenuWidth(I)V
    .locals 9
    .param p1, "i"    # I

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 740
    const-string/jumbo v8, "window"

    .line 739
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 742
    .local v1, "display":Landroid/view/Display;
    :try_start_0
    const-class v0, Landroid/view/Display;

    .line 743
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Point;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    .line 744
    .local v5, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 745
    .local v4, "parameter":Landroid/graphics/Point;
    const-string/jumbo v7, "getSize"

    invoke-virtual {v0, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 746
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v3, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget v6, v4, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "parameter":Landroid/graphics/Point;
    .end local v5    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v6, "width":I
    :goto_0
    sub-int v7, v6, p1

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/SlidingMenu;->setMenuOffset(I)V

    .line 737
    return-void

    .line 748
    .end local v6    # "width":I
    :catch_0
    move-exception v2

    .line 749
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v6

    .restart local v6    # "width":I
    goto :goto_0
.end method

.method public setMenuWidthRes(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 763
    .local v0, "i":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setMenuWidth(I)V

    .line 761
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 527
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 529
    const-string/jumbo v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    .line 528
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setMode(I)V

    .line 526
    return-void
.end method

.method public setOnCloseListener(Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/letv/leui/widget/SlidingMenu;->mCloseListener:Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;

    .line 1030
    return-void
.end method

.method public setOnClosedListener(Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setOnClosedListener(Lcom/letv/leui/widget/SlidingMenu$OnClosedListener;)V

    .line 1053
    return-void
.end method

.method public setOnMenuStateChangeListener(Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/letv/leui/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;

    .line 1063
    return-void
.end method

.method public setOnOpenListener(Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/letv/leui/widget/SlidingMenu;->mOpenListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    .line 1009
    return-void
.end method

.method public setOnOpenedListener(Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setOnOpenedListener(Lcom/letv/leui/widget/SlidingMenu$OnOpenedListener;)V

    .line 1042
    return-void
.end method

.method public setSecondaryMenu(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setSecondaryMenu(Landroid/view/View;)V

    .line 479
    return-void
.end method

.method public setSecondaryMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setSecondaryContent(Landroid/view/View;)V

    .line 488
    return-void
.end method

.method public setSecondaryOnOpenListner(Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/letv/leui/widget/SlidingMenu;->mSecondaryOpenListner:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    .line 1020
    return-void
.end method

.method public setSecondaryShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 877
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 876
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setSelectedView(Landroid/view/View;)V

    .line 953
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 972
    return-void
.end method

.method public setSelectorDrawable(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 963
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    .line 964
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 963
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewBehind;->setSelectorBitmap(Landroid/graphics/Bitmap;)V

    .line 962
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 944
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewBehind;->setSelectorEnabled(Z)V

    .line 943
    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 857
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 895
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setShadowWidth(I)V

    .line 894
    return-void
.end method

.method public setShadowWidthRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setShadowWidth(I)V

    .line 885
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 508
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setSlidingEnabled(Z)V

    .line 507
    return-void
.end method

.method public setStatic(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/4 v2, 0x1

    .line 554
    if-eqz p1, :cond_0

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->setSlidingEnabled(Z)V

    .line 556
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setCustomViewBehind(Lcom/letv/leui/widget/CustomViewBehind;)V

    .line 557
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 553
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 562
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewAbove;->setCustomViewBehind(Lcom/letv/leui/widget/CustomViewBehind;)V

    .line 563
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method public setTouchModeAbove(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 816
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 817
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 819
    const-string/jumbo v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    .line 818
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setTouchMode(I)V

    .line 815
    return-void
.end method

.method public setTouchModeBehind(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 834
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 835
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 837
    const-string/jumbo v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    .line 836
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewBehind:Lcom/letv/leui/widget/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/CustomViewBehind;->setTouchMode(I)V

    .line 833
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .param p1, "activityManager"    # Landroid/app/LocalActivityManager;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/letv/leui/widget/SlidingMenu;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 344
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->showContent(Z)V

    .line 604
    return-void
.end method

.method public showContent(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 614
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 613
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->showMenu(Z)V

    .line 570
    return-void
.end method

.method public showMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 579
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->showSecondaryMenu(Z)V

    .line 587
    return-void
.end method

.method public showSecondaryMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 598
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu;->mViewAbove:Lcom/letv/leui/widget/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/letv/leui/widget/CustomViewAbove;->setCurrentItem(IZ)V

    .line 597
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/SlidingMenu;->toggle(Z)V

    .line 620
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/letv/leui/widget/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/SlidingMenu;->showContent(Z)V

    .line 629
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/SlidingMenu;->showMenu(Z)V

    goto :goto_0
.end method
