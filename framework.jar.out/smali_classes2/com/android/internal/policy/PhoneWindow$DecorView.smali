.class final Lcom/android/internal/policy/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;
    }
.end annotation


# instance fields
.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastRightInset:I

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field private mLeFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mRootScrollY:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field private final mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method static synthetic -get0(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/policy/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 1
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupLeFloatingActionModeViews()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/policy/PhoneWindow$DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V
    .locals 9
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v8, 0x0

    .line 2296
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    .line 2297
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2231
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2240
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2242
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2265
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    .line 2269
    const-string/jumbo v5, "android:status:background"

    .line 2266
    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    .line 2267
    const/16 v3, 0x30

    .line 2268
    const/4 v4, 0x3

    .line 2270
    const v6, 0x102002f

    .line 2271
    const/16 v7, 0x400

    .line 2265
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    .line 2272
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    .line 2276
    const-string/jumbo v5, "android:navigation:background"

    .line 2273
    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    .line 2274
    const/16 v3, 0x50

    .line 2275
    const/4 v4, 0x5

    .line 2277
    const v6, 0x1020030

    move v7, v8

    .line 2272
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    .line 2284
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 2286
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2287
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2288
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2289
    iput-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 2290
    iput-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 2291
    iput-boolean v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    .line 2292
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 2294
    iput v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    .line 2298
    iput p3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    .line 2301
    const v0, 0x10c000e

    .line 2300
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 2303
    const v0, 0x10c000f

    .line 2302
    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 2305
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2306
    const v1, 0x10e00b7

    .line 2305
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    .line 2296
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2868
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v0, :cond_0

    .line 2869
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 2870
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 2872
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2873
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 2874
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2875
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2874
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2876
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 2878
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 2867
    :cond_2
    return-void
.end method

.method private cleanupLeFloatingActionModeViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3638
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLeFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    if-eqz v0, :cond_0

    .line 3639
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLeFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->dismiss()V

    .line 3640
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLeFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    .line 3642
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3643
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 3644
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3645
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3644
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3646
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3648
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 3637
    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2858
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2859
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2860
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 2862
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 2863
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2857
    :cond_1
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .prologue
    .line 3421
    packed-switch p1, :pswitch_data_0

    .line 3424
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 3426
    :pswitch_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 3429
    :pswitch_1
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createLeFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 3421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .prologue
    .line 3579
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 3580
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 3582
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    .line 3584
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V

    .line 3585
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 3587
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView$4;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    .line 3586
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3594
    return-object v0
.end method

.method private createLeFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .prologue
    .line 3610
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 3611
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 3613
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupFloatingActionModeViews()V

    .line 3615
    new-instance v0, Landroid/widget/Editor$LeTextActionModelImpl;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Landroid/widget/Editor$LeTextActionModelImpl;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V

    .line 3616
    .local v0, "mode":Landroid/widget/Editor$LeTextActionModelImpl;
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 3618
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$5;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView$5;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/widget/Editor$LeTextActionModelImpl;)V

    .line 3617
    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3625
    return-object v0
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 12
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 3448
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    .line 3449
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupPrimaryActionMode()V

    .line 3450
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v7, :cond_0

    .line 3451
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3453
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 3454
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 3455
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v7, 0x1010431

    invoke-virtual {v2, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3458
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_1

    .line 3459
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 3460
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 3461
    iget v7, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 3463
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3464
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 3469
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    new-instance v7, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v7, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3470
    new-instance v7, Landroid/widget/PopupWindow;

    .line 3471
    const v10, 0x1160020

    .line 3470
    invoke-direct {v7, v0, v11, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3472
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3473
    const/4 v10, 0x2

    .line 3472
    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3474
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3475
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3477
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 3478
    const v10, 0x10102eb

    .line 3477
    invoke-virtual {v7, v10, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3479
    iget v7, v5, Landroid/util/TypedValue;->data:I

    .line 3480
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 3479
    invoke-static {v7, v10}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 3481
    .local v3, "height":I
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 3482
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    const/4 v10, -0x2

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3483
    new-instance v7, Lcom/android/internal/policy/PhoneWindow$DecorView$2;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 3524
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "height":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_4

    .line 3525
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 3526
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    .line 3527
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3528
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-nez v7, :cond_3

    move v7, v8

    .line 3526
    :goto_2
    invoke-direct {v4, v10, v11, p1, v7}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 3529
    .local v4, "mode":Landroid/view/ActionMode;
    return-object v4

    .line 3466
    .end local v4    # "mode":Landroid/view/ActionMode;
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto :goto_0

    .line 3518
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_2
    const v7, 0x10204f0

    .line 3517
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 3519
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_0

    .line 3520
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_1

    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_3
    move v7, v9

    .line 3528
    goto :goto_2

    .line 3531
    :cond_4
    return-object v11
.end method

.method private drawableChanged()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 3235
    iget-boolean v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_0

    .line 3236
    return-void

    .line 3239
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 3240
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 3239
    add-int/2addr v6, v7

    .line 3240
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 3241
    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    .line 3239
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setPadding(IIII)V

    .line 3242
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestLayout()V

    .line 3243
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->invalidate()V

    .line 3245
    const/4 v4, -0x1

    .line 3251
    .local v4, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3252
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3253
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 3254
    if-nez v2, :cond_3

    .line 3255
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 3288
    :cond_1
    :goto_0
    iput v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 3289
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_2

    .line 3290
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v5, v4}, Lcom/android/internal/policy/PhoneWindow;->-wrap6(Lcom/android/internal/policy/PhoneWindow;I)V

    .line 3234
    :cond_2
    return-void

    .line 3256
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_8

    .line 3257
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_8

    .line 3260
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 3261
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 3264
    .local v1, "bop":I
    if-eq v3, v10, :cond_4

    if-ne v1, v10, :cond_5

    .line 3265
    :cond_4
    const/4 v4, -0x1

    .line 3264
    goto :goto_0

    .line 3266
    :cond_5
    if-nez v3, :cond_6

    .line 3267
    move v4, v1

    goto :goto_0

    .line 3268
    :cond_6
    if-nez v1, :cond_7

    .line 3269
    move v4, v3

    goto :goto_0

    .line 3271
    :cond_7
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_0

    .line 3279
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_8
    const/4 v4, -0x3

    goto :goto_0
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    .prologue
    .line 3535
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3536
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 3534
    :cond_0
    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x5

    .line 2468
    if-lt p1, v1, :cond_0

    if-ge p2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-gt p1, v1, :cond_0

    .line 2469
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-gt p2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 3435
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 3436
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    .line 3434
    :cond_0
    :goto_0
    return-void

    .line 3437
    :cond_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3438
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 3441
    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3442
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledLeFloatingActionMode(Landroid/view/ActionMode;)V

    goto :goto_0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 3598
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 3599
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 3600
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/FloatingActionMode;->setFloatingToolbar(Lcom/android/internal/widget/FloatingToolbar;)V

    .line 3601
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 3602
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3603
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3602
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3597
    return-void
.end method

.method private setHandledLeFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 3629
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 3630
    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/text/LeFloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLeFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    .line 3631
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    check-cast v0, Landroid/widget/Editor$LeTextActionModelImpl;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLeFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$LeTextActionModelImpl;->setFloatingToolbar(Lcom/letv/leui/text/LeFloatingToolbar;)V

    .line 3632
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 3633
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3634
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 3633
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3628
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 3541
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->endOnGoingFadeAnimation()V

    .line 3542
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 3543
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 3544
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 3545
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3546
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 3573
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 3574
    const/16 v1, 0x20

    .line 3573
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 3540
    return-void

    .line 3548
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 3549
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow$DecorView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$DecorView$3;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3571
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 3548
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 6
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 2805
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v3, p0, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 2806
    .local v3, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    const/4 v2, 0x0

    .line 2807
    .local v2, "mode":Landroid/view/ActionMode;
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2821
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_0
    :goto_0
    if-eqz v2, :cond_8

    .line 2822
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    move-result v4

    if-nez v4, :cond_4

    .line 2823
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->cleanupPrimaryActionMode()V

    .line 2824
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 2847
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2854
    :cond_2
    :goto_2
    return-object v2

    .line 2809
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v4, v3, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_0

    .line 2810
    .local v2, "mode":Landroid/view/ActionMode;
    :catch_0
    move-exception v0

    .line 2812
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    if-nez p3, :cond_0

    .line 2814
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_0

    .line 2825
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_4
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 2826
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_5

    .line 2827
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 2829
    :cond_5
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 2832
    :cond_6
    invoke-virtual {v2}, Landroid/view/ActionMode;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 2833
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_7

    .line 2834
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 2836
    :cond_7
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 2840
    :cond_8
    invoke-direct {p0, p3, v3, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object v2

    .line 2841
    .restart local v2    # "mode":Landroid/view/ActionMode;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2842
    invoke-direct {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    goto :goto_1

    .line 2844
    :cond_9
    const/4 v2, 0x0

    .local v2, "mode":Landroid/view/ActionMode;
    goto :goto_1

    .line 2849
    .end local v2    # "mode":Landroid/view/ActionMode;
    :cond_a
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2850
    :catch_1
    move-exception v0

    .restart local v0    # "ame":Ljava/lang/AbstractMethodError;
    goto :goto_2

    .line 2815
    .restart local v2    # "mode":Landroid/view/ActionMode;
    :catch_2
    move-exception v1

    .local v1, "ame2":Ljava/lang/AbstractMethodError;
    goto/16 :goto_0
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V
    .locals 14
    .param p1, "state"    # Lcom/android/internal/policy/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "rightMargin"    # I
    .param p7, "animate"    # Z

    .prologue
    .line 3048
    if-lez p4, :cond_4

    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    and-int v10, v10, p2

    if-nez v10, :cond_4

    .line 3049
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->hideWindowFlag:I

    and-int/2addr v10, v11

    if-nez v10, :cond_4

    .line 3050
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, -0x80000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    .line 3048
    :goto_0
    iput-boolean v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    .line 3051
    iget-boolean v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    if-eqz v10, :cond_6

    .line 3052
    const/high16 v10, -0x1000000

    and-int v10, v10, p3

    if-eqz v10, :cond_6

    .line 3053
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v11, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->translucentFlag:I

    and-int/2addr v10, v11

    if-nez v10, :cond_5

    const/4 v6, 0x1

    .line 3055
    .local v6, "show":Z
    :goto_1
    const/4 v9, 0x0

    .line 3056
    .local v9, "visibilityChanged":Z
    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 3058
    .local v7, "view":Landroid/view/View;
    if-eqz p5, :cond_7

    const/4 v4, -0x1

    .line 3059
    .local v4, "resolvedHeight":I
    :goto_2
    if-eqz p5, :cond_8

    move/from16 v5, p4

    .line 3060
    .local v5, "resolvedWidth":I
    :goto_3
    if-eqz p5, :cond_9

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->horizontalGravity:I

    .line 3062
    .local v3, "resolvedGravity":I
    :goto_4
    if-nez v7, :cond_a

    .line 3063
    if-eqz v6, :cond_0

    .line 3064
    new-instance v7, Landroid/view/View;

    .end local v7    # "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v7    # "view":Landroid/view/View;
    iput-object v7, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 3065
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3066
    iget-object v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 3067
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->id:I

    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 3068
    const/4 v9, 0x1

    .line 3069
    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3070
    const/4 v10, 0x0

    iput v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 3072
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3074
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3075
    invoke-virtual {p0, v7, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3076
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 3095
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_5
    if-eqz v9, :cond_2

    .line 3096
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3097
    if-eqz p7, :cond_11

    .line 3098
    if-eqz v6, :cond_10

    .line 3099
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1

    .line 3100
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3101
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3103
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 3104
    iget v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v12, v11

    .line 3103
    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3047
    :cond_2
    :goto_6
    return-void

    .line 3050
    .end local v3    # "resolvedGravity":I
    .end local v4    # "resolvedHeight":I
    .end local v5    # "resolvedWidth":I
    .end local v6    # "show":Z
    .end local v7    # "view":Landroid/view/View;
    .end local v9    # "visibilityChanged":Z
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3048
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 3053
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "show":Z
    goto :goto_1

    .line 3051
    .end local v6    # "show":Z
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "show":Z
    goto :goto_1

    .line 3058
    .restart local v7    # "view":Landroid/view/View;
    .restart local v9    # "visibilityChanged":Z
    :cond_7
    move/from16 v4, p4

    .restart local v4    # "resolvedHeight":I
    goto :goto_2

    .line 3059
    :cond_8
    const/4 v5, -0x1

    .restart local v5    # "resolvedWidth":I
    goto :goto_3

    .line 3060
    :cond_9
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->verticalGravity:I

    .restart local v3    # "resolvedGravity":I
    goto :goto_4

    .line 3079
    :cond_a
    if-eqz v6, :cond_d

    const/4 v8, 0x0

    .line 3080
    .local v8, "vis":I
    :goto_7
    iget v10, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    if-eq v10, v8, :cond_e

    const/4 v9, 0x1

    .line 3081
    :goto_8
    iput v8, p1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 3082
    if-eqz v6, :cond_0

    .line 3083
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 3084
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v10, v4, :cond_b

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v10, v5, :cond_f

    .line 3086
    :cond_b
    :goto_9
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3087
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3088
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3089
    move/from16 v0, p6

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3090
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3092
    :cond_c
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    .line 3079
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "vis":I
    :cond_d
    const/4 v8, 0x4

    .restart local v8    # "vis":I
    goto :goto_7

    .line 3080
    :cond_e
    const/4 v9, 0x0

    goto :goto_8

    .line 3085
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_f
    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v10, v3, :cond_b

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v0, p6

    if-eq v10, v0, :cond_c

    goto :goto_9

    .line 3106
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "vis":I
    :cond_10
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 3107
    iget v11, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v12, v11

    .line 3106
    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    .line 3108
    new-instance v11, Lcom/android/internal/policy/PhoneWindow$DecorView$1;

    invoke-direct {v11, p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow$ColorViewState;)V

    .line 3106
    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_6

    .line 3117
    :cond_11
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10}, Landroid/view/View;->setAlpha(F)V

    .line 3118
    if-eqz v6, :cond_12

    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_12
    const/4 v10, 0x4

    goto :goto_a
.end method

.method private updateColorViewTranslations()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3126
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3127
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3128
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_2

    move v1, v0

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3130
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3131
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_3

    .end local v0    # "rootScrollY":I
    :goto_1
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3123
    :cond_1
    return-void

    .restart local v0    # "rootScrollY":I
    :cond_2
    move v1, v2

    .line 3128
    goto :goto_0

    :cond_3
    move v0, v2

    .line 3131
    goto :goto_1
.end method

.method private updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 26
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    .line 2946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 2947
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowSystemUiVisibility()I

    move-result v3

    or-int v4, v2, v3

    .line 2949
    .local v4, "sysUiVisibility":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get8(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2950
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v20, 0x0

    .line 2951
    .local v20, "disallowAnimate":Z
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v2, v3

    .line 2952
    const/high16 v3, -0x80000000

    .line 2951
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_1
    or-int v20, v20, v2

    .line 2953
    .local v20, "disallowAnimate":Z
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 2955
    if-eqz p1, :cond_0

    .line 2956
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 2957
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 2956
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2958
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    .line 2959
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 2958
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2960
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    .line 2961
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 2960
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2966
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v23, 0x1

    .line 2967
    .local v23, "hasTopStableInset":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    move/from16 v0, v23

    if-eq v0, v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    or-int v20, v20, v2

    .line 2968
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 2970
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    if-eqz v2, :cond_c

    const/16 v21, 0x1

    .line 2971
    .local v21, "hasBottomStableInset":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    move/from16 v0, v21

    if-eq v0, v2, :cond_d

    const/4 v2, 0x1

    :goto_5
    or-int v20, v20, v2

    .line 2972
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 2974
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    if-eqz v2, :cond_e

    const/16 v22, 0x1

    .line 2975
    .local v22, "hasRightStableInset":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    move/from16 v0, v22

    if-eq v0, v2, :cond_f

    const/4 v2, 0x1

    :goto_7
    or-int v20, v20, v2

    .line 2976
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    .line 2979
    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    if-lez v2, :cond_10

    const/4 v7, 0x1

    .line 2980
    .local v7, "navBarToRightEdge":Z
    :goto_8
    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2981
    .local v6, "navBarSize":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get9(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    .line 2983
    if-eqz p2, :cond_1

    if-eqz v20, :cond_12

    :cond_1
    const/4 v9, 0x0

    .line 2982
    :goto_a
    const/4 v8, 0x0

    move-object/from16 v2, p0

    .line 2981
    invoke-direct/range {v2 .. v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    .line 2985
    if-eqz v7, :cond_13

    .line 2986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-boolean v0, v2, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    move/from16 v25, v0

    .line 2987
    :goto_b
    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2988
    .local v14, "statusBarRightInset":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get13(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v11

    .line 2989
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2990
    if-eqz p2, :cond_2

    if-eqz v20, :cond_15

    :cond_2
    const/4 v15, 0x0

    .line 2989
    :goto_d
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move v10, v4

    .line 2988
    invoke-direct/range {v8 .. v15}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V

    .line 2998
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v14    # "statusBarRightInset":I
    .end local v20    # "disallowAnimate":Z
    :cond_3
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_17

    .line 2999
    and-int/lit16 v2, v4, 0x200

    if-nez v2, :cond_17

    .line 3000
    and-int/lit8 v2, v4, 0x2

    if-nez v2, :cond_16

    const/16 v19, 0x1

    .line 3002
    .local v19, "consumingNavBar":Z
    :goto_e
    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastRightInset:I

    move/from16 v18, v0

    .line 3003
    .local v18, "consumedRight":I
    :goto_f
    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    move/from16 v17, v0

    .line 3005
    .local v17, "consumedBottom":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get3(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get3(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3005
    if-eqz v2, :cond_6

    .line 3007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get3(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3008
    .local v24, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v24

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_4

    move-object/from16 v0, v24

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v0, v17

    if-eq v2, v0, :cond_5

    .line 3009
    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3010
    move/from16 v0, v17

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get3(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3013
    if-nez p1, :cond_5

    .line 3016
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->requestApplyInsets()V

    .line 3019
    :cond_5
    if-eqz p1, :cond_6

    .line 3021
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 3022
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 3023
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    sub-int v5, v5, v18

    .line 3024
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v8

    sub-int v8, v8, v17

    .line 3020
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v8}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3028
    .end local v24    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    if-eqz p1, :cond_7

    .line 3029
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 3031
    :cond_7
    return-object p1

    .line 2950
    .end local v17    # "consumedBottom":I
    .end local v18    # "consumedRight":I
    .end local v19    # "consumingNavBar":Z
    :cond_8
    const/16 v20, 0x1

    .local v20, "disallowAnimate":Z
    goto/16 :goto_0

    .line 2951
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 2966
    .local v20, "disallowAnimate":Z
    :cond_a
    const/16 v23, 0x0

    .restart local v23    # "hasTopStableInset":Z
    goto/16 :goto_2

    .line 2967
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2970
    :cond_c
    const/16 v21, 0x0

    .restart local v21    # "hasBottomStableInset":Z
    goto/16 :goto_4

    .line 2971
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 2974
    :cond_e
    const/16 v22, 0x0

    .restart local v22    # "hasRightStableInset":Z
    goto/16 :goto_6

    .line 2975
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 2979
    .end local v21    # "hasBottomStableInset":Z
    .end local v22    # "hasRightStableInset":Z
    .end local v23    # "hasTopStableInset":Z
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "navBarToRightEdge":Z
    goto/16 :goto_8

    .line 2980
    :cond_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mLastBottomInset:I

    .restart local v6    # "navBarSize":I
    goto/16 :goto_9

    .line 2983
    :cond_12
    const/4 v9, 0x1

    goto/16 :goto_a

    .line 2985
    :cond_13
    const/16 v25, 0x0

    .local v25, "statusBarNeedsRightInset":Z
    goto/16 :goto_b

    .line 2987
    .end local v25    # "statusBarNeedsRightInset":Z
    :cond_14
    const/4 v14, 0x0

    .restart local v14    # "statusBarRightInset":I
    goto/16 :goto_c

    .line 2990
    :cond_15
    const/4 v15, 0x1

    goto/16 :goto_d

    .line 3000
    .end local v6    # "navBarSize":I
    .end local v7    # "navBarToRightEdge":Z
    .end local v14    # "statusBarRightInset":I
    .end local v20    # "disallowAnimate":Z
    :cond_16
    const/16 v19, 0x0

    .restart local v19    # "consumingNavBar":Z
    goto/16 :goto_e

    .line 2998
    .end local v19    # "consumingNavBar":Z
    :cond_17
    const/16 v19, 0x0

    .restart local v19    # "consumingNavBar":Z
    goto/16 :goto_e

    .line 3002
    :cond_18
    const/16 v18, 0x0

    .restart local v18    # "consumedRight":I
    goto/16 :goto_f

    .line 3003
    :cond_19
    const/16 v17, 0x0

    .restart local v17    # "consumedBottom":I
    goto/16 :goto_10
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3207
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_1

    .line 3209
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3210
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 3212
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3213
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3214
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3218
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    if-nez v2, :cond_2

    .line 3219
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    .line 3220
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .line 3221
    const v4, 0x1060032

    .line 3220
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3222
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 3223
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 3224
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    .line 3223
    const/4 v6, -0x1

    .line 3225
    const v7, 0x800053

    .line 3223
    invoke-direct {v4, v6, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3222
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3205
    :cond_1
    :goto_0
    return-void

    .line 3227
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3228
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3229
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 14
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v8, 0x0

    .line 3136
    const/4 v6, 0x0

    .line 3138
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 3139
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_3

    .line 3142
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3141
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3143
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .line 3144
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3145
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->-get14(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    .line 3146
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v7, v9}, Lcom/android/internal/policy/PhoneWindow;->-set4(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3148
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->-get14(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3152
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 3153
    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 3154
    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v3, :cond_1

    .line 3155
    const/4 v2, 0x1

    .line 3156
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3158
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_6

    .line 3159
    new-instance v7, Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    .line 3160
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .line 3161
    const v10, 0x1060032

    .line 3160
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3162
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v9, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    iget-object v9, v9, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 3163
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 3164
    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3163
    const/4 v12, -0x1

    .line 3164
    const v13, 0x800033

    .line 3163
    invoke-direct {v10, v12, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 3162
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3177
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    .line 3183
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v7}, Lcom/android/internal/policy/PhoneWindow;->-wrap2(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_8

    const/4 v4, 0x1

    .line 3186
    .local v4, "nonOverlay":Z
    :goto_3
    if-eqz v4, :cond_9

    move v7, v6

    .line 3185
    :goto_4
    invoke-virtual {p1, v8, v7, v8, v8}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3194
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 3195
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3199
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 3200
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_b

    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3202
    :cond_4
    return-object p1

    .line 3153
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "newMargin":I
    goto :goto_0

    .line 3167
    :cond_6
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3166
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3168
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v9, :cond_1

    .line 3169
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3170
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3177
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 3183
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "nonOverlay":Z
    goto :goto_3

    :cond_9
    move v7, v8

    .line 3186
    goto :goto_4

    .line 3189
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_2

    .line 3190
    const/4 v2, 0x1

    .line 3191
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    .line 3200
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_b
    const/16 v8, 0x8

    goto :goto_6
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 2752
    invoke-static {}, Lcom/android/internal/policy/PhoneWindow;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2753
    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 2755
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2751
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2425
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2426
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2427
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2426
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2323
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2324
    .local v0, "action":I
    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 2326
    .local v3, "isDown":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 2329
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->-get11(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->-get11(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 2330
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2331
    .local v2, "handled":Z
    if-eqz v2, :cond_1

    .line 2332
    return v8

    .line 2324
    .end local v2    # "handled":Z
    .end local v3    # "isDown":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isDown":Z
    goto :goto_0

    .line 2338
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v5}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_2

    .line 2339
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v6}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-static {v5, v6, v4, p1, v7}, Lcom/android/internal/policy/PhoneWindow;->-wrap0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2340
    return v8

    .line 2345
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2346
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2347
    .local v1, "cb":Landroid/view/Window$Callback;
    invoke-static {}, Lcom/android/internal/policy/PhoneWindow;->-get0()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2348
    const-string/jumbo v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dispatchKeyEvent+ = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", cb = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mFeatureId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2349
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    .line 2348
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :cond_3
    if-eqz v1, :cond_5

    iget v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_5

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2353
    .restart local v2    # "handled":Z
    :goto_1
    invoke-static {}, Lcom/android/internal/policy/PhoneWindow;->-get0()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2354
    const-string/jumbo v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dispatchKeyEvent- = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", handled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    :cond_4
    if-eqz v2, :cond_6

    .line 2357
    return v8

    .line 2352
    .end local v2    # "handled":Z
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .restart local v2    # "handled":Z
    goto :goto_1

    .line 2361
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "handled":Z
    :cond_6
    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_2
    return v5

    .line 2362
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2369
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2370
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v3, v4, v5, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->-wrap0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2372
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    .line 2373
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2374
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 2376
    :cond_0
    return v6

    .line 2381
    .end local v1    # "handled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2382
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2383
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2384
    .restart local v1    # "handled":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 2385
    return v6

    .line 2382
    .end local v1    # "handled":Z
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v3, :cond_2

    .line 2383
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .restart local v1    # "handled":Z
    goto :goto_0

    .line 2392
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v3, v7, v7}, Lcom/android/internal/policy/PhoneWindow;->-wrap1(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2393
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v3}, Lcom/android/internal/policy/PhoneWindow;->-get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    if-nez v3, :cond_5

    .line 2394
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 2395
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v3, v2, v4, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->-wrap0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2397
    iput-boolean v7, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 2398
    if-eqz v1, :cond_5

    .line 2399
    return v6

    .line 2402
    :cond_5
    return v7
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2571
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2572
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2577
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 2573
    :cond_1
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2574
    const/4 v1, 0x1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2407
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2408
    .local v0, "cb":Landroid/view/Window$Callback;
    invoke-static {}, Lcom/android/internal/policy/PhoneWindow;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2409
    const-string/jumbo v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchTouchEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", destroyed? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2410
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    .line 2409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2410
    const-string/jumbo v3, ", mFeatureId = "

    .line 2409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2410
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    .line 2409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2413
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2412
    :goto_0
    return v1

    :cond_2
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2418
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2419
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2420
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2419
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2741
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2743
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2744
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2740
    :cond_0
    return-void
.end method

.method public finishChanging()V
    .locals 1

    .prologue
    .line 2887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    .line 2888
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    .line 2886
    return-void
.end method

.method public isTransitionGroup()Z
    .locals 1

    .prologue
    .line 2942
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2931
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2932
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2933
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    .line 2934
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2935
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    .line 2937
    :cond_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3325
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3327
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 3329
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3330
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3334
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3342
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-wrap5(Lcom/android/internal/policy/PhoneWindow;)V

    .line 3324
    :cond_1
    return-void

    .line 3330
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 3331
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    goto :goto_0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3379
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 3380
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 3378
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3348
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3350
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3351
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    .line 3352
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 3355
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get6(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3356
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get6(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 3359
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    .line 3360
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3361
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3362
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3364
    :cond_2
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 3366
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    if-eqz v2, :cond_4

    .line 3367
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 3368
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 3371
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2, v4, v4}, Lcom/android/internal/policy/PhoneWindow;->-wrap1(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3372
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_5

    .line 3373
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 3347
    :cond_5
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 2316
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2317
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get3(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v2}, Lcom/android/internal/policy/PhoneWindow;->-get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 2315
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 2474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2475
    .local v0, "action":I
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v3, :cond_0

    .line 2476
    if-nez v0, :cond_0

    .line 2477
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2478
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2479
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2480
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 2481
    const/4 v3, 0x1

    return v3

    .line 2487
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 2729
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2730
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getOutsets(Landroid/graphics/Rect;)V

    .line 2731
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->offsetLeftAndRight(I)V

    .line 2734
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_1

    .line 2735
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->offsetTopAndBottom(I)V

    .line 2728
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 2630
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    const/4 v7, 0x1

    .line 2632
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 2633
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 2635
    .local v5, "heightMode":I
    const/4 v2, 0x0

    .line 2636
    .local v2, "fixedWidth":Z
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 2637
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2638
    .local v14, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v14, :cond_0

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 2640
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 2641
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 2648
    .local v15, "w":I
    :goto_2
    if-lez v15, :cond_0

    .line 2649
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 2651
    .local v18, "widthSize":I
    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    .line 2650
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2652
    const/4 v2, 0x1

    .line 2657
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    .end local v18    # "widthSize":I
    :cond_0
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v5, v0, :cond_1

    .line 2658
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2659
    .local v13, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v13, :cond_1

    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2661
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 2662
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .line 2668
    .local v3, "h":I
    :goto_4
    if-lez v3, :cond_1

    .line 2669
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 2671
    .local v6, "heightSize":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    .line 2670
    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2676
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getOutsets(Landroid/graphics/Rect;)V

    .line 2677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    if-gtz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 2678
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 2679
    .local v11, "mode":I
    if-eqz v11, :cond_3

    .line 2680
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 2682
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 2681
    move/from16 v0, v19

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2685
    .end local v4    # "height":I
    .end local v11    # "mode":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    if-gtz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    if-lez v19, :cond_5

    .line 2686
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 2687
    .restart local v11    # "mode":I
    if-eqz v11, :cond_5

    .line 2688
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 2690
    .local v16, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/policy/PhoneWindow;->-get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v19, v19, v20

    .line 2689
    move/from16 v0, v19

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2694
    .end local v11    # "mode":I
    .end local v16    # "width":I
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2696
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v16

    .line 2697
    .restart local v16    # "width":I
    const/4 v8, 0x0

    .line 2699
    .local v8, "measure":Z
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2701
    if-nez v2, :cond_6

    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 2702
    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 2703
    .local v12, "tv":Landroid/util/TypedValue;
    :goto_5
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 2705
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 2706
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .line 2713
    .local v10, "min":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v10, :cond_6

    .line 2714
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2715
    const/4 v8, 0x1

    .line 2722
    .end local v10    # "min":I
    .end local v12    # "tv":Landroid/util/TypedValue;
    :cond_6
    if-eqz v8, :cond_7

    .line 2723
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2628
    :cond_7
    return-void

    .line 2630
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v16    # "width":I
    .end local v17    # "widthMode":I
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "isPortrait":Z
    goto/16 :goto_0

    .line 2637
    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v17    # "widthMode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .restart local v14    # "tvw":Landroid/util/TypedValue;
    goto/16 :goto_1

    .line 2642
    :cond_a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 2643
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .restart local v15    # "w":I
    goto/16 :goto_2

    .line 2645
    .end local v15    # "w":I
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "w":I
    goto/16 :goto_2

    .line 2658
    .end local v14    # "tvw":Landroid/util/TypedValue;
    .end local v15    # "w":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .restart local v13    # "tvh":Landroid/util/TypedValue;
    goto/16 :goto_3

    .line 2663
    :cond_d
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 2664
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v3, v0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 2666
    .end local v3    # "h":I
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 2702
    .end local v3    # "h":I
    .end local v13    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v16    # "width":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .restart local v12    # "tv":Landroid/util/TypedValue;
    goto/16 :goto_5

    .line 2707
    :cond_10
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 2708
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v19

    move/from16 v0, v19

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_6

    .line 2710
    .end local v10    # "min":I
    :cond_11
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_6
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "rootScrollY"    # I

    .prologue
    .line 3407
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3408
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 3406
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2464
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3296
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 3300
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_4

    .line 3304
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3305
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3309
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 3310
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 3312
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 3313
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 3295
    :cond_3
    return-void

    .line 3300
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get11(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3301
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    goto :goto_0

    .line 3305
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    .line 3306
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    goto :goto_1
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 2925
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2924
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    const/4 v2, 0x0

    .line 2551
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2552
    return-void

    .line 2558
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    .line 2559
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2562
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2563
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2550
    :goto_0
    return-void

    .line 2560
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 2561
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 2565
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2905
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2906
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2907
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2904
    :cond_0
    return-void
.end method

.method public setBackgroundFallback(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2310
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2311
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWillNotDraw(Z)V

    .line 2309
    return-void

    .line 2311
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2582
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 2583
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 2584
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2585
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2587
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2588
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 2589
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2590
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2591
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2592
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2593
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2594
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2595
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2596
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2597
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2598
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2599
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2602
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2603
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2604
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2606
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->invalidateOutline()V

    .line 2624
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method public setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 3397
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setFormat(I)V

    .line 3396
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 3401
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->addFlags(I)V

    .line 3400
    :goto_0
    return-void

    .line 3402
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->clearFlags(I)V

    goto :goto_0
.end method

.method public setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 3392
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 3414
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3415
    const-string/jumbo v0, "PhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DecorView setVisiblity: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3416
    const-string/jumbo v2, " ,Parent ="

    .line 3415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3416
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 3415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3416
    const-string/jumbo v2, ", this ="

    .line 3415
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2893
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2894
    if-eqz p1, :cond_1

    .line 2895
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2899
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    .line 2891
    :cond_0
    return-void

    .line 2897
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2912
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2913
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2914
    if-eqz p1, :cond_1

    .line 2915
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2919
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->drawableChanged()V

    .line 2911
    :cond_0
    return-void

    .line 2917
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 2761
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get4(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2762
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/android/internal/policy/PhoneWindow;->-set0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 2763
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get4(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2768
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get4(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    .line 2769
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2768
    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 2770
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_2

    .line 2771
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 2777
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->-set1(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2778
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 2765
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get4(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_0

    .line 2772
    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get5(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2775
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get5(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    goto :goto_1

    .line 2778
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2795
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 2800
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2784
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 2790
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .locals 1

    .prologue
    .line 2883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mChanging:Z

    .line 2882
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2459
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 2432
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2433
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2435
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 2436
    if-ne v0, v3, :cond_0

    .line 2437
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 2439
    :cond_0
    return v3

    .line 2443
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2447
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2451
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2455
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method updateWindowResizeState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3318
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3319
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    .line 3320
    const/4 v3, -0x1

    .line 3319
    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 3317
    return-void

    .line 3319
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .prologue
    .line 3389
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .prologue
    .line 3385
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
