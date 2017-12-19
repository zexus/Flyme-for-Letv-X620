.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;,
        Landroid/view/SurfaceView$1;,
        Landroid/view/SurfaceView$2;,
        Landroid/view/SurfaceView$3;,
        Landroid/view/SurfaceView$4;
    }
.end annotation


# static fields
.field private static final DBG_UPDATE_WINDOW:I = 0x1

.field private static DEBUG:Z = false

.field static final FORCE_UPDATE_WINDOW_MSG:I = 0x4

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final LOG_PROPERTY_NAME:Ljava/lang/String; = "debug.surfaceview.dumpinfo"

.field private static LOG_UPDATE_WINDOW:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field mLastHeight:I

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    sput-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 101
    sput-boolean v0, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 219
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 111
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 115
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 114
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 131
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 133
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 135
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 161
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 172
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 173
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 174
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 176
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 180
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 182
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 183
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 186
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 187
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 188
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 189
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 190
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 191
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 193
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 203
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 202
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 877
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 220
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 111
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 115
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 114
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 131
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 133
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 135
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 161
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 172
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 173
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 174
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 176
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 180
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 182
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 183
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 186
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 187
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 188
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 189
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 190
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 191
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 193
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 203
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 202
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 877
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 225
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 111
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 115
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 114
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 131
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 133
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 135
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 161
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 172
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 173
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 174
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 176
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 180
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 182
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 183
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 186
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 187
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 188
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 189
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 190
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 191
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 193
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 203
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 202
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 877
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 230
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 234
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 109
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 111
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 115
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 114
    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 131
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 133
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 135
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    .line 161
    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 172
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 173
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 174
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 176
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 180
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 182
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 183
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 186
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 187
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 188
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 189
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 190
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 191
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 193
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 203
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    .line 202
    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 877
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 235
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 233
    return-void
.end method

.method private static checkLogProperty()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1064
    const-string/jumbo v5, "debug.surfaceview.dumpinfo"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    .local v0, "dumpString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1066
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_1

    .line 1067
    :cond_0
    const-string/jumbo v3, "SurfaceView"

    const-string/jumbo v4, "checkSurfaceViewlLogProperty get invalid command"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    return-void

    .line 1070
    :cond_1
    const/4 v2, 0x0

    .line 1072
    .local v2, "logFilter":I
    const/4 v5, 0x2

    :try_start_0
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1076
    :goto_0
    and-int/lit8 v5, v2, 0x1

    if-ne v5, v3, :cond_3

    :goto_1
    sput-boolean v3, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    .line 1078
    const-string/jumbo v3, "SurfaceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkSurfaceViewlLogProperty debug filter: UPDATE_WINDOW="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1079
    sget-boolean v5, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    .line 1078
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v2    # "logFilter":I
    :cond_2
    return-void

    .line 1073
    .restart local v2    # "logFilter":I
    :catch_0
    move-exception v1

    .line 1074
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "SurfaceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid format of propery string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move v3, v4

    .line 1076
    goto :goto_1
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .prologue
    .line 768
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 769
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 770
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 772
    return-object v0

    .line 768
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 241
    invoke-static {}, Landroid/view/SurfaceView;->checkLogProperty()V

    .line 238
    return-void
.end method


# virtual methods
.method public captureSurface()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 802
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->captureSurface()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 410
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 412
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 414
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 415
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 416
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Punch a hole(dispatchDraw), w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/SurfaceView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 417
    iget v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 417
    const-string/jumbo v2, ", this = "

    .line 416
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 409
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 394
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 396
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 398
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 399
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 400
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Punch a hole(draw), w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/SurfaceView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    iget v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 401
    const-string/jumbo v2, ", this = "

    .line 400
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 393
    return-void
.end method

