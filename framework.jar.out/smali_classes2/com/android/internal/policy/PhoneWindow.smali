.class public Lcom/android/internal/policy/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;,
        Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/PhoneWindow$ColorViewState;,
        Lcom/android/internal/policy/PhoneWindow$1;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CUSTOM_TITLE_COMPATIBLE_FEATURES:I = 0x34c1

.field private static final DBG_APP_LAUNCH_ENHANCE:Z

.field private static final DBG_MOTION:Z

.field private static final DEBUG_TRANSPARENT_BACKGROUND:Z

.field private static final DEFAULT_BACKGROUND_FADE_DURATION_MS:I = 0x12c

.field static final FLAG_RESOURCE_SET_ICON:I = 0x1

.field static final FLAG_RESOURCE_SET_ICON_FALLBACK:I = 0x4

.field static final FLAG_RESOURCE_SET_LOGO:I = 0x2

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field static final sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

.field private mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field private mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundFadeDurationMillis:J

.field private mBackgroundFallbackResource:I

.field private mBackgroundResource:I

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClipToOutline:Z

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContentRoot:Landroid/view/ViewGroup;

.field private mContentScene:Landroid/transition/Scene;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field private mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

.field private mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mForcedNavigationBarColor:Z

.field private mForcedStatusBarColor:Z

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field mIconRes:I

.field private mInvalidatePanelMenuFeatures:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mIsFloating:Z

.field private mIsStartingWindow:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field mLogoRes:I

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mNavigationBarColor:I

.field private mOutsets:Landroid/graphics/Rect;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

.field private mReenterTransition:Landroid/transition/Transition;

.field mResourcesSetFlags:I

.field private mReturnTransition:Landroid/transition/Transition;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mSharedElementEnterTransition:Landroid/transition/Transition;

.field private mSharedElementExitTransition:Landroid/transition/Transition;

.field private mSharedElementReenterTransition:Landroid/transition/Transition;

.field private mSharedElementReturnTransition:Landroid/transition/Transition;

.field private mSharedElementsUseOverlay:Ljava/lang/Boolean;

.field private mStatusBarColor:I

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTransitionManager:Landroid/transition/TransitionManager;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/policy/PhoneWindow;->DBG_MOTION:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/policy/PhoneWindow;->DEBUG_TRANSPARENT_BACKGROUND:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/policy/PhoneWindow;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/policy/PhoneWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/policy/PhoneWindow;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/policy/PhoneWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/policy/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/policy/PhoneWindow;IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/policy/PhoneWindow;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/policy/PhoneWindow;ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/policy/PhoneWindow;I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    const-string/jumbo v2, "debug.view.motionlog"

    .line 143
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/policy/PhoneWindow;->DBG_MOTION:Z

    .line 147
    const-string/jumbo v2, "debug.phonewindow.transparentBG"

    .line 146
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/policy/PhoneWindow;->DEBUG_TRANSPARENT_BACKGROUND:Z

    .line 151
    const-string/jumbo v2, "ro.mtk_perf_simple_start_win"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 150
    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/PhoneWindow;->DBG_APP_LAUNCH_ENHANCE:Z

    .line 164
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 319
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    .line 138
    return-void

    :cond_0
    move v0, v1

    .line 151
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 322
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;I)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$DialogMenuCallback;

    .line 172
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 173
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 246
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 247
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 256
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 258
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 259
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 260
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 261
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 264
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 266
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 268
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 274
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 280
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 284
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/PhoneWindow$1;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 296
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 297
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 298
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 299
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 300
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 301
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 302
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 303
    sget-object v0, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 306
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mOutsets:Landroid/graphics/Rect;

    .line 323
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 321
    return-void
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "panel"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 4566
    .local v0, "cb":Landroid/view/Window$Callback;
    if-nez v0, :cond_0

    .line 4567
    return-void

    .line 4570
    :cond_0
    if-nez p3, :cond_2

    .line 4572
    if-nez p2, :cond_1

    .line 4573
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 4574
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 4578
    :cond_1
    if-eqz p2, :cond_2

    .line 4580
    iget-object p3, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 4585
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v1, p2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_5

    .line 4588
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4589
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4564
    :cond_4
    return-void

    .line 4586
    :cond_5
    return-void
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .param p0, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 688
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 678
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1090
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 1092
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1089
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1101
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1103
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1100
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 4475
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 4476
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    .line 4478
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4479
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 4481
    :cond_1
    const v0, 0x10204f3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 4482
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 4483
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4485
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4307
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 4308
    if-nez p2, :cond_0

    .line 4309
    return-object v5

    .line 4311
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4315
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-gt v3, p1, :cond_4

    .line 4316
    :cond_2
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 4317
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    .line 4318
    array-length v3, v0

    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4320
    :cond_3
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .line 4323
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_4
    aget-object v2, v0, p1

    .line 4324
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_5

    .line 4325
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    .line 4327
    :cond_5
    return-object v2
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .param p1, "shouldInstallDecor"    # Z

    .prologue
    .line 4489
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 4490
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    .line 4492
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 4493
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 4495
    :cond_1
    const v0, 0x10204f4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 4496
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 4497
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4499
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 1885
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1886
    const-string/jumbo v1, "keyguard"

    .line 1885
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 4457
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4458
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0

    .line 4460
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 4461
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 4463
    :cond_1
    const v0, 0x102003e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getOptionsPanelGravity()I
    .locals 3

    .prologue
    .line 1324
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneWindow"

    const-string/jumbo v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1327
    const/16 v1, 0x51

    return v1
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "required"    # Z

    .prologue
    .line 4339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private getPanelState(IZLcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "required"    # Z
    .param p3, "convertPanelState"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4354
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    .line 4355
    if-nez p2, :cond_0

    .line 4356
    return-object v5

    .line 4358
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4362
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .local v0, "ar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-gt v3, p1, :cond_4

    .line 4363
    :cond_2
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 4364
    .local v1, "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    .line 4365
    array-length v3, v0

    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4367
    :cond_3
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 4370
    .end local v1    # "nar":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    aget-object v2, v0, p1

    .line 4371
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_5

    .line 4372
    if-eqz p3, :cond_6

    move-object v2, p3

    :goto_0
    aput-object v2, v0, p1

    .line 4376
    :cond_5
    return-object v2

    .line 4374
    :cond_6
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_0
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 4503
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4504
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0

    .line 4506
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 4507
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 4509
    :cond_1
    const v0, 0x1020040

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;
    .locals 5
    .param p1, "currentValue"    # Landroid/transition/Transition;
    .param p2, "defaultValue"    # Landroid/transition/Transition;
    .param p3, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 4280
    if-eq p1, p2, :cond_0

    .line 4281
    return-object p1

    .line 4283
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 4284
    .local v2, "transitionId":I
    move-object v1, p2

    .line 4285
    .local v1, "transition":Landroid/transition/Transition;
    if-eq v2, v4, :cond_1

    const/high16 v3, 0x10f0000

    if-eq v2, v3, :cond_1

    .line 4286
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 4287
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, v2}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    .line 4288
    instance-of v3, v1, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 4289
    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 4290
    const/4 v1, 0x0

    .line 4293
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "transition":Landroid/transition/Transition;
    :cond_1
    return-object v1
.end method

