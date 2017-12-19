.class public abstract Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"

# interfaces
.implements Lcom/letv/leui/widget/pulltorefresh/IPullToRefresh;
.implements Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;,
        Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/letv/leui/widget/pulltorefresh/IPullToRefresh",
        "<TT;>;",
        "Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;"
    }
.end annotation


# static fields
.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I = null

.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I = null

.field private static synthetic -com_letv_leui_widget_pulltorefresh_PullToRefreshBase$StateSwitchesValues:[I = null

.field public static final ANIMATION_ENTER_OFFSET:F = 0.3f

.field static final DEBUG:Z = false

.field static final DEMO_SCROLL_INTERVAL:I = 0xe1

.field static final FRICTION:F = 2.0f

.field static final LOG_TAG:Ljava/lang/String; = "PullToRefresh"

.field public static final SMOOTH_SCROLL_DURATION_MS:I = 0xc8

.field public static final SMOOTH_SCROLL_LONG_DURATION_MS:I = 0x258

.field public static final START_REFRESHING_OFFSET:F = 0.3f

.field static final STATE_CURRENT_MODE:Ljava/lang/String; = "ptr_current_mode"

.field static final STATE_MODE:Ljava/lang/String; = "ptr_mode"

.field static final STATE_SCROLLING_REFRESHING_ENABLED:Ljava/lang/String; = "ptr_disable_scrolling"

.field static final STATE_SHOW_REFRESHING_VIEW:Ljava/lang/String; = "ptr_show_refreshing_view"

.field static final STATE_STATE:Ljava/lang/String; = "ptr_state"

.field static final STATE_SUPER:Ljava/lang/String; = "ptr_super"

.field static final USE_HW_LAYERS:Z


# instance fields
.field private mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private mFilterTouchEvents:Z

.field private mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

.field private mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutVisibilityChangesEnabled:Z

.field private mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOverScrollEnabled:Z

.field public mRefreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mRefreshableViewLayout:I

.field private mRefreshableViewWrapper:Landroid/widget/FrameLayout;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollingWhileRefreshingEnabled:Z

.field private mShowViewWhileRefreshing:Z

.field private mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

.field private mTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->values()[Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->SMOOTHSCROLLFINISHED:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-com_letv_leui_widget_pulltorefresh_PullToRefreshBase$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 0
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 84
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 85
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    .line 92
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 93
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 94
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 95
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 99
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 84
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 85
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    .line 92
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 93
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 94
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 95
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 99
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 84
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 85
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    .line 92
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 93
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 94
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 95
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 99
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 135
    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "animStyle"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    .line 140
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 84
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 85
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    .line 92
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 93
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 94
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 95
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 99
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 141
    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 142
    iput-object p3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method private addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    const/4 v2, -0x1

    .line 1023
    instance-of v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshAdapterViewLayout;

    if-eqz v0, :cond_0

    instance-of v0, p2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1024
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "refreshableView":Landroid/view/View;, "TT;"
    iput-object p2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1031
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1022
    return-void

    .line 1026
    .restart local p2    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    .line 1027
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private callRefreshListener()V
    .locals 2

    .prologue
    .line 1036
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;->onRefresh(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullStartToRefresh(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v0, v1, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    invoke-interface {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;->onPullEndToRefresh(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 1209
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1215
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1211
    :pswitch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/high16 v2, 0x40000000    # 2.0f

    .line 1221
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1226
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 1223
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 1221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getScale(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const v1, 0x3f333333    # 0.7f

    .line 1198
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 1199
    const/4 v0, 0x0

    return v0

    .line 1200
    :cond_0
    const v0, 0x3fa66666    # 1.3f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 1201
    sub-float v0, p1, v1

    const v1, 0x400aaaaa

    mul-float/2addr v0, v1

    return v0

    .line 1203
    :cond_1
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1048
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1054
    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    .line 1058
    :goto_0
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setGravity(I)V

    .line 1060
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 1061
    .local v2, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    .line 1064
    sget-object v3, Lcom/android/internal/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1066
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1067
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 1070
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1071
    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-static {v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1075
    :cond_1
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1076
    const/4 v3, -0x1

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewLayout:I

    .line 1081
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    .line 1082
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 1086
    sget-object v3, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 1087
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v3, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v3, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->setRefreshCompletedListener(Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;)V

    .line 1089
    sget-object v3, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v3, v0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    .line 1090
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v3, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    invoke-virtual {v3, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->setRefreshCompletedListener(Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;)V

    .line 1098
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1099
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1100
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 1101
    iget-object v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1106
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 1109
    :cond_4
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1111
    const/16 v3, 0xe

    .line 1110
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 1116
    :cond_5
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->handleStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 1117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1120
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 1047
    return-void

    .line 1050
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "config":Landroid/view/ViewConfiguration;
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setOrientation(I)V

    goto/16 :goto_0

    .line 1048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .locals 2

    .prologue
    .line 1124
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1132
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1126
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    return v0

    .line 1128
    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    return v0

    .line 1130
    :pswitch_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private pullEvent()V
    .locals 11

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/high16 v10, 0x40000000    # 2.0f

    const v9, 0x3fa66666    # 1.3f

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1147
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1154
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    .line 1155
    .local v0, "initialMotionValue":F
    iget v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 1159
    .local v2, "lastMotionValue":F
    :goto_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1166
    sub-float v5, v0, v2

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1167
    .local v3, "newScrollValue":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    .line 1171
    .local v1, "itemDimension":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 1173
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1142
    :cond_0
    :goto_2
    return-void

    .line 1149
    .end local v0    # "initialMotionValue":F
    .end local v1    # "itemDimension":I
    .end local v2    # "lastMotionValue":F
    .end local v3    # "newScrollValue":I
    :pswitch_0
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    .line 1150
    .restart local v0    # "initialMotionValue":F
    iget v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .restart local v2    # "lastMotionValue":F
    goto :goto_0

    .line 1161
    :pswitch_1
    sub-float v5, v0, v2

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1162
    .restart local v3    # "newScrollValue":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    .restart local v1    # "itemDimension":I
    goto :goto_1

    .line 1175
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScale(F)F

    move-result v4

    .line 1177
    .local v4, "scale":F
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 1183
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->onPull(F)V

    .line 1187
    :goto_3
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v5, v6, :cond_2

    int-to-float v5, v1

    mul-float/2addr v5, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 1189
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v7, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_2

    .line 1179
    :pswitch_2
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v4}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->onPull(F)V

    goto :goto_3

    .line 1190
    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v5, v6, :cond_0

    int-to-float v5, v1

    mul-float/2addr v5, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 1192
    sget-object v5, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v6, v7, [Z

    invoke-virtual {p0, v5, v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_2

    .line 1147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1159
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    .line 1177
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method private final smoothScrollTo(IJ)V
    .locals 8
    .param p1, "scrollValue"    # I
    .param p2, "duration"    # J

    .prologue
    .line 1237
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1236
    return-void
.end method

.method private final smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 8
    .param p1, "newScrollValue"    # I
    .param p2, "duration"    # J
    .param p4, "delayMillis"    # J
    .param p6, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1242
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 1247
    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1253
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScrollY()I

    move-result v2

    .line 1257
    .local v2, "oldScrollValue":I
    :goto_0
    if-eq v2, p1, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 1260
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 1262
    :cond_1
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;IIJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    .line 1264
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 1265
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0, p4, p5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1241
    :cond_2
    :goto_1
    return-void

    .line 1249
    .end local v2    # "oldScrollValue":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getScrollX()I

    move-result v2

    .restart local v2    # "oldScrollValue":I
    goto :goto_0

    .line 1267
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentSmoothScrollRunnable:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final smoothScrollToAndBack(I)V
    .locals 7
    .param p1, "y"    # I

    .prologue
    .line 1273
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$3;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 1272
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 152
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, "refreshableView":Landroid/view/View;, "TT;"
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "refreshableView":Landroid/view/View;, "TT;"
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void

    .line 157
    .restart local v0    # "refreshableView":Landroid/view/View;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 532
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 531
    return-void
.end method

.method protected final addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 540
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 539
    return-void
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 551
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 552
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    .line 551
    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v0

    .line 553
    .local v0, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 554
    return-object v0
.end method

.method protected createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "isHeader"    # Z

    .prologue
    .line 543
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLoadingAnimationStyle:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 544
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 543
    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;Z)Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    move-result-object v6

    .line 547
    .local v6, "layout":Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 548
    return-object v6
.end method

.method protected createLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
    .locals 2
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 562
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;

    invoke-direct {v0}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;-><init>()V

    .line 564
    .local v0, "proxy":Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 567
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;->addLayout(Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;)V

    .line 571
    :cond_1
    return-object v0
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final demo()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    .line 163
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V

    .line 165
    return v1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToAndBack(I)V

    .line 168
    return v1

    .line 171
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final disableLoadingLayoutVisibilityChanges()V
    .locals 1

    .prologue
    .line 591
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 590
    return-void
.end method

.method public forceReset()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    .line 312
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 313
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->getAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->getAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    .line 317
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->resetImageHeader()V

    .line 318
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    .line 311
    return-void
.end method

.method public final getCurrentMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    return v0
.end method

.method protected final getFooterLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 595
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .prologue
    .line 599
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 603
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .prologue
    .line 607
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;
    .locals 1

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 186
    invoke-virtual {p0, v0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;

    move-result-object v0

    return-object v0
.end method

.method public final getLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/ILoadingLayout;
    .locals 1
    .param p1, "includeStart"    # Z
    .param p2, "includeEnd"    # Z

    .prologue
    .line 191
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->createLoadingLayoutProxy(ZZ)Lcom/letv/leui/widget/pulltorefresh/LoadingLayoutProxy;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    .prologue
    .line 611
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    .prologue
    .line 615
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/16 v0, 0x258

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 619
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    return v0
.end method

.method public final getState()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .prologue
    .line 211
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method public getmFooterLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method public getmHeaderLayout()Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    return-object v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 628
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final isPullToRefreshOverScrollEnabled()Z
    .locals 2

    .prologue
    .line 221
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    invoke-static {v0}, Lcom/letv/leui/widget/pulltorefresh/OverscrollHelper;->isAndroidOverScrollEnabled(Landroid/view/View;)Z

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isReadyForPullEnd()Z
.end method

.method protected abstract isReadyForPullStart()Z
.end method

.method public final isRefreshing()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    .line 227
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isScrollingWhileRefreshingEnabled()Z
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 239
    return v7

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 244
    .local v1, "action":I
    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    if-ne v1, v8, :cond_2

    .line 245
    :cond_1
    iput-boolean v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 246
    return v7

    .line 249
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v6, :cond_3

    .line 250
    return v8

    .line 253
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 309
    :cond_4
    :goto_0
    :pswitch_0
    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    return v6

    .line 256
    :pswitch_1
    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 257
    return v8

    .line 260
    :cond_5
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 266
    .local v4, "x":F
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 273
    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v2, v5, v6

    .line 274
    .local v2, "diff":F
    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v3, v4, v6

    .line 277
    .local v3, "oppositeDiff":F
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 279
    .local v0, "absDiff":F
    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    iget-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_4

    .line 280
    :cond_6
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_7

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullStart()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 281
    iput v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 282
    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 283
    iput-boolean v8, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 284
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 285
    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0

    .line 268
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    :pswitch_2
    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    sub-float v2, v4, v6

    .line 269
    .restart local v2    # "diff":F
    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    sub-float v3, v5, v6

    .line 270
    .restart local v3    # "oppositeDiff":F
    goto :goto_1

    .line 287
    .restart local v0    # "absDiff":F
    :cond_7
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v6, -0x40800000    # -1.0f

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPullEnd()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 288
    iput v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 289
    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 290
    iput-boolean v8, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 291
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v7, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v6, v7, :cond_4

    .line 292
    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto/16 :goto_0

    .line 300
    .end local v0    # "absDiff":F
    .end local v2    # "diff":F
    .end local v3    # "oppositeDiff":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_3
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v6, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 303
    iput-boolean v7, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    goto/16 :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 655
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "saveState"    # Landroid/os/Bundle;

    .prologue
    .line 664
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    return-void
.end method

.method protected onPullToRefresh()V
    .locals 2

    .prologue
    .line 672
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 671
    :goto_0
    return-void

    .line 674
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 677
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->pullToRefresh()V

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iget-boolean v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iput-boolean v1, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iget-boolean v0, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iput-boolean v1, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    .line 322
    :cond_1
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 692
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    instance-of v1, v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    if-eqz v1, :cond_2

    .line 694
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->forceRefreshingImpl()V

    .line 701
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    .line 705
    :cond_1
    if-eqz p1, :cond_4

    .line 706
    iget-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    if-eqz v1, :cond_3

    .line 709
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$1;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    .line 716
    .local v0, "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 723
    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 691
    .end local v0    # "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :goto_1
    return-void

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->refreshing()V

    goto :goto_0

    .line 719
    .restart local v0    # "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(ILcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    goto :goto_1

    .line 727
    .end local v0    # "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_1

    .line 731
    :cond_4
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->callRefreshListener()V

    goto :goto_1

    .line 716
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .prologue
    .line 740
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 739
    :goto_0
    return-void

    .line 742
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 745
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->releaseToRefresh()V

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 758
    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    .line 762
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    .line 763
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->reset()V

    .line 765
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollToLonger(I)V

    .line 757
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 770
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 771
    check-cast v0, Landroid/os/Bundle;

    .line 773
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ptr_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setMode(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 774
    const-string/jumbo v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 776
    const-string/jumbo v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 777
    const-string/jumbo v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 780
    const-string/jumbo v2, "ptr_super"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 782
    const-string/jumbo v2, "ptr_state"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v1

    .line 783
    .local v1, "viewState":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v2, :cond_1

    .line 784
    :cond_0
    new-array v2, v4, [Z

    aput-boolean v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 788
    :cond_1
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V

    .line 789
    return-void

    .line 792
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "viewState":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 769
    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 797
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 801
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V

    .line 803
    const-string/jumbo v1, "ptr_state"

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    const-string/jumbo v1, "ptr_mode"

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 805
    const-string/jumbo v1, "ptr_current_mode"

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 806
    const-string/jumbo v1, "ptr_disable_scrolling"

    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 807
    const-string/jumbo v1, "ptr_show_refreshing_view"

    iget-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 808
    const-string/jumbo v1, "ptr_super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 810
    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 819
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 822
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 825
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->refreshRefreshableViewSize(II)V

    .line 831
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$2;-><init>(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->post(Ljava/lang/Runnable;)Z

    .line 814
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    return v2

    .line 365
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    return v3

    .line 369
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    return v2

    .line 373
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 420
    :cond_3
    return v2

    .line 375
    :pswitch_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 378
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->pullEvent()V

    .line 379
    return v3

    .line 385
    :pswitch_1
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isReadyForPull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionY:F

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionY:F

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mInitialMotionX:F

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLastMotionX:F

    .line 388
    return v3

    .line 395
    :pswitch_2
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    if-eqz v0, :cond_3

    .line 396
    iput-boolean v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mIsBeingDragged:Z

    .line 398
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v0, v1, :cond_5

    .line 399
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    if-eqz v0, :cond_5

    .line 400
    :cond_4
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v3, [Z

    aput-boolean v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 401
    return v3

    .line 405
    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 406
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(I)V

    .line 407
    return v3

    .line 412
    :cond_6
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 414
    return v3

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshFooterCompleteInternal()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 346
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeFooterRotateLoadingLayout;->cancelAnimator:Z

    .line 342
    :cond_0
    return-void
.end method

.method public refreshHeaderCompleteInternal()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v2, [Z

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 338
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    check-cast v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    iput-boolean v2, v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    .line 335
    :cond_0
    return-void
.end method

.method protected final refreshLoadingViewsSize()V
    .locals 7

    .prologue
    .line 844
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 846
    .local v0, "maximumPullScroll":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPaddingLeft()I

    move-result v2

    .line 847
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPaddingTop()I

    move-result v4

    .line 848
    .local v4, "pTop":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPaddingRight()I

    move-result v3

    .line 849
    .local v3, "pRight":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPaddingBottom()I

    move-result v1

    .line 851
    .local v1, "pBottom":I
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 888
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setPadding(IIII)V

    .line 843
    return-void

    .line 853
    :pswitch_0
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 854
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setWidth(I)V

    .line 855
    neg-int v2, v0

    .line 860
    :goto_1
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 861
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setWidth(I)V

    .line 862
    neg-int v3, v0

    goto :goto_0

    .line 857
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 864
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 869
    :pswitch_1
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 870
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setHeight(I)V

    .line 871
    neg-int v4, v0

    .line 876
    :goto_2
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 877
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v5, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setHeight(I)V

    .line 878
    neg-int v1, v0

    goto :goto_0

    .line 873
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 880
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final refreshRefreshableViewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 894
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 896
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 898
    :pswitch_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq v1, p1, :cond_0

    .line 899
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 900
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 904
    :pswitch_1
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, p2, :cond_0

    .line 905
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 906
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mRefreshableViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 896
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0
    .param p1, "filterEvents"    # Z

    .prologue
    .line 429
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFilterTouchEvents:Z

    .line 428
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 924
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    .line 925
    .local v0, "maximumPullScroll":I
    neg-int v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 927
    iget-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mLayoutVisibilityChangesEnabled:Z

    if-eqz v1, :cond_0

    .line 928
    if-gez p1, :cond_1

    .line 929
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 948
    :cond_0
    :goto_0
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$OrientationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 918
    :goto_1
    return-void

    .line 930
    :cond_1
    if-lez p1, :cond_2

    .line 931
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v3}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 933
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    .line 934
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->setVisibility(I)V

    goto :goto_0

    .line 950
    :pswitch_0
    invoke-virtual {p0, v3, p1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 953
    :pswitch_1
    invoke-virtual {p0, p1, v3}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->scrollTo(II)V

    goto :goto_1

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 434
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 433
    return-void
.end method

.method public final setMode(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1
    .param p1, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .prologue
    .line 439
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 443
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 444
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 438
    :cond_0
    return-void
.end method

.method public setOnPullEventListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    .line 448
    return-void
.end method

.method public final setOnRefreshListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 459
    return-void
.end method

.method public final setOnRefreshListener(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener;

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnRefreshListener2:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnRefreshListener2;

    .line 453
    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 466
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOverScrollEnabled:Z

    .line 465
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 471
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setRefreshing(Z)V

    .line 470
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3
    .param p1, "doScroll"    # Z

    .prologue
    .line 476
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 475
    :cond_0
    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 482
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 481
    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0
    .param p1, "allowScrollingWhileRefreshing"    # Z

    .prologue
    .line 424
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mScrollingWhileRefreshingEnabled:Z

    .line 423
    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0
    .param p1, "showView"    # Z

    .prologue
    .line 487
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mShowViewWhileRefreshing:Z

    .line 486
    return-void
.end method

.method final varargs setState(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 3
    .param p1, "state"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;
    .param p2, "params"    # [Z

    .prologue
    .line 497
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 502
    invoke-static {}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->-getcom_letv_leui_widget_pulltorefresh_PullToRefreshBase$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 522
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mOnPullEventListener:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mState:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-interface {v0, p0, v1, v2}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnPullEventListener;->onPullEvent(Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$State;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    .line 496
    :cond_0
    return-void

    .line 504
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onReset()V

    goto :goto_0

    .line 507
    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    goto :goto_0

    .line 510
    :pswitch_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    goto :goto_0

    .line 514
    :pswitch_4
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected final smoothScrollTo(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 965
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 964
    return-void
.end method

.method protected final smoothScrollTo(ILcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 7
    .param p1, "scrollValue"    # I
    .param p2, "listener"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 976
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJJLcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V

    .line 975
    return-void
.end method

.method protected final smoothScrollToLonger(I)V
    .locals 2
    .param p1, "scrollValue"    # I

    .prologue
    .line 986
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDurationLonger()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->smoothScrollTo(IJ)V

    .line 985
    return-void
.end method

.method protected updateUIForMode()V
    .locals 3

    .prologue
    .line 996
    .local p0, "this":Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;, "Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase<TT;>;"
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 999
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mHeaderLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1007
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 1008
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->removeView(Landroid/view/View;)V

    .line 1010
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1011
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mFooterLayout:Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;

    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->addViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    :cond_3
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->refreshLoadingViewsSize()V

    .line 1019
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    iput-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase;->mCurrentMode:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 993
    return-void

    .line 1019
    :cond_4
    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_0
.end method