.method protected enableLog(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1055
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableLog enable, this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    sput-boolean p1, Landroid/view/SurfaceView;->DEBUG:Z

    .line 1054
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    const/4 v4, 0x0

    .line 367
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_0

    .line 368
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0

    .line 371
    :cond_0
    const/4 v7, 0x1

    .line 372
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 374
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 386
    .end local v7    # "opaque":Z
    :cond_1
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    const/4 v7, 0x0

    .line 389
    :cond_2
    return v7

    .line 375
    .restart local v7    # "opaque":Z
    :cond_3
    if-eqz p1, :cond_1

    .line 376
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 377
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 378
    .local v6, "h":I
    if-lez v8, :cond_1

    if-lez v6, :cond_1

    .line 379
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 381
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    aget v1, v0, v4

    .line 382
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 383
    .local v2, "t":I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getWindowAlpha()F
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return v0
.end method

.method public getWindowFlag()I
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method handleGetNewSurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 776
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 777
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWindow -- handleGetNewSurface, this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    invoke-virtual {p0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 775
    return-void
.end method

.method public isFixedSize()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 790
    iget v1, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 259
    iget-object v3, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSurfaceViewCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/view/View$AttachInfo;->mSurfaceViewCount:I

    .line 262
    :cond_0
    iget-object v3, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 263
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v3

    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 264
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 265
    iget-object v3, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "SurfaceView"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 268
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v1, :cond_2

    .line 269
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 270
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 271
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 272
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 255
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 312
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v2, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 314
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 315
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 316
    iput-boolean v5, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 319
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v5, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 320
    sget-boolean v2, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 321
    const-string/jumbo v2, "SurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWindow -- onDetachedFromWindow, this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    invoke-virtual {p0, v5, v5}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 324
    iput-boolean v5, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 325
    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v2, :cond_2

    .line 327
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    iput-object v6, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 333
    :cond_2
    iput-object v6, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 334
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v6, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 337
    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_3

    .line 338
    iget-object v2, p0, Landroid/view/SurfaceView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSurfaceViewCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/view/View$AttachInfo;->mSurfaceViewCount:I

    .line 340
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 311
    return-void

    .line 328
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 345
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_0

    .line 346
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    .line 348
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    .line 349
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    .line 351
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 344
    return-void

    .line 347
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    .restart local v1    # "width":I
    goto :goto_0

    .line 350
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 279
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 280
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    :goto_1
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 281
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 282
    const-string/jumbo v0, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindow -- onWindowVisibilityChanged, visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    const-string/jumbo v3, ", this = "

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 277
    return-void

    :cond_1
    move v0, v1

    .line 279
    goto :goto_0

    :cond_2
    move v0, v1

    .line 280
    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 358
    .local v0, "result":Z
    sget-boolean v1, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 359
    const-string/jumbo v1, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindow -- setFrame, this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    invoke-virtual {p0, v4, v4}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 362
    return v0
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 478
    if-eqz p1, :cond_0

    .line 479
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 477
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 291
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 292
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 293
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 302
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 303
    sget-boolean v1, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 304
    const-string/jumbo v1, "SurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateWindow -- setVisibility, visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    const-string/jumbo v4, ", this = "

    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 289
    return-void

    :cond_2
    move v1, v2

    .line 291
    goto :goto_0

    .line 292
    :cond_3
    const/4 v0, 0x0

    .local v0, "newRequestedVisible":Z
    goto :goto_1
.end method

.method public setWindowAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1116
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1117
    iget-object v1, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1118
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1115
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 1
    .param p1, "requestFlags"    # I

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1095
    return-void
.end method

.method public setWindowType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 491
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 490
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .prologue
    .line 436
    if-eqz p1, :cond_0

    .line 437
    const/16 v0, 0x3ec

    .line 436
    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 435
    return-void

    .line 438
    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    .prologue
    .line 455
    if-eqz p1, :cond_0

    .line 456
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 458
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 454
    :goto_0
    return-void

    .line 460
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 461
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected updateWindow(ZZ)V
    .locals 40
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v4, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_1

    .line 500
    const-string/jumbo v4, "SurfaceView updateWindow start"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 502
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v37

    .line 503
    .local v37, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v37, :cond_2

    .line 504
    move-object/from16 v0, v37

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 507
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 511
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v29, v0

    .line 512
    .local v29, "myWidth":I
    if-gtz v29, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v29

    .line 513
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v28, v0

    .line 514
    .local v28, "myHeight":I
    if-gtz v28, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v28

    .line 516
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLastWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLastHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_19

    :cond_6
    const/16 v26, 0x1

    .line 518
    .local v26, "forceSizeChanged":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v4, :cond_1a

    const/16 v23, 0x1

    .line 520
    .local v23, "creating":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v4, v5, :cond_1b

    const/16 v27, 0x1

    .line 521
    .local v27, "formatChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWidth:I

    move/from16 v0, v29

    if-ne v4, v0, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mHeight:I

    move/from16 v0, v28

    if-eq v4, v0, :cond_1c

    :cond_7
    const/16 v33, 0x1

    .line 522
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v4, v5, :cond_1d

    const/16 v39, 0x1

    .line 524
    .local v39, "visibleChanged":Z
    :goto_4
    if-nez p1, :cond_8

    if-nez v23, :cond_8

    if-nez v27, :cond_8

    if-nez v33, :cond_8

    if-nez v39, :cond_8

    .line 525
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLeft:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eq v4, v5, :cond_1e

    .line 528
    :cond_8
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_9

    .line 529
    const-string/jumbo v4, "SurfaceView property changed"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 532
    :cond_9
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string/jumbo v5, "SurfaceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Changes: creating="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 533
    const-string/jumbo v6, " format="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 533
    const-string/jumbo v6, " size="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 534
    const-string/jumbo v6, " visible="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 535
    const-string/jumbo v6, " left="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 535
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLeft:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    if-eq v4, v7, :cond_21

    const/4 v4, 0x1

    .line 532
    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    const-string/jumbo v6, " top="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 536
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTop:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    if-eq v4, v7, :cond_22

    const/4 v4, 0x1

    .line 532
    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 538
    const-string/jumbo v6, " mUpdateWindowNeeded="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 538
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    const-string/jumbo v6, " mReportDrawNeeded="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    const-string/jumbo v6, " redrawNeeded="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 541
    const-string/jumbo v6, " forceSizeChanged="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    const-string/jumbo v6, " mVisible="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/SurfaceView;->mVisible:Z

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    const-string/jumbo v6, " mRequestedVisible="

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 543
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    const-string/jumbo v6, ", this = "

    .line 532
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 549
    .local v38, "visible":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mLeft:I

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mTop:I

    .line 551
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 552
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 557
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/SurfaceView;->mFormat:I

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mLeft:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 563
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mTop:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 564
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 566
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_b

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 570
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x4218

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 578
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_c

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 582
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 584
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v4, :cond_e

    .line 585
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object v24

    .line 586
    .local v24, "display":Landroid/view/Display;
    new-instance v4, Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 587
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/SurfaceView;->mWindowType:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 588
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x800033

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 589
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_d

    .line 591
    const-string/jumbo v4, "SurfaceView addToDisplayWithoutInputChannel"

    .line 590
    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 593
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 594
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v8, :cond_23

    const/4 v8, 0x0

    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 595
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 593
    invoke-interface/range {v4 .. v11}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 596
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_e

    .line 597
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    .end local v24    # "display":Landroid/view/Display;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v32, v0

    .line 610
    .local v32, "reportDrawNeeded":Z
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 611
    if-eqz v38, :cond_24

    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 613
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "SurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cur surface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_f
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_10

    .line 616
    const-string/jumbo v4, "SurfaceView relayout"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 618
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 619
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v6, v6, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/SurfaceView;->mHeight:I

    .line 620
    if-eqz v38, :cond_25

    const/4 v10, 0x0

    .line 622
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 623
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    move-object/from16 v19, v0

    .line 621
    const/4 v11, 0x2

    .line 618
    invoke-interface/range {v4 .. v19}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v31

    .line 625
    .local v31, "relayoutResult":I
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_11

    .line 626
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 629
    :cond_11
    and-int/lit8 v4, v31, 0x2

    if-eqz v4, :cond_12

    .line 630
    const/16 v32, 0x1

    .line 633
    .end local v32    # "reportDrawNeeded":Z
    :cond_12
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_13

    const-string/jumbo v4, "SurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New surface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 634
    const-string/jumbo v6, ", vis="

    .line 633
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 634
    const-string/jumbo v6, ", frame="

    .line 633
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 634
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 633
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 634
    const-string/jumbo v6, ", this = "

    .line 633
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v4, :cond_26

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 647
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    .line 648
    .local v36, "surfaceWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    .line 649
    .local v35, "surfaceHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v36

    if-ne v4, v0, :cond_29

    .line 650
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v35

    if-eq v4, v0, :cond_2a

    const/16 v30, 0x1

    .line 651
    .local v30, "realSizeChanged":Z
    :goto_b
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 652
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 658
    :try_start_3
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_14

    .line 659
    const-string/jumbo v4, "SurfaceView callback block"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 662
    :cond_14
    or-int v4, v23, v32

    or-int p2, p2, v4

    .line 664
    const/16 v22, 0x0

    .line 666
    .local v22, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v4, v31, 0x4

    if-eqz v4, :cond_2b

    const/16 v34, 0x1

    .line 668
    .local v34, "surfaceChanged":Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v4, :cond_2c

    if-nez v34, :cond_15

    if-nez v38, :cond_2c

    if-eqz v39, :cond_2c

    .line 669
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 671
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string/jumbo v4, "SurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Callback --> surfaceDestroyed, this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 673
    .local v22, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    array-length v5, v0

    :goto_d
    if-ge v4, v5, :cond_2c

    aget-object v21, v22, v4

    .line 674
    .local v21, "c":Landroid/view/SurfaceHolder$Callback;
    sget-boolean v6, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v6, :cond_17

    .line 675
    const-string/jumbo v6, "SurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "surfaceDestroyed callback +, this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 678
    sget-boolean v6, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v6, :cond_18

    .line 679
    const-string/jumbo v6, "SurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "surfaceDestroyed callback -, this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 673
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 516
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v23    # "creating":Z
    .end local v26    # "forceSizeChanged":Z
    .end local v27    # "formatChanged":Z
    .end local v30    # "realSizeChanged":Z
    .end local v31    # "relayoutResult":I
    .end local v34    # "surfaceChanged":Z
    .end local v35    # "surfaceHeight":I
    .end local v36    # "surfaceWidth":I
    .end local v38    # "visible":Z
    .end local v39    # "visibleChanged":Z
    :cond_19
    const/16 v26, 0x0

    .restart local v26    # "forceSizeChanged":Z
    goto/16 :goto_0

    .line 519
    :cond_1a
    const/16 v23, 0x0

    .restart local v23    # "creating":Z
    goto/16 :goto_1

    .line 520
    :cond_1b
    const/16 v27, 0x0

    .restart local v27    # "formatChanged":Z
    goto/16 :goto_2

    .line 521
    :cond_1c
    move/from16 v33, v26

    .local v33, "sizeChanged":Z
    goto/16 :goto_3

    .line 522
    .end local v33    # "sizeChanged":Z
    :cond_1d
    const/16 v39, 0x0

    .restart local v39    # "visibleChanged":Z
    goto/16 :goto_4

    .line 525
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTop:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ne v4, v5, :cond_8

    .line 526
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 524
    if-nez v4, :cond_8

    .line 526
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 524
    if-nez v4, :cond_8

    if-nez p2, :cond_8

    .line 761
    :cond_1f
    :goto_e
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_20

    .line 762
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 495
    :cond_20
    return-void

    .line 535
    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 536
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 594
    .restart local v24    # "display":Landroid/view/Display;
    .restart local v38    # "visible":Z
    :cond_23
    const/16 v8, 0x8

    goto/16 :goto_7

    .line 611
    .end local v24    # "display":Landroid/view/Display;
    .restart local v32    # "reportDrawNeeded":Z
    :cond_24
    const/4 v4, 0x1

    goto/16 :goto_8

    .line 620
    :cond_25
    const/16 v10, 0x8

    goto/16 :goto_9

    .line 642
    .end local v32    # "reportDrawNeeded":Z
    .restart local v31    # "relayoutResult":I
    :cond_26
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v20, v0

    .line 643
    .local v20, "appInvertedScale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v20

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 644
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v20

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_a

    .line 653
    .end local v20    # "appInvertedScale":F
    .end local v31    # "relayoutResult":I
    :catchall_0
    move-exception v4

    .line 654
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 653
    throw v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 751
    .end local v38    # "visible":Z
    :catch_0
    move-exception v25

    .line 753
    :cond_27
    :goto_f
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_28

    .line 754
    const-string/jumbo v4, "SurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Layout: x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 755
    const-string/jumbo v6, " w="

    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 755
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 755
    const-string/jumbo v6, " h="

    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 755
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 756
    const-string/jumbo v6, ", frame="

    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 756
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 756
    const-string/jumbo v6, ", this = "

    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 753
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_28
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_1f

    .line 758
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_e

    .line 649
    .restart local v31    # "relayoutResult":I
    .restart local v35    # "surfaceHeight":I
    .restart local v36    # "surfaceWidth":I
    .restart local v38    # "visible":Z
    :cond_29
    const/16 v30, 0x1

    .restart local v30    # "realSizeChanged":Z
    goto/16 :goto_b

    .line 650
    .end local v30    # "realSizeChanged":Z
    :cond_2a
    const/16 v30, 0x0

    .restart local v30    # "realSizeChanged":Z
    goto/16 :goto_b

    .line 666
    .local v22, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_2b
    const/16 v34, 0x0

    .restart local v34    # "surfaceChanged":Z
    goto/16 :goto_c

    .line 685
    .end local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_2c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 687
    if-eqz v38, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 688
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v4, :cond_32

    if-nez v34, :cond_2d

    if-eqz v39, :cond_32

    .line 689
    :cond_2d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 690
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 691
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_2e

    const-string/jumbo v4, "SurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Callback --> surfaceCreated, this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2e
    if-nez v22, :cond_2f

    .line 693
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 695
    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, v22

    array-length v5, v0

    :goto_10
    if-ge v4, v5, :cond_32

    aget-object v21, v22, v4

    .line 696
    .restart local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    sget-boolean v6, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v6, :cond_30

    const-string/jumbo v6, "SurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "surfaceCreated callback +, this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_30
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 698
    sget-boolean v6, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v6, :cond_31

    const-string/jumbo v6, "SurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "surfaceCreated callback -, this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 701
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_32
    if-nez v23, :cond_33

    if-nez v27, :cond_33

    if-nez v33, :cond_33

    if-nez v39, :cond_33

    if-eqz v30, :cond_38

    .line 703
    :cond_33
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_34

    const-string/jumbo v4, "SurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "surfaceChanged -- format="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 704
    const-string/jumbo v6, " w="

    .line 703
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 704
    const-string/jumbo v6, " h="

    .line 703
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 704
    const-string/jumbo v6, ", this = "

    .line 703
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_34
    if-nez v22, :cond_35

    .line 706
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 708
    :cond_35
    const/4 v4, 0x0

    move-object/from16 v0, v22

    array-length v5, v0

    :goto_11
    if-ge v4, v5, :cond_38

    aget-object v21, v22, v4

    .line 709
    .restart local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    sget-boolean v6, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v6, :cond_36

    const-string/jumbo v6, "SurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "surfaceChanged callback +, this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_36
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-interface {v0, v6, v7, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 711
    sget-boolean v6, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v6, :cond_37

    const-string/jumbo v6, "SurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "surfaceChanged callback -, this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 714
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_38
    if-eqz p2, :cond_3c

    .line 715
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_39

    const-string/jumbo v4, "SurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "surfaceRedrawNeeded, this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_39
    if-nez v22, :cond_3a

    .line 717
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 719
    :cond_3a
    const/4 v4, 0x0

    move-object/from16 v0, v22

    array-length v5, v0

    :goto_12
    if-ge v4, v5, :cond_3c

    aget-object v21, v22, v4

    .line 720
    .restart local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v21

    instance-of v6, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v6, :cond_3b

    .line 721
    check-cast v21, Landroid/view/SurfaceHolder$Callback2;

    .line 722
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 721
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 719
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 727
    :cond_3c
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_3d

    .line 728
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 731
    :cond_3d
    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 732
    if-eqz p2, :cond_40

    .line 733
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v4, :cond_3e

    const-string/jumbo v4, "SurfaceView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "finishedDrawing, this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_3e
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_3f

    .line 735
    const-string/jumbo v4, "SurfaceView finishDrawing"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 737
    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 738
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_40

    .line 739
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    :cond_40
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_41

    .line 744
    const-string/jumbo v4, "SurfaceView performDeferredDestroy"

    .line 743
    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 746
    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    .line 747
    sget-boolean v4, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v4, :cond_27

    .line 748
    const-wide/16 v4, 0x8

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_f

    .line 730
    .end local v34    # "surfaceChanged":Z
    :catchall_1
    move-exception v4

    .line 731
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 732
    if-eqz p2, :cond_44

    .line 733
    sget-boolean v5, Landroid/view/SurfaceView;->DEBUG:Z

    if-eqz v5, :cond_42

    const-string/jumbo v5, "SurfaceView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishedDrawing, this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_42
    sget-boolean v5, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v5, :cond_43

    .line 735
    const-string/jumbo v5, "SurfaceView finishDrawing"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 737
    :cond_43
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 738
    sget-boolean v5, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v5, :cond_44

    .line 739
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 742
    :cond_44
    sget-boolean v5, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v5, :cond_45

    .line 744
    const-string/jumbo v5, "SurfaceView performDeferredDestroy"

    .line 743
    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 746
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v5, v6}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    .line 747
    sget-boolean v5, Landroid/view/SurfaceView;->LOG_UPDATE_WINDOW:Z

    if-eqz v5, :cond_46

    .line 748
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 730
    :cond_46
    throw v4
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
.end method