.method private getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 3

    .prologue
    .line 1735
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_0

    .line 1736
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 1737
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 1738
    return-object v0

    .line 1741
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "view not added"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 5
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v4, 0x4

    .line 1658
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1659
    .local v1, "features":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1660
    .local v0, "anim":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1661
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    .line 1662
    if-eqz p2, :cond_0

    .line 1663
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1664
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1665
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1667
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1668
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1669
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1670
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1657
    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4143
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-nez v7, :cond_0

    .line 4144
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 4145
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/high16 v8, 0x40000

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    .line 4146
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v7, v12}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    .line 4147
    iget-boolean v7, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    if-eqz v7, :cond_0

    .line 4148
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4151
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v7, :cond_e

    .line 4152
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 4155
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    .line 4157
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 4158
    const v8, 0x10204f5

    .line 4157
    invoke-virtual {v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DecorContentParent;

    .line 4160
    .local v0, "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    if-eqz v0, :cond_13

    .line 4161
    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 4162
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 4163
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_1

    .line 4164
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 4167
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v3

    .line 4168
    .local v3, "localFeatures":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v13, :cond_3

    .line 4169
    shl-int v7, v12, v1

    and-int/2addr v7, v3

    if-eqz v7, :cond_2

    .line 4170
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7, v1}, Lcom/android/internal/widget/DecorContentParent;->initFeature(I)V

    .line 4168
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4174
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setUiOptions(I)V

    .line 4176
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_f

    .line 4177
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4179
    :cond_4
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_5

    .line 4180
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 4185
    :cond_5
    :goto_1
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_11

    .line 4186
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v7}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 4195
    :cond_6
    :goto_2
    invoke-direct {p0, v9, v9}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v4

    .line 4196
    .local v4, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v4, :cond_7

    iget-object v7, v4, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v7, :cond_8

    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-eqz v7, :cond_12

    .line 4220
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    .end local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_9

    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v7, :cond_9

    .line 4221
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 4226
    :cond_9
    invoke-virtual {p0, v13}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4227
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    if-nez v7, :cond_a

    .line 4228
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    .line 4229
    const/16 v8, 0x1b

    .line 4228
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 4231
    .local v6, "transitionRes":I
    if-eqz v6, :cond_16

    .line 4232
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v2

    .line 4234
    .local v2, "inflater":Landroid/transition/TransitionInflater;
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 4233
    invoke-virtual {v2, v6, v7}, Landroid/transition/TransitionInflater;->inflateTransitionManager(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 4240
    .end local v2    # "inflater":Landroid/transition/TransitionInflater;
    .end local v6    # "transitionRes":I
    :cond_a
    :goto_4
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 4241
    const/16 v8, 0x1c

    .line 4240
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 4242
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 4243
    const/16 v9, 0x28

    .line 4242
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 4244
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 4245
    const/16 v8, 0x1d

    .line 4244
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 4246
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 4247
    const/16 v9, 0x29

    .line 4246
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 4248
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 4249
    const/16 v8, 0x1e

    .line 4248
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 4250
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 4251
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 4252
    const/16 v9, 0x2a

    .line 4250
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 4253
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 4254
    const/16 v8, 0x1f

    .line 4253
    invoke-direct {p0, v7, v10, v8}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 4255
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 4256
    sget-object v8, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    .line 4257
    const/16 v9, 0x2b

    .line 4255
    invoke-direct {p0, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->getTransition(Landroid/transition/Transition;Landroid/transition/Transition;I)Landroid/transition/Transition;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 4258
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v7, :cond_b

    .line 4259
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    .line 4260
    const/16 v8, 0x21

    .line 4259
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 4262
    :cond_b
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v7, :cond_c

    .line 4263
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    .line 4264
    const/16 v8, 0x20

    .line 4263
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 4266
    :cond_c
    iget-wide v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_d

    .line 4267
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    .line 4268
    const/16 v8, 0x25

    .line 4269
    const/16 v9, 0x12c

    .line 4267
    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 4271
    :cond_d
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v7, :cond_e

    .line 4272
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    .line 4273
    const/16 v8, 0x2c

    .line 4272
    invoke-virtual {v7, v8, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 4142
    .end local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    :cond_e
    return-void

    .line 4178
    .restart local v0    # "decorContentParent":Lcom/android/internal/widget/DecorContentParent;
    .restart local v1    # "i":I
    .restart local v3    # "localFeatures":I
    :cond_f
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    goto/16 :goto_1

    .line 4181
    :cond_10
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 4182
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4181
    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4183
    iget v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto/16 :goto_1

    .line 4187
    :cond_11
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget v8, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    invoke-interface {v7, v8}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    goto/16 :goto_2

    .line 4197
    .restart local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_12
    invoke-virtual {p0, v11}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    goto/16 :goto_3

    .line 4200
    .end local v1    # "i":I
    .end local v3    # "localFeatures":I
    .end local v4    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_13
    const v7, 0x1020016

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 4201
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    .line 4202
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v8}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutDirection()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 4203
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_15

    .line 4205
    const v7, 0x1020041

    .line 4204
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4206
    .local v5, "titleContainer":Landroid/view/View;
    if-eqz v5, :cond_14

    .line 4207
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 4211
    :goto_5
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_8

    .line 4212
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 4209
    :cond_14
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 4215
    .end local v5    # "titleContainer":Landroid/view/View;
    :cond_15
    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 4236
    .restart local v6    # "transitionRes":I
    :cond_16
    new-instance v7, Landroid/transition/TransitionManager;

    invoke-direct {v7}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    goto/16 :goto_4
.end method

.method private launchDefaultSearch(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    .line 4601
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 4602
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4603
    :cond_0
    const/4 v4, 0x0

    .line 4619
    :goto_0
    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    .line 4620
    const/4 v7, 0x4

    .line 4619
    if-ne v6, v7, :cond_3

    .line 4622
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4623
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v6, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4624
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "search"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    .line 4625
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 4624
    invoke-virtual {v6, v9, v7, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v6

    return v6

    .line 4605
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v6, "search"

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4606
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 4607
    .local v2, "deviceId":I
    const/4 v5, 0x0

    .line 4608
    .local v5, "searchEvent":Landroid/view/SearchEvent;
    if-eqz v2, :cond_2

    .line 4609
    new-instance v5, Landroid/view/SearchEvent;

    .end local v5    # "searchEvent":Landroid/view/SearchEvent;
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/SearchEvent;-><init>(Landroid/view/InputDevice;)V

    .line 4612
    :cond_2
    :try_start_0
    invoke-interface {v1, v5}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, "result":Z
    goto :goto_0

    .line 4613
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    .line 4614
    .local v3, "e":Ljava/lang/AbstractMethodError;
    const-string/jumbo v6, "PhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "WindowCallback "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " does not implement"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4615
    const-string/jumbo v8, " method onSearchRequested(SearchEvent); fa"

    .line 4614
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4616
    invoke-interface {v1}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v4

    .restart local v4    # "result":Z
    goto/16 :goto_0

    .line 4627
    .end local v2    # "deviceId":I
    .end local v3    # "e":Ljava/lang/AbstractMethodError;
    .end local v4    # "result":Z
    :cond_3
    return v4
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 4299
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 4298
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4300
    :catch_0
    move-exception v0

    .line 4301
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4303
    return-object v4
.end method

.method private openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 19
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 706
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 707
    :cond_0
    return-void

    .line 712
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_4

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 714
    .local v13, "context":Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 715
    .local v12, "config":Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    .line 716
    const/4 v5, 0x4

    .line 715
    if-ne v4, v5, :cond_2

    const/4 v15, 0x1

    .line 717
    .local v15, "isXLarge":Z
    :goto_0
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 718
    const/16 v5, 0xb

    .line 717
    if-lt v4, v5, :cond_3

    const/4 v14, 0x1

    .line 720
    .local v14, "isHoneycombApp":Z
    :goto_1
    if-eqz v15, :cond_4

    if-eqz v14, :cond_4

    .line 721
    return-void

    .line 715
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "isXLarge":Z
    goto :goto_0

    .line 717
    :cond_3
    const/4 v14, 0x0

    .restart local v14    # "isHoneycombApp":Z
    goto :goto_1

    .line 725
    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "isHoneycombApp":Z
    .end local v15    # "isXLarge":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 726
    .local v11, "cb":Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 732
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    .line 733
    .local v18, "wm":Landroid/view/WindowManager;
    if-nez v18, :cond_7

    .line 734
    return-void

    .line 728
    .end local v18    # "wm":Landroid/view/WindowManager;
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 729
    return-void

    .line 738
    .restart local v18    # "wm":Landroid/view/WindowManager;
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 739
    return-void

    .line 744
    :cond_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_9

    .line 745
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 746
    return-void

    .line 749
    :cond_9
    const/4 v3, -0x2

    .line 750
    .local v3, "width":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v4, :cond_a

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_13

    .line 751
    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-nez v4, :cond_c

    .line 753
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-nez v4, :cond_d

    .line 754
    :cond_b
    return-void

    .line 755
    :cond_c
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_d

    .line 757
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeAllViews()V

    .line 761
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 765
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 766
    .local v16, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v16, :cond_e

    .line 767
    new-instance v16, Landroid/view/ViewGroup$LayoutParams;

    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 771
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    move-object/from16 v0, v16

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    .line 774
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 775
    .local v10, "backgroundResId":I
    const/4 v3, -0x1

    .line 780
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 783
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    .line 784
    .local v17, "shownPanelParent":Landroid/view/ViewParent;
    if-eqz v17, :cond_f

    move-object/from16 v0, v17

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_f

    .line 785
    check-cast v17, Landroid/view/ViewGroup;

    .end local v17    # "shownPanelParent":Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 787
    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_10

    .line 794
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 807
    .end local v10    # "backgroundResId":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_10
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 809
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 811
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->y:I

    .line 814
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget v9, v4, Lcom/android/internal/policy/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 810
    const/4 v4, -0x2

    .line 811
    const/16 v7, 0x3eb

    .line 812
    const/high16 v8, 0x820000

    .line 809
    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 816
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_15

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 818
    sget-object v4, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 823
    :goto_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 825
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v0, v18

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 702
    return-void

    .line 762
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    return-void

    .line 778
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_12
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10    # "backgroundResId":I
    goto/16 :goto_2

    .line 796
    .end local v10    # "backgroundResId":I
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_14

    .line 797
    const/4 v3, -0x1

    goto :goto_3

    .line 798
    :cond_14
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_10

    .line 801
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 802
    .restart local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v16, :cond_10

    move-object/from16 v0, v16

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    .line 803
    const/4 v3, -0x1

    goto :goto_3

    .line 820
    .end local v16    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_15
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_4
.end method

.method private openPanelsAfterRestore()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2159
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2161
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 2162
    return-void

    .line 2166
    :cond_0
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2167
    aget-object v2, v1, v0

    .line 2171
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 2172
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 2173
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_1

    .line 2174
    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 2175
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 2166
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2158
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-void
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1116
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1117
    :cond_0
    return v2

    .line 1120
    :cond_1
    const/4 v0, 0x0

    .line 1124
    .local v0, "handled":Z
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3

    .line 1126
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1129
    .end local v0    # "handled":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 1131
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1134
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v1, :cond_4

    .line 1135
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1139
    :cond_4
    return v0
.end method

.method private registerSwipeCallbacks()V
    .locals 2

    .prologue
    .line 4514
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SwipeDismissLayout;

    .line 4515
    .local v0, "swipeDismiss":Lcom/android/internal/widget/SwipeDismissLayout;
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$2;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V

    .line 4522
    new-instance v1, Lcom/android/internal/policy/PhoneWindow$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow$3;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    .line 4521
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SwipeDismissLayout;->setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V

    .line 4512
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 7
    .param p1, "toggleMenuMode"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1191
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1192
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1193
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowPending()Z

    move-result v3

    .line 1191
    if-eqz v3, :cond_5

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1195
    .local v0, "cb":Landroid/view/Window$Callback;
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 1215
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    .line 1216
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1217
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1221
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 1196
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1198
    iget-boolean v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v3, :cond_3

    .line 1199
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 1200
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1201
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1204
    :cond_3
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1208
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-nez v3, :cond_1

    .line 1209
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v5, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    .line 1208
    if-eqz v3, :cond_1

    .line 1210
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1211
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0

    .line 1218
    :cond_4
    iget-object v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1224
    .end local v0    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    invoke-direct {p0, v5, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1226
    .restart local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_6

    .line 1227
    return-void

    .line 1231
    :cond_6
    if-eqz p1, :cond_8

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    .line 1233
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1234
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1237
    iput-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1239
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1190
    return-void

    .line 1231
    :cond_7
    const/4 v1, 0x1

    .local v1, "newExpandedMode":Z
    goto :goto_1

    .end local v1    # "newExpandedMode":Z
    :cond_8
    iget-boolean v1, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .local v1, "newExpandedMode":Z
    goto :goto_1
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 5
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
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v4, 0x0

    .line 2135
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2136
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 2137
    .local v0, "curFeatureId":I
    invoke-direct {p0, v0, v4}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2138
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 2135
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2143
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2144
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_1

    .line 2132
    .end local v0    # "curFeatureId":I
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
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
    .line 2115
    .local p1, "icicles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 2116
    .local v1, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 2117
    return-void

    .line 2120
    :cond_0
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "curFeatureId":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2121
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 2122
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2120
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2114
    :cond_2
    return-void
.end method

.method public static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5239
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5241
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5238
    :cond_0
    :goto_0
    return-void

    .line 5242
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .param p1, "horizontalProgressBar"    # Landroid/widget/ProgressBar;
    .param p2, "spinnyProgressBar"    # Landroid/widget/ProgressBar;

    .prologue
    const/4 v3, 0x0

    .line 1645
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1646
    .local v0, "features":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    .line 1647
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1648
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1651
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1652
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 1653
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1644
    :cond_1
    return-void
.end method

.method private transitionTo(Landroid/transition/Scene;)V
    .locals 1
    .param p1, "scene"    # Landroid/transition/Scene;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p1}, Landroid/transition/Scene;->enter()V

    .line 472
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    .line 466
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    goto :goto_0
.end method

.method private updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "st"    # Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    .param p3, "fromResume"    # Z

    .prologue
    .line 4400
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 4401
    return-void

    .line 4404
    :cond_0
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 4406
    .local v1, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    if-eqz p3, :cond_6

    .line 4410
    :cond_1
    const/4 v0, 0x0

    .line 4411
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    .line 4412
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4413
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 4414
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 4415
    :cond_2
    if-nez v0, :cond_3

    .line 4416
    iget-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 4418
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_7

    .line 4419
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4420
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz p3, :cond_5

    .line 4421
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 4397
    :cond_5
    :goto_0
    return-void

    .line 4407
    :cond_6
    return-void

    .line 4424
    :cond_7
    if-eqz p2, :cond_5

    iget-object v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_8

    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_5

    .line 4427
    :cond_8
    iput-object v0, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 4428
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 4429
    iget v2, p2, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private updateInt(IIZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .param p3, "fromResume"    # Z

    .prologue
    .line 4437
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 4438
    return-void

    .line 4441
    :cond_0
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 4443
    .local v0, "featureMask":I
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    .line 4447
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_4

    .line 4448
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4449
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    .line 4433
    :cond_2
    :goto_0
    return-void

    .line 4444
    :cond_3
    return-void

    .line 4452
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 10
    .param p1, "value"    # I

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1568
    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1569
    .local v0, "circularProgressBar":Landroid/widget/ProgressBar;
    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1571
    .local v2, "horizontalProgressBar":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1572
    .local v1, "features":I
    const/4 v5, -0x1

    if-ne p1, v5, :cond_6

    .line 1573
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1

    .line 1574
    if-eqz v2, :cond_4

    .line 1575
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1576
    .local v3, "level":I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v3, v8, :cond_3

    .line 1577
    :cond_0
    const/4 v4, 0x0

    .line 1578
    .local v4, "visibility":I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1583
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_1
    :goto_1
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_2

    .line 1584
    if-eqz v0, :cond_5

    .line 1585
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1567
    :cond_2
    :goto_2
    return-void

    .line 1577
    .restart local v3    # "level":I
    :cond_3
    const/4 v4, 0x4

    .restart local v4    # "visibility":I
    goto :goto_0

    .line 1580
    .end local v3    # "level":I
    .end local v4    # "visibility":I
    :cond_4
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1587
    :cond_5
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1590
    :cond_6
    const/4 v5, -0x2

    if-ne p1, v5, :cond_a

    .line 1591
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_7

    .line 1592
    if-eqz v2, :cond_8

    .line 1593
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1598
    :cond_7
    :goto_3
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_2

    .line 1599
    if-eqz v0, :cond_9

    .line 1600
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 1595
    :cond_8
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1602
    :cond_9
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Circular progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1605
    :cond_a
    const/4 v5, -0x3

    if-ne p1, v5, :cond_c

    .line 1606
    if-eqz v2, :cond_b

    .line 1607
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1609
    :cond_b
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1611
    :cond_c
    const/4 v5, -0x4

    if-ne p1, v5, :cond_e

    .line 1612
    if-eqz v2, :cond_d

    .line 1613
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 1615
    :cond_d
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1617
    :cond_e
    if-ltz p1, :cond_11

    if-gt p1, v8, :cond_11

    .line 1621
    if-eqz v2, :cond_f

    .line 1622
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1627
    :goto_4
    if-ge p1, v8, :cond_10

    .line 1628
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_2

    .line 1624
    :cond_f
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1630
    :cond_10
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_2

    .line 1632
    :cond_11
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_2

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_2

    .line 1633
    if-eqz v2, :cond_12

    .line 1634
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1639
    :goto_5
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto/16 :goto_2

    .line 1636
    :cond_12
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Horizontal progress bar not located in current window decor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 454
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    const-string/jumbo v1, "PhoneWindow"

    const-string/jumbo v2, "addContentView does not support content transitions"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 461
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    :cond_2
    :goto_0
    return-void

    .line 462
    :cond_3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    goto :goto_0
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    .prologue
    .line 4139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 4138
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 903
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 904
    return-void

    .line 907
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 908
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 910
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 913
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow;->mClosingActionMenu:Z

    .line 902
    return-void

    .line 911
    :cond_2
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public final closeAllPanels()V
    .locals 6

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 1069
    .local v4, "wm":Landroid/view/ViewManager;
    if-nez v4, :cond_0

    .line 1070
    return-void

    .line 1073
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1074
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    array-length v0, v3

    .line 1075
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1076
    aget-object v2, v3, v1

    .line 1077
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 1078
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1075
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1074
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1082
    .restart local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 1067
    return-void
.end method

.method public final closePanel(I)V
    .locals 2
    .param p1, "featureId"    # I

    .prologue
    const/4 v1, 0x1

    .line 832
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    .line 832
    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 837
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->closeContextMenu()V

    .line 831
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    goto :goto_0

    .line 839
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "doCallback"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 856
    if-eqz p2, :cond_0

    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v1

    .line 856
    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 859
    return-void

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 863
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_2

    .line 864
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 872
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_1

    .line 873
    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 877
    :cond_1
    if-eqz p2, :cond_2

    .line 878
    iget v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 882
    :cond_2
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 883
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 884
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 887
    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 889
    iget-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_3

    .line 892
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 893
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 896
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_4

    .line 897
    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 898
    iput v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 854
    :cond_4
    return-void
.end method

.method protected dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x0

    .line 4468
    invoke-super {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4469
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 4470
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 4467
    :cond_0
    return-void
.end method

.method doInvalidatePanelMenu(I)V
    .locals 6
    .param p1, "featureId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 944
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 945
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 946
    return-void

    .line 948
    :cond_0
    const/4 v0, 0x0

    .line 949
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_2

    .line 950
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 951
    .local v0, "savedActionViewStates":Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 952
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 953
    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 956
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 957
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 959
    .end local v0    # "savedActionViewStates":Landroid/os/Bundle;
    :cond_2
    iput-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 960
    iput-boolean v5, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 963
    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    if-nez p1, :cond_4

    .line 964
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v2, :cond_4

    .line 965
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 966
    if-eqz v1, :cond_4

    .line 967
    iput-boolean v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 968
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 943
    :cond_4
    return-void
.end method

.method doPendingInvalidatePanelMenu()V
    .locals 2

    .prologue
    .line 937
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 939
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 936
    :cond_0
    return-void
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x0

    .line 1164
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanels:[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 1165
    .local v3, "panels":[Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1166
    .local v0, "N":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1167
    aget-object v2, v3, v1

    .line 1168
    .local v2, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1169
    return-object v2

    .line 1165
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_0

    .line 1166
    .restart local v1    # "i":I
    .restart local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1172
    .end local v2    # "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_2
    return-object v5
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 3779
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 27
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 3800
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3812
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v24, 0x4

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 3814
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    .line 3813
    const v25, 0x10100

    and-int v9, v25, v24

    .line 3815
    .local v9, "flagsToUpdate":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v24, v0

    if-eqz v24, :cond_25

    .line 3816
    const/16 v24, -0x2

    const/16 v25, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 3817
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3822
    :goto_0
    const/16 v24, 0x3

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_26

    .line 3823
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 3829
    :cond_0
    :goto_1
    const/16 v24, 0x11

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 3830
    const/16 v24, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 3833
    :cond_1
    const/16 v24, 0x10

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 3834
    const/16 v24, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 3837
    :cond_2
    const/16 v24, 0x19

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 3838
    const/16 v24, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 3841
    :cond_3
    const/16 v24, 0x9

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 3842
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    const/16 v25, 0x400

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3845
    :cond_4
    const/16 v24, 0x17

    .line 3846
    const/16 v25, 0x0

    .line 3845
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 3848
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    .line 3847
    const/high16 v25, 0x4000000

    and-int v24, v24, v25

    const/high16 v25, 0x4000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3851
    :cond_5
    const/16 v24, 0x18

    .line 3852
    const/16 v25, 0x0

    .line 3851
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 3854
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    .line 3853
    const/high16 v25, 0x8000000

    and-int v24, v24, v25

    const/high16 v25, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3857
    :cond_6
    const/16 v24, 0x16

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 3858
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x2000000

    and-int v24, v24, v25

    const/high16 v25, 0x2000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3861
    :cond_7
    const/16 v24, 0xe

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 3862
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x100000

    and-int v24, v24, v25

    const/high16 v25, 0x100000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3866
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v24, v0

    .line 3867
    const/16 v25, 0xb

    .line 3866
    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_27

    const/16 v24, 0x1

    .line 3865
    :goto_2
    const/16 v25, 0x12

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 3868
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x800000

    and-int v24, v24, v25

    const/high16 v25, 0x800000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3871
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    const/16 v25, 0x13

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    const/16 v25, 0x14

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3873
    const/16 v24, 0x32

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 3874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    if-nez v24, :cond_a

    new-instance v24, Landroid/util/TypedValue;

    invoke-direct/range {v24 .. v24}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 3876
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    .line 3875
    const/16 v25, 0x32

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3878
    :cond_b
    const/16 v24, 0x34

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 3879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    if-nez v24, :cond_c

    new-instance v24, Landroid/util/TypedValue;

    invoke-direct/range {v24 .. v24}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 3881
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    .line 3880
    const/16 v25, 0x34

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3883
    :cond_d
    const/16 v24, 0x35

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 3884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    if-nez v24, :cond_e

    new-instance v24, Landroid/util/TypedValue;

    invoke-direct/range {v24 .. v24}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 3886
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    .line 3885
    const/16 v25, 0x35

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3888
    :cond_f
    const/16 v24, 0x33

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 3889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    if-nez v24, :cond_10

    new-instance v24, Landroid/util/TypedValue;

    invoke-direct/range {v24 .. v24}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 3891
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v24, v0

    .line 3890
    const/16 v25, 0x33

    move/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 3893
    :cond_11
    const/16 v24, 0x1a

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 3894
    const/16 v24, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 3896
    :cond_12
    const/16 v24, 0x2d

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 3897
    const/16 v24, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 3901
    :cond_13
    const/16 v24, 0x2f

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    .line 3902
    .local v18, "statusBarIconColor":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setStatusBarIconColor(I)V

    .line 3905
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3906
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v23, v0

    .line 3907
    .local v23, "targetSdk":I
    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_28

    const/16 v20, 0x1

    .line 3908
    .local v20, "targetPreHoneycomb":Z
    :goto_3
    const/16 v24, 0xe

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_29

    const/16 v21, 0x1

    .line 3909
    .local v21, "targetPreIcs":Z
    :goto_4
    const/16 v24, 0x15

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2a

    const/16 v22, 0x1

    .line 3910
    .local v22, "targetPreL":Z
    :goto_5
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 3911
    const v25, 0x1120009

    .line 3910
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 3912
    .local v19, "targetHcNeedsOptions":Z
    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v24

    if-eqz v24, :cond_2b

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v14

    .line 3914
    :goto_6
    if-nez v20, :cond_14

    if-eqz v21, :cond_2c

    if-eqz v19, :cond_2c

    if-eqz v14, :cond_2c

    .line 3915
    :cond_14
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    .line 3925
    :goto_7
    sget-boolean v24, Lcom/letv/leui/util/statusbar/StatusbarColorFromTitleHelper;->LEUI_IMMERSIVE_STATUSBAR_ENABLE:Z

    if-eqz v24, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v24, v0

    if-nez v24, :cond_15

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v24

    if-nez v24, :cond_16

    .line 3926
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v24, v0

    if-nez v24, :cond_2d

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v24

    .line 3925
    if-eqz v24, :cond_2d

    .line 3928
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    const/high16 v25, -0x80000000

    and-int v24, v24, v25

    .line 3927
    const/high16 v25, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 3941
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    move/from16 v24, v0

    if-nez v24, :cond_18

    .line 3942
    const/16 v24, 0x23

    const/high16 v25, -0x1000000

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 3944
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    move/from16 v24, v0

    if-nez v24, :cond_19

    .line 3945
    const/16 v24, 0x24

    const/high16 v25, -0x1000000

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 3947
    :cond_19
    const/16 v24, 0x2e

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 3949
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getSystemUiVisibility()I

    move-result v24

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x2000

    move/from16 v24, v0

    .line 3948
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setSystemUiVisibility(I)V

    .line 3952
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v24, v0

    if-nez v24, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v24, v0

    .line 3953
    const/16 v25, 0xb

    .line 3952
    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1c

    .line 3955
    :cond_1b
    const/16 v24, 0x15

    .line 3956
    const/16 v25, 0x0

    .line 3954
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 3957
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 3961
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    .line 3963
    .local v15, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->hasSoftInputMode()Z

    move-result v24

    if-nez v24, :cond_1d

    .line 3966
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v24, v0

    .line 3965
    const/16 v25, 0xd

    .line 3964
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3970
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v24, v0

    .line 3969
    const/16 v25, 0xb

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 3972
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    and-int/lit8 v24, v24, 0x2

    if-nez v24, :cond_1e

    .line 3973
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3975
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->haveDimAmount()Z

    move-result v24

    if-nez v24, :cond_1f

    .line 3977
    const/16 v24, 0x0

    const/high16 v25, 0x3f000000    # 0.5f

    .line 3976
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 3981
    :cond_1f
    iget v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v24, v0

    if-nez v24, :cond_20

    .line 3983
    const/16 v24, 0x8

    const/16 v25, 0x0

    .line 3982
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3988
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v24

    if-nez v24, :cond_24

    .line 3989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-nez v24, :cond_23

    .line 3990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v24, v0

    if-nez v24, :cond_21

    .line 3992
    const/16 v24, 0x1

    const/16 v25, 0x0

    .line 3991
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 3994
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v24, v0

    if-nez v24, :cond_22

    .line 3995
    const/16 v24, 0x2

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    .line 3998
    :cond_22
    const/16 v24, 0x30

    const/16 v25, 0x0

    .line 3997
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 4005
    :cond_23
    const/16 v24, 0x0

    const/16 v25, 0x26

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 4006
    const/16 v24, 0x27

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 4007
    const/16 v24, 0x7

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    .line 4013
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeatures()I

    move-result v8

    .line 4017
    .local v8, "features":I
    sget-boolean v24, Lcom/android/internal/policy/PhoneWindow;->DBG_APP_LAUNCH_ENHANCE:Z

    if-eqz v24, :cond_2f

    .line 4018
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2e

    const/4 v13, 0x1

    .line 4019
    .local v13, "mIsStartingWindow":Z
    :goto_9
    if-eqz v13, :cond_30

    .line 4020
    const v12, 0x1090142

    .line 4078
    .local v12, "layoutResource":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/PhoneWindow$DecorView;->startChanging()V

    .line 4080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 4081
    .local v11, "in":Landroid/view/View;
    new-instance v24, Landroid/view/ViewGroup$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-direct/range {v24 .. v26}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4082
    check-cast v11, Landroid/view/ViewGroup;

    .end local v11    # "in":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/policy/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;

    .line 4084
    const v24, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 4085
    .local v6, "contentParent":Landroid/view/ViewGroup;
    if-nez v6, :cond_3b

    .line 4086
    new-instance v24, Ljava/lang/RuntimeException;

    const-string/jumbo v25, "Window couldn\'t find content container view"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 3819
    .end local v6    # "contentParent":Landroid/view/ViewGroup;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "features":I
    .end local v12    # "layoutResource":I
    .end local v13    # "mIsStartingWindow":Z
    .end local v15    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "statusBarIconColor":I
    .end local v19    # "targetHcNeedsOptions":Z
    .end local v20    # "targetPreHoneycomb":Z
    .end local v21    # "targetPreIcs":Z
    .end local v22    # "targetPreL":Z
    .end local v23    # "targetSdk":I
    :cond_25
    const v24, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto/16 :goto_0

    .line 3824
    :cond_26
    const/16 v24, 0xf

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 3826
    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_1

    .line 3866
    :cond_27
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 3907
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v18    # "statusBarIconColor":I
    .restart local v23    # "targetSdk":I
    :cond_28
    const/16 v20, 0x0

    .restart local v20    # "targetPreHoneycomb":Z
    goto/16 :goto_3

    .line 3908
    :cond_29
    const/16 v21, 0x0

    .restart local v21    # "targetPreIcs":Z
    goto/16 :goto_4

    .line 3909
    :cond_2a
    const/16 v22, 0x0

    .restart local v22    # "targetPreL":Z
    goto/16 :goto_5

    .line 3912
    .restart local v19    # "targetHcNeedsOptions":Z
    :cond_2b
    const/4 v14, 0x1

    .local v14, "noActionBar":Z
    goto/16 :goto_6

    .line 3917
    .end local v14    # "noActionBar":Z
    :cond_2c
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setNeedsMenuKey(I)V

    goto/16 :goto_7

    .line 3930
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v24, v0

    if-nez v24, :cond_17

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 3931
    if-nez v22, :cond_17

    .line 3932
    const/16 v24, 0x22

    .line 3933
    const/16 v25, 0x0

    .line 3931
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 3935
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getForcedWindowFlags()I

    move-result v24

    move/from16 v0, v24

    not-int v0, v0

    move/from16 v24, v0

    const/high16 v25, -0x80000000

    and-int v24, v24, v25

    .line 3934
    const/high16 v25, -0x80000000

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    goto/16 :goto_8

    .line 4018
    .restart local v8    # "features":I
    .restart local v15    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2e
    const/4 v13, 0x0

    .restart local v13    # "mIsStartingWindow":Z
    goto/16 :goto_9

    .line 4017
    .end local v13    # "mIsStartingWindow":Z
    :cond_2f
    const/4 v13, 0x0

    .restart local v13    # "mIsStartingWindow":Z
    goto/16 :goto_9

    .line 4021
    :cond_30
    and-int/lit16 v0, v8, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_31

    .line 4022
    const v12, 0x1090144

    .restart local v12    # "layoutResource":I
    goto/16 :goto_a

    .line 4023
    .end local v12    # "layoutResource":I
    :cond_31
    and-int/lit8 v24, v8, 0x18

    if-eqz v24, :cond_33

    .line 4024
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v24, v0

    if-eqz v24, :cond_32

    .line 4025
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 4026
    .local v17, "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v24

    .line 4027
    const v25, 0x116002a

    const/16 v26, 0x1

    .line 4026
    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4028
    move-object/from16 v0, v17

    iget v12, v0, Landroid/util/TypedValue;->resourceId:I

    .line 4033
    .end local v17    # "res":Landroid/util/TypedValue;
    .restart local v12    # "layoutResource":I
    :goto_b
    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_a

    .line 4030
    .end local v12    # "layoutResource":I
    :cond_32
    const v12, 0x1090146

    .restart local v12    # "layoutResource":I
    goto :goto_b

    .line 4035
    .end local v12    # "layoutResource":I
    :cond_33
    and-int/lit8 v24, v8, 0x24

    if-eqz v24, :cond_34

    .line 4036
    and-int/lit16 v0, v8, 0x100

    move/from16 v24, v0

    if-nez v24, :cond_34

    .line 4039
    const v12, 0x1090141

    .line 4036
    .restart local v12    # "layoutResource":I
    goto/16 :goto_a

    .line 4041
    .end local v12    # "layoutResource":I
    :cond_34
    and-int/lit16 v0, v8, 0x80

    move/from16 v24, v0

    if-eqz v24, :cond_36

    .line 4044
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v24, v0

    if-eqz v24, :cond_35

    .line 4045
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 4046
    .restart local v17    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v24

    .line 4047
    const v25, 0x116002b

    const/16 v26, 0x1

    .line 4046
    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4048
    move-object/from16 v0, v17

    iget v12, v0, Landroid/util/TypedValue;->resourceId:I

    .line 4053
    .end local v17    # "res":Landroid/util/TypedValue;
    .restart local v12    # "layoutResource":I
    :goto_c
    const/16 v24, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_a

    .line 4050
    .end local v12    # "layoutResource":I
    :cond_35
    const v12, 0x1090140

    .restart local v12    # "layoutResource":I
    goto :goto_c

    .line 4054
    .end local v12    # "layoutResource":I
    :cond_36
    and-int/lit8 v24, v8, 0x2

    if-nez v24, :cond_39

    .line 4057
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    move/from16 v24, v0

    if-eqz v24, :cond_37

    .line 4058
    new-instance v17, Landroid/util/TypedValue;

    invoke-direct/range {v17 .. v17}, Landroid/util/TypedValue;-><init>()V

    .line 4059
    .restart local v17    # "res":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v24

    .line 4060
    const v25, 0x116002c

    const/16 v26, 0x1

    .line 4059
    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4061
    move-object/from16 v0, v17

    iget v12, v0, Landroid/util/TypedValue;->resourceId:I

    .restart local v12    # "layoutResource":I
    goto/16 :goto_a

    .line 4062
    .end local v12    # "layoutResource":I
    .end local v17    # "res":Landroid/util/TypedValue;
    :cond_37
    and-int/lit16 v0, v8, 0x100

    move/from16 v24, v0

    if-eqz v24, :cond_38

    .line 4064
    const/16 v24, 0x31

    .line 4065
    const v25, 0x109013f

    .line 4063
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .restart local v12    # "layoutResource":I
    goto/16 :goto_a

    .line 4067
    .end local v12    # "layoutResource":I
    :cond_38
    const v12, 0x1090145

    .restart local v12    # "layoutResource":I
    goto/16 :goto_a

    .line 4070
    .end local v12    # "layoutResource":I
    :cond_39
    and-int/lit16 v0, v8, 0x400

    move/from16 v24, v0

    if-eqz v24, :cond_3a

    .line 4071
    const v12, 0x1090143

    .restart local v12    # "layoutResource":I
    goto/16 :goto_a

    .line 4074
    .end local v12    # "layoutResource":I
    :cond_3a
    const v12, 0x1090142

    .restart local v12    # "layoutResource":I
    goto/16 :goto_a

    .line 4089
    .restart local v6    # "contentParent":Landroid/view/ViewGroup;
    :cond_3b
    and-int/lit8 v24, v8, 0x20

    if-eqz v24, :cond_3c

    .line 4090
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v16

    .line 4091
    .local v16, "progress":Landroid/widget/ProgressBar;
    if-eqz v16, :cond_3c

    .line 4092
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 4096
    .end local v16    # "progress":Landroid/widget/ProgressBar;
    :cond_3c
    and-int/lit16 v0, v8, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_3d

    .line 4097
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V

    .line 4102
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v24

    if-nez v24, :cond_40

    .line 4104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v24, v0

    if-eqz v24, :cond_41

    .line 4105
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4109
    .local v5, "background":Landroid/graphics/drawable/Drawable;
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v24, v0

    if-eqz v24, :cond_42

    .line 4113
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mFrameResource:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 4117
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 4119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 4120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 4122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3e

    .line 4123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 4126
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    move/from16 v24, v0

    if-nez v24, :cond_3f

    .line 4127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 4129
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setTitleColor(I)V

    .line 4132
    .end local v5    # "background":Landroid/graphics/drawable/Drawable;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/policy/PhoneWindow$DecorView;->finishChanging()V

    .line 4134
    return-object v6

    .line 4107
    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v5    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_d

    .line 4115
    :cond_42
    const/4 v10, 0x0

    .local v10, "frame":Landroid/graphics/drawable/Drawable;
    goto :goto_e
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .prologue
    .line 4741
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .prologue
    .line 4751
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1893
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContentScene:Landroid/transition/Scene;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 477
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-nez v0, :cond_0

    .line 2006
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4692
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4703
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 4647
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .prologue
    .line 5263
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    return v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4708
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4709
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4697
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4698
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4714
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 4725
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4730
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 4731
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 4730
    :goto_0
    return-object v0

    .line 4731
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    sget-object v1, Lcom/android/internal/policy/PhoneWindow;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-ne v0, v1, :cond_0

    .line 4720
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 4719
    :goto_0
    return-object v0

    .line 4720
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getStatusBarColor()I
    .locals 1

    .prologue
    .line 5249
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    return v0
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 4

    .prologue
    .line 4756
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x12c

    :goto_0
    return-wide v0

    .line 4757
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    goto :goto_0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 4637
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 6
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1355
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1356
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1357
    return v5

    .line 1360
    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1361
    return v4

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1365
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;)V

    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    .line 1368
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, "menuView":Lcom/android/internal/view/menu/MenuView;
    :goto_0
    move-object v2, v1

    .line 1372
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1374
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1376
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1377
    .local v0, "defaultAnimations":I
    if-eqz v0, :cond_3

    .line 1378
    iput v0, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 1380
    :cond_3
    return v5

    .line 1370
    .end local v0    # "defaultAnimations":I
    .end local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .restart local v1    # "menuView":Lcom/android/internal/view/menu/MenuView;
    goto :goto_0

    .line 1382
    :cond_5
    return v4
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 8
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const/4 v7, 0x0

    .line 1302
    new-instance v2, Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    iput-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 1303
    const/16 v2, 0x51

    iput v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1304
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1305
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1306
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    iget v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    .line 1305
    const/4 v5, 0x0

    .line 1306
    const/4 v6, 0x0

    .line 1305
    invoke-virtual {v2, v5, v3, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1307
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0x26

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 1308
    .local v1, "elevation":F
    cmpl-float v2, v1, v7

    if-eqz v2, :cond_0

    .line 1309
    iget-object v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 1311
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1313
    const/4 v2, 0x1

    return v2
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z
    .locals 11
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .prologue
    const v10, 0x1010397

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1252
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1255
    .local v1, "context":Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    .line 1256
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v6, :cond_3

    .line 1257
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1258
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1259
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010431

    invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1261
    const/4 v5, 0x0

    .line 1262
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_4

    .line 1263
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1264
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1265
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1266
    invoke-virtual {v5, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1273
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_2

    .line 1274
    if-nez v5, :cond_1

    .line 1275
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1276
    .restart local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1278
    .end local v5    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_1
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1281
    :cond_2
    if-eqz v5, :cond_3

    .line 1282
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v1, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1283
    .end local v1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v1, v2

    .line 1287
    .end local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_3
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1288
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1289
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1291
    return v8

    .line 1269
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .restart local v0    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v4    # "outValue":Landroid/util/TypedValue;
    .local v5, "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_4
    invoke-virtual {v0, v10, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 1731
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;)V

    .line 1730
    return-void
.end method

.method public invalidatePanelMenu(I)V
    .locals 3
    .param p1, "featureId"    # I

    .prologue
    const/4 v2, 0x1

    .line 928
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I

    .line 930
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 932
    iput-boolean v2, p0, Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z

    .line 927
    :cond_0
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 4393
    invoke-direct {p0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 4394
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 2000
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 641
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_3

    .line 642
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 643
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 644
    iget-boolean v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    .line 646
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 647
    .local v1, "state":Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_0

    .line 648
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 650
    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_1

    .line 651
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 656
    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    .line 659
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 662
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_2

    .line 663
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 665
    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_3

    .line 666
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 639
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .end local v1    # "state":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .line 672
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)V

    goto :goto_0
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I

    .prologue
    .line 1513
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1514
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1521
    .local v0, "view":Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    .line 1522
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1523
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1524
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1511
    :goto_1
    return-void

    .line 1515
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 1516
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0    # "view":Landroid/widget/ImageView;
    goto :goto_0

    .line 1518
    .end local v0    # "view":Landroid/widget/ImageView;
    :cond_1
    return-void

    .line 1526
    .restart local v0    # "view":Landroid/widget/ImageView;
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onIntChanged(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1538
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1539
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateProgressBars(I)V

    .line 1537
    :cond_1
    :goto_0
    return-void

    .line 1540
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 1541
    const v1, 0x1020041

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1542
    .local v0, "titleContainer":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    .line 1543
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1810
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 1814
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1880
    :cond_0
    return v2

    .line 1810
    :cond_1
    const/4 v1, 0x0

    .local v1, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    goto :goto_0

    .line 1818
    .end local v1    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/4 v0, 0x0

    .line 1819
    .local v0, "direction":I
    sparse-switch p2, :sswitch_data_1

    .line 1832
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v2, :cond_2

    .line 1833
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2, v0, v5}, Landroid/media/session/MediaController;->adjustVolume(II)V

    .line 1840
    :goto_2
    return v5

    .line 1821
    :sswitch_1
    const/4 v0, 0x1

    .line 1822
    goto :goto_1

    .line 1824
    :sswitch_2
    const/4 v0, -0x1

    .line 1825
    goto :goto_1

    .line 1827
    :sswitch_3
    const/16 v0, 0x65

    .line 1828
    goto :goto_1

    .line 1835
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v2

    .line 1836
    iget v3, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 1837
    const/16 v4, 0x1011

    .line 1835
    invoke-virtual {v2, v3, v0, v4}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_2

    .line 1855
    .end local v0    # "direction":I
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_3

    .line 1856
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1857
    return v5

    .line 1860
    :cond_3
    return v2

    .line 1864
    :sswitch_5
    if-gez p1, :cond_4

    move p1, v2

    .end local p1    # "featureId":I
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    .line 1865
    return v5

    .line 1869
    .restart local p1    # "featureId":I
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1870
    if-ltz p1, :cond_0

    .line 1872
    if-eqz v1, :cond_5

    .line 1873
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1875
    :cond_5
    return v5

    .line 1814
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_4
        0x52 -> :sswitch_5
        0x55 -> :sswitch_4
        0x56 -> :sswitch_4
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x5b -> :sswitch_4
        0x7e -> :sswitch_4
        0x7f -> :sswitch_4
        0x82 -> :sswitch_4
        0xa4 -> :sswitch_0
    .end sparse-switch

    .line 1819
    :sswitch_data_1
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0xa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 980
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 982
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 984
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 986
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 987
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_1

    .line 992
    .end local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_0
    return v3

    .line 988
    .restart local v1    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_1
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x1014

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1906
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1907
    :goto_0
    if-eqz v0, :cond_0

    .line 1908
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1913
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1996
    :cond_1
    return v3

    .line 1906
    :cond_2
    const/4 v0, 0x0

    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    goto :goto_0

    .line 1916
    .end local v0    # "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    const/16 v1, 0x1014

    .line 1920
    .local v1, "flags":I
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_3

    .line 1921
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, v3, v7}, Landroid/media/session/MediaController;->adjustVolume(II)V

    .line 1926
    :goto_1
    return v6

    .line 1923
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v4

    .line 1924
    iget v5, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 1923
    invoke-virtual {v4, v5, v3, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendAdjustVolumeBy(III)V

    goto :goto_1

    .line 1933
    .end local v1    # "flags":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v3, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    .line 1934
    return v6

    .line 1949
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_4

    .line 1950
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4, p3}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1951
    return v6

    .line 1954
    :cond_4
    return v3

    .line 1958
    :sswitch_3
    if-gez p1, :cond_5

    move p1, v3

    .end local p1    # "featureId":I
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    .line 1960
    return v6

    .line 1964
    .restart local p1    # "featureId":I
    :sswitch_4
    if-ltz p1, :cond_1

    .line 1965
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1966
    if-nez p1, :cond_6

    .line 1967
    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1968
    .local v2, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_6

    iget-boolean v3, v2, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v3, :cond_6

    .line 1971
    invoke-direct {p0, v6}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1972
    return v6

    .line 1975
    .end local v2    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 1976
    return v6

    .line 1986
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1989
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1992
    :cond_7
    :goto_2
    return v6

    .line 1990
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/internal/policy/PhoneWindow;->launchDefaultSearch(Landroid/view/KeyEvent;)Z

    goto :goto_2

    .line 1913
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
        0x54 -> :sswitch_5
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 7
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 1002
    iget v4, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    if-eqz v4, :cond_5

    .line 1003
    iput v6, p0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 1005
    invoke-direct {p0, p1, v6}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 1007
    .local v3, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-get3(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1009
    :cond_0
    return-void

    .line 1008
    :cond_1
    if-eqz v3, :cond_0

    .line 1012
    const/4 v1, 0x0

    .line 1013
    .local v1, "playSoundEffect":Z
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v4, :cond_2

    .line 1014
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v4

    .line 1013
    if-eqz v4, :cond_2

    .line 1015
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1024
    :cond_2
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_3

    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v4, :cond_8

    .line 1028
    :cond_3
    iget-boolean v1, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 1031
    .local v1, "playSoundEffect":Z
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1054
    .end local v1    # "playSoundEffect":Z
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1056
    const-string/jumbo v5, "audio"

    .line 1055
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1057
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_a

    .line 1058
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1000
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_5
    :goto_1
    return-void

    .line 1016
    .local v1, "playSoundEffect":Z
    .restart local v3    # "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->isOverflowMenuShowing()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1017
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1018
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    move-result v1

    .local v1, "playSoundEffect":Z
    goto :goto_0

    .line 1021
    .local v1, "playSoundEffect":Z
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v4}, Lcom/android/internal/widget/DecorContentParent;->hideOverflowMenu()Z

    move-result v1

    .local v1, "playSoundEffect":Z
    goto :goto_0

    .line 1033
    .local v1, "playSoundEffect":Z
    :cond_8
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v4, :cond_4

    .line 1034
    const/4 v2, 0x1

    .line 1035
    .local v2, "show":Z
    iget-boolean v4, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_9

    .line 1038
    iput-boolean v6, v3, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 1039
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1042
    .end local v2    # "show":Z
    :cond_9
    if-eqz v2, :cond_4

    .line 1044
    const v4, 0xc351

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1047
    invoke-direct {p0, v3, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1049
    const/4 v1, 0x1

    goto :goto_0

    .line 1060
    .end local v1    # "playSoundEffect":Z
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_a
    const-string/jumbo v4, "PhoneWindow"

    const-string/jumbo v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1177
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1183
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1178
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1179
    .local v1, "panel":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 1180
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1187
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->reopenMenu(Z)V

    .line 1186
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1332
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1333
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    return-void

    .line 1335
    :cond_0
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v3, :cond_2

    .line 1336
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1337
    :goto_0
    if-eqz v0, :cond_1

    .line 1338
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1339
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1340
    .local v2, "wm":Landroid/view/ViewManager;
    if-eqz v2, :cond_1

    .line 1341
    iget-object v3, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1331
    .end local v2    # "wm":Landroid/view/ViewManager;
    :cond_1
    return-void

    .line 1336
    :cond_2
    const/4 v0, 0x0

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 693
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->canShowOverflowMenu()Z

    move-result v0

    .line 693
    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 692
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "id"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1145
    invoke-direct {p0, p1, v5}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1146
    .local v1, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1147
    return v4

    .line 1149
    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    .line 1150
    return v4

    .line 1153
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1156
    .local v0, "res":Z
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-nez v2, :cond_2

    .line 1157
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 1160
    :cond_2
    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .param p4, "flags"    # I

    .prologue
    .line 1111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "st"    # Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 535
    return v5

    .line 539
    :cond_0
    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v3, :cond_1

    .line 540
    return v4

    .line 543
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    if-eq v3, p1, :cond_2

    .line 545
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 548
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 550
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    .line 551
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 555
    :cond_3
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v3, :cond_4

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_8

    :cond_4
    const/4 v1, 0x1

    .line 557
    .local v1, "isActionBarMenu":Z
    :goto_0
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_5

    .line 560
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorContentParent;->setMenuPrepared()V

    .line 563
    :cond_5
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v3, :cond_12

    .line 565
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_6

    iget-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v3, :cond_c

    .line 566
    :cond_6
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_9

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v3, :cond_9

    .line 568
    :cond_7
    return v5

    .line 555
    .end local v1    # "isActionBarMenu":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "isActionBarMenu":Z
    goto :goto_0

    .line 572
    :cond_9
    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_b

    .line 573
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v3, :cond_a

    .line 574
    new-instance v3, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v3, p0, v8}, Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;)V

    iput-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    .line 576
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v7, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v6, v7}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 583
    :cond_b
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 584
    if-eqz v0, :cond_f

    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 596
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 603
    :cond_c
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 607
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v3, :cond_d

    .line 608
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 609
    iput-object v8, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 612
    :cond_d
    iget v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v7, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v3, v6, v7}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 613
    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_e

    .line 616
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 618
    :cond_e
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 619
    return v5

    .line 586
    :cond_f
    invoke-virtual {p1, v8}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 588
    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v3, :cond_10

    .line 590
    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/PhoneWindow$ActionMenuPresenterCallback;

    invoke-interface {v3, v8, v4}, Lcom/android/internal/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 593
    :cond_10
    return v5

    .line 624
    :cond_11
    if-eqz p2, :cond_13

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    .line 623
    :goto_1
    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 625
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    if-eq v3, v4, :cond_14

    move v3, v4

    :goto_2
    iput-boolean v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 626
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v6, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v3, v6}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 627
    iget-object v3, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 631
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_12
    iput-boolean v4, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 632
    iput-boolean v5, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 633
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 635
    return v4

    .line 624
    :cond_13
    const/4 v3, -0x1

    goto :goto_1

    .restart local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_14
    move v3, v5

    .line 625
    goto :goto_2
.end method

.method public requestFeature(I)Z
    .locals 6
    .param p1, "featureId"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 333
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 334
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "requestFeature() must be called before adding content"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v0

    .line 337
    .local v0, "features":I
    shl-int v2, v5, p1

    or-int v1, v0, v2

    .line 338
    .local v1, "newFeatures":I
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 339
    and-int/lit16 v2, v1, -0x34c2

    if-eqz v2, :cond_1

    .line 342
    new-instance v2, Landroid/util/AndroidRuntimeException;

    .line 343
    const-string/jumbo v3, "You cannot combine custom titles with other title features"

    .line 342
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 345
    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    if-ne p1, v4, :cond_2

    .line 346
    return v3

    .line 348
    :cond_2
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_3

    if-ne p1, v5, :cond_3

    .line 350
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/PhoneWindow;->removeFeature(I)V

    .line 353
    :cond_3
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    if-ne p1, v2, :cond_4

    .line 354
    new-instance v2, Landroid/util/AndroidRuntimeException;

    .line 355
    const-string/jumbo v3, "You cannot combine swipe dismissal and the action bar."

    .line 354
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_4
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_5

    if-ne p1, v4, :cond_5

    .line 358
    new-instance v2, Landroid/util/AndroidRuntimeException;

    .line 359
    const-string/jumbo v3, "You cannot combine swipe dismissal and the action bar."

    .line 358
    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 362
    if-eqz v2, :cond_6

    .line 364
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "You cannot use indeterminate progress on a watch."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 366
    :cond_6
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v2

    return v2
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 2065
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 2066
    return-void

    .line 2070
    :cond_0
    const-string/jumbo v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 2071
    .local v4, "savedStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_1

    .line 2072
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 2076
    :cond_1
    const-string/jumbo v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2077
    .local v1, "focusedViewId":I
    if-eq v1, v6, :cond_2

    .line 2078
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2079
    .local v2, "needsFocus":Landroid/view/View;
    if-eqz v2, :cond_5

    .line 2080
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2089
    .end local v2    # "needsFocus":Landroid/view/View;
    :cond_2
    :goto_0
    const-string/jumbo v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 2090
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_3

    .line 2091
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 2094
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_4

    .line 2096
    const-string/jumbo v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2097
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_6

    .line 2098
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->doPendingInvalidatePanelMenu()V

    .line 2099
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->restoreToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2064
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_4
    :goto_1
    return-void

    .line 2082
    .end local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "needsFocus":Landroid/view/View;
    :cond_5
    const-string/jumbo v5, "PhoneWindow"

    .line 2083
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Previously focused view reported id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2084
    const-string/jumbo v7, " during save, but can\'t be found during restore."

    .line 2083
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2082
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2101
    .end local v2    # "needsFocus":Landroid/view/View;
    .restart local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3    # "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    const-string/jumbo v5, "PhoneWindow"

    const-string/jumbo v6, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 2024
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2025
    .local v2, "outState":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 2026
    return-object v2

    .line 2029
    :cond_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2030
    .local v4, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2031
    const-string/jumbo v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2034
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2035
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2036
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2037
    const-string/jumbo v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2047
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2048
    .local v3, "panelStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 2049
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 2050
    const-string/jumbo v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2053
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v5, :cond_3

    .line 2054
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2055
    .local v0, "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v5, v0}, Lcom/android/internal/widget/DecorContentParent;->saveToolbarHierarchyState(Landroid/util/SparseArray;)V

    .line 2056
    const-string/jumbo v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2059
    .end local v0    # "actionBarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_3
    return-object v2
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 5231
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5230
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5235
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5234
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 4736
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 4735
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 1
    .param p1, "allowExitTransitionOverlap"    # Z

    .prologue
    .line 4746
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 4745
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 1410
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    if-eqz v1, :cond_2

    .line 1411
    :cond_0
    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 1412
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1413
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v1, :cond_1

    .line 1414
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1416
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    if-eqz v1, :cond_2

    .line 1417
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundFallback(I)V

    .line 1409
    :cond_2
    return-void

    .line 1417
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    goto :goto_0
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4381
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 4382
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 4383
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 4380
    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 4388
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 4387
    return-void
.end method

.method public final setClipToOutline(Z)V
    .locals 1
    .param p1, "clipToOutline"    # Z

    .prologue
    .line 1402
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mClipToOutline:Z

    .line 1403
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setClipToOutline(Z)V

    .line 1401
    :cond_0
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .param p1, "container"    # Landroid/view/Window;

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 327
    return-void
.end method

.method public setContentView(I)V
    .locals 4
    .param p1, "layoutResID"    # I

    .prologue
    const/16 v3, 0xc

    .line 399
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 400
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 405
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 406
    invoke-static {v2, p1, v3}, Landroid/transition/Scene;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;

    move-result-object v1

    .line 408
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 412
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 414
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 395
    :cond_1
    :goto_2
    return-void

    .line 401
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 410
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    .line 415
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 421
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v3, 0xc

    .line 429
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 430
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->installDecor()V

    .line 435
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    new-instance v1, Landroid/transition/Scene;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 438
    .local v1, "newScene":Landroid/transition/Scene;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/PhoneWindow;->transitionTo(Landroid/transition/Scene;)V

    .line 442
    .end local v1    # "newScene":Landroid/transition/Scene;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestApplyInsets()V

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 444
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    :cond_1
    :goto_2
    return-void

    .line 431
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/PhoneWindow;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 445
    .restart local v0    # "cb":Landroid/view/Window$Callback;
    :cond_4
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    goto :goto_2
.end method

.method public setDefaultIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1686
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1687
    return-void

    .line 1689
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1690
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1691
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1692
    :cond_1
    if-eqz p1, :cond_3

    .line 1693
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1694
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1685
    :cond_2
    :goto_0
    return-void

    .line 1696
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 1697
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1696
    invoke-interface {v0, v1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1698
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    goto :goto_0
.end method

.method public setDefaultLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1714
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1715
    return-void

    .line 1717
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1718
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->hasLogo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1713
    :cond_1
    :goto_0
    return-void

    .line 1719
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    goto :goto_0
.end method

.method public final setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 1393
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mElevation:F

    .line 1394
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setElevation(F)V

    .line 1397
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1392
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4652
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 4651
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4662
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mExitTransition:Landroid/transition/Transition;

    .line 4661
    return-void
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1473
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1474
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1475
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1476
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1472
    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 1454
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1455
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1456
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1457
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1458
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1459
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1453
    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1465
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1466
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    .line 1467
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1468
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1464
    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1424
    if-eqz p2, :cond_1

    .line 1425
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1426
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_0

    .line 1427
    iput p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1428
    iput-object v3, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1429
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1430
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1423
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1439
    if-eqz p2, :cond_1

    .line 1440
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1441
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1438
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :goto_0
    return-void

    .line 1442
    .restart local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_0
    iput v2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1443
    iput-object p2, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1444
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1445
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    goto :goto_0

    .line 1448
    .end local v0    # "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "attrs"    # Landroid/content/res/TypedArray;
    .param p3, "drawableAttr"    # I
    .param p4, "alphaAttr"    # I

    .prologue
    .line 3784
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3785
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 3786
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    .line 3787
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3789
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 3790
    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 3791
    .local v0, "alpha":I
    if-ltz v0, :cond_1

    .line 3792
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PhoneWindow;->setFeatureDrawableAlpha(II)V

    .line 3783
    .end local v0    # "alpha":I
    :cond_1
    return-void
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "value"    # I

    .prologue
    .line 1484
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PhoneWindow;->updateInt(IIZ)V

    .line 1481
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1676
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIconRes:I

    .line 1677
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1678
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1679
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setIcon(I)V

    .line 1675
    :cond_0
    return-void
.end method

.method public setIsStartingWindow(Z)V
    .locals 0
    .param p1, "isStartingWindow"    # Z

    .prologue
    .line 5276
    iput-boolean p1, p0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    .line 5275
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 1
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1725
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneWindow;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl;->windowFocusChanged(ZZ)V

    .line 1724
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1705
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mLogoRes:I

    .line 1706
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mResourcesSetFlags:I

    .line 1707
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setLogo(I)V

    .line 1704
    :cond_0
    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 4642
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mMediaController:Landroid/media/session/MediaController;

    .line 4641
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 5268
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 5269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedNavigationBarColor:Z

    .line 5270
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 5271
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5267
    :cond_0
    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4667
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReenterTransition:Landroid/transition/Transition;

    .line 4666
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4657
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mReturnTransition:Landroid/transition/Transition;

    .line 4656
    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementEnterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4672
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementEnterTransition:Landroid/transition/Transition;

    .line 4671
    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "sharedElementExitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 4682
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementExitTransition:Landroid/transition/Transition;

    .line 4681
    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4687
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReenterTransition:Landroid/transition/Transition;

    .line 4686
    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 4677
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementReturnTransition:Landroid/transition/Transition;

    .line 4676
    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 1
    .param p1, "sharedElementsUseOverlay"    # Z

    .prologue
    .line 4770
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mSharedElementsUseOverlay:Ljava/lang/Boolean;

    .line 4769
    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 5254
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    .line 5255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow;->mForcedStatusBarColor:Z

    .line 5256
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    .line 5257
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->-wrap0(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 5253
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 506
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTitleColor:I

    .line 517
    return-void
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 3
    .param p1, "fadeDurationMillis"    # J

    .prologue
    .line 4762
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 4763
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative durations are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4765
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFadeDurationMillis:J

    .line 4761
    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTransitionManager:Landroid/transition/TransitionManager;

    .line 385
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 370
    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .param p1, "uiOptions"    # I
    .param p2, "mask"    # I

    .prologue
    .line 376
    iget v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow;->mUiOptions:I

    .line 375
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 4632
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow;->mVolumeControlStreamType:I

    .line 4631
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1756
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1757
    .local v0, "handled":Z
    sget-boolean v1, Lcom/android/internal/policy/PhoneWindow;->DBG_MOTION:Z

    if-eqz v1, :cond_0

    .line 1758
    const-string/jumbo v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "superDispatchKeyEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", handled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_0
    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1770
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1771
    .local v0, "handled":Z
    sget-boolean v1, Lcom/android/internal/policy/PhoneWindow;->DBG_MOTION:Z

    if-eqz v1, :cond_0

    .line 1772
    const-string/jumbo v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "superDispatchTouchEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", handled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_0
    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/InputQueue$Callback;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 485
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow;->mDecor:Lcom/android/internal/policy/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setFocusable(Z)V

    .line 1750
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback2;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 481
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 918
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 919
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 920
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/PhoneWindow;->closePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Z)V

    .line 917
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->openPanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected final updateDrawable(IZ)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "fromActive"    # Z

    .prologue
    .line 1497
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1498
    .local v0, "st":Lcom/android/internal/policy/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    .line 1499
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/PhoneWindow$DrawableFeatureState;Z)V

    .line 1496
    :cond_0
    return-void
.end method
