.class public Lcom/letv/leui/widget/slide/LeSlideLayout;
.super Landroid/widget/FrameLayout;
.source "LeSlideLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;,
        Lcom/letv/leui/widget/slide/LeSlideLayout$1;
    }
.end annotation


# static fields
.field private static final MIN_FLING_VELOCITY:I = 0x190


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBgActivityRootView:Landroid/view/View;

.field private mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

.field private mDecorView:Landroid/view/View;

.field private mDimView:Landroid/view/View;

.field private mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

.field private mEdgePosition:I

.field private mEnableSlideToOpen:Z

.field private mGlobalField:Ljava/lang/reflect/Field;

.field private mIsEdgeTouched:Z

.field private mIsInitialize:Z

.field private mIsLocked:Z

.field private mLeftCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

.field private mListener:Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

.field private mParallaxOffset:F

.field private mRootField:Ljava/lang/reflect/Field;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShadowsHeight:F

.field private mViewField:Ljava/lang/reflect/Field;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideConfig;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    return-object v0
.end method

.method static synthetic -get10(Lcom/letv/leui/widget/slide/LeSlideLayout;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mParallaxOffset:F

    return v0
.end method

.method static synthetic -get11(Lcom/letv/leui/widget/slide/LeSlideLayout;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    return v0
.end method

.method static synthetic -get12(Lcom/letv/leui/widget/slide/LeSlideLayout;)F
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mShadowsHeight:F

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeViewDragHelper;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/slide/LeSlideLayout;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEdgePosition:I

    return v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEnableSlideToOpen:Z

    return v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsEdgeTouched:Z

    return v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsInitialize:Z

    return v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mListener:Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/slide/LeSlideLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/slide/LeSlideLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsInitialize:Z

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/slide/LeSlideLayout;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenHeight:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getBelowRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->recyleDimBg()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setDimBackground()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string/jumbo v0, "LeSlideLayout"

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->TAG:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    .line 35
    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsEdgeTouched:Z

    .line 255
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/slide/LeSlideLayout$1;-><init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mLeftCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .line 66
    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->build()Lcom/letv/leui/widget/slide/LeSlideConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    .line 68
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/letv/leui/widget/slide/LeSlideConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/view/View;
    .param p3, "config"    # Lcom/letv/leui/widget/slide/LeSlideConfig;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string/jumbo v0, "LeSlideLayout"

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->TAG:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    .line 35
    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsEdgeTouched:Z

    .line 255
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlideLayout$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/slide/LeSlideLayout$1;-><init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mLeftCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .line 73
    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    .line 74
    iput-object p3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    .line 75
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->init()V

    .line 71
    return-void
.end method

.method private canDragFromEdge(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 224
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 226
    .local v1, "y":F
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getEdgeSize(F)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 447
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBelowRootView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 355
    const/4 v1, 0x0

    .line 358
    .local v1, "decorView":Landroid/view/View;
    :try_start_0
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mGlobalField:Ljava/lang/reflect/Field;

    if-nez v8, :cond_0

    .line 359
    const-string/jumbo v8, "android.view.WindowManagerImpl"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "mGlobal"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mGlobalField:Ljava/lang/reflect/Field;

    .line 360
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mGlobalField:Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 363
    :cond_0
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mRootField:Ljava/lang/reflect/Field;

    if-nez v8, :cond_1

    .line 364
    const-string/jumbo v8, "android.view.WindowManagerGlobal"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "mRoots"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mRootField:Ljava/lang/reflect/Field;

    .line 365
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mRootField:Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 369
    .local v7, "wm":Landroid/view/WindowManager;
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mGlobalField:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, "global":Ljava/lang/Object;
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mRootField:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 372
    .local v5, "roots":Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v10, :cond_4

    .line 373
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    if-nez v8, :cond_2

    .line 374
    const-string/jumbo v8, "android.view.ViewRootImpl"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "mView"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    .line 375
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 377
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 378
    .local v6, "view":Ljava/lang/Object;
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 379
    .local v1, "decorView":Landroid/view/View;
    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isDiscardView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 380
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_3

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isDiscardView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 381
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 382
    iget-object v8, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 380
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 384
    :cond_3
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isDiscardView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 385
    const/4 v1, 0x0

    .line 392
    .end local v1    # "decorView":Landroid/view/View;
    .end local v3    # "global":Ljava/lang/Object;
    .end local v4    # "i":I
    .end local v5    # "roots":Ljava/util/ArrayList;
    .end local v6    # "view":Ljava/lang/Object;
    .end local v7    # "wm":Landroid/view/WindowManager;
    :cond_4
    :goto_1
    return-object v1

    .line 389
    :catch_0
    move-exception v2

    .line 390
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 91
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 92
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 93
    .local v5, "theme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010031

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 94
    iget v1, v4, Landroid/util/TypedValue;->data:I

    .line 95
    .local v1, "colorBackground":I
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    .end local v1    # "colorBackground":I
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    .line 100
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 101
    .local v2, "density":F
    const/high16 v6, 0x43c80000    # 400.0f

    mul-float v3, v6, v2

    .line 103
    .local v3, "minVel":F
    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v2

    iput v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mShadowsHeight:F

    .line 105
    iget v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mParallaxOffset:F

    .line 107
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mLeftCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .line 108
    .local v0, "callback":Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;
    iput v7, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEdgePosition:I

    .line 111
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v6}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getSensitivity()F

    move-result v6

    invoke-static {p0, v6, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)Lcom/letv/leui/widget/slide/LeViewDragHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    .line 112
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v6, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setMinVelocity(F)V

    .line 113
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    iget v7, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEdgePosition:I

    invoke-virtual {v6, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 115
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setMotionEventSplittingEnabled(Z)V

    .line 118
    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    .line 123
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeSlideLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v6, Lcom/letv/leui/widget/slide/LeSlideLayout$2;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/slide/LeSlideLayout$2;-><init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeSlideLayout;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method private isDiscardView(Landroid/view/View;)Z
    .locals 4
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v0

    .line 398
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 399
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 398
    goto :goto_0
.end method

.method private recyleDimBg()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    if-nez v2, :cond_0

    return-void

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 430
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 431
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 433
    :try_start_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private setDimBackground()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 402
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    if-nez v4, :cond_0

    return-void

    .line 404
    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenHeight:I

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v3

    .line 406
    .local v3, "width":I
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    .line 407
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 408
    iget v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenHeight:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 406
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 409
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenHeight:I

    invoke-virtual {v4, v7, v7, v3, v5}, Landroid/view/View;->layout(IIII)V

    .line 411
    .end local v3    # "width":I
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 412
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 411
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 414
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 415
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 416
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->postInvalidateOnAnimation()V

    .line 199
    :cond_0
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 142
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 421
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowVisibilityChanged(I)V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->recyleDimBg()V

    .line 420
    :cond_0
    return-void
.end method

.method public isSliding()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->getViewDragState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    .line 211
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->abort()V

    .line 209
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 230
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    .line 231
    .local v0, "settleLeft":I
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v4}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getSlideDuration()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->settleViewAt(Landroid/view/View;III)Z

    .line 232
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->invalidate()V

    .line 229
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    if-eqz v3, :cond_0

    .line 152
    return v2

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlideConfig;->isEdgeOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->canDragFromEdge(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsEdgeTouched:Z

    .line 160
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    return v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, "interceptForDrag":Z
    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "interceptForDrag":Z
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "oldLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isSliding()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 189
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 190
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isSliding()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v1, v2

    .line 192
    .local v0, "offset":I
    if-lez v0, :cond_1

    .line 193
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 184
    .end local v0    # "offset":I
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    if-eqz v1, :cond_0

    .line 171
    return v2

    .line 175
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v1, 0x1

    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v2
.end method

.method public setEnableSlideToOpen(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEnableSlideToOpen:Z

    .line 238
    return-void
.end method

.method public setInitializeState()V
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsInitialize:Z

    .line 450
    return-void
.end method

.method public setOnPanelSlideListener(Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mListener:Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    .line 82
    return-void
.end method

.method public slideToOpen()V
    .locals 5

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getBelowRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mShadowsHeight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getSlideDuration()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->slideView(Landroid/view/View;III)Z

    .line 242
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    .line 219
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->abort()V

    .line 217
    return-void
.end method
