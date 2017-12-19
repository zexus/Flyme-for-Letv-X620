.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;,
        Landroid/service/wallpaper/WallpaperService$Engine$1;,
        Landroid/service/wallpaper/WallpaperService$Engine$2;,
        Landroid/service/wallpaper/WallpaperService$Engine$3;
    }
.end annotation


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConfiguration:Landroid/content/res/Configuration;

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mCurWindowPrivateFlags:I

.field mDestroyed:Z

.field final mDispatchedContentInsets:Landroid/graphics/Rect;

.field final mDispatchedOutsets:Landroid/graphics/Rect;

.field final mDispatchedOverscanInsets:Landroid/graphics/Rect;

.field final mDispatchedStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field mDrawingAllowed:Z

.field final mFinalStableInsets:Landroid/graphics/Rect;

.field final mFinalSystemInsets:Landroid/graphics/Rect;

.field mFixedSizeAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field mIsCreating:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field mOffsetMessageEnqueued:Z

.field mOffsetsChanged:Z

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field mReportedVisible:Z

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field mWindowPrivateFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static synthetic -get0(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .locals 1

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;

    .prologue
    .line 156
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 182
    const/16 v0, 0x10

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 184
    const/4 v0, 0x4

    .line 183
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 185
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 186
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    .line 199
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    .line 202
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 201
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 206
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    .line 233
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 312
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 1119
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 156
    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 616
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 621
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 622
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 612
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 618
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 624
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .locals 4
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .prologue
    const/4 v3, 0x0

    .line 892
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 894
    return-void

    .line 897
    :cond_1
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 898
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->-get0(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 899
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 900
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    .line 901
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 903
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 905
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 907
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 910
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 911
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    .line 912
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 914
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_2
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 917
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    .line 918
    iput-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 919
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 891
    return-void
.end method

.method detach()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1070
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1071
    return-void

    .line 1074
    :cond_0
    sget-boolean v1, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1075
    const-string/jumbo v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "detach engine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    .line 1079
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_2

    .line 1080
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1083
    :cond_2
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v1, :cond_4

    .line 1084
    iput-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 1085
    sget-boolean v1, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVisibilityChanged(false): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_3
    invoke-virtual {p0, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1089
    :cond_4
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 1091
    sget-boolean v1, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_5
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 1094
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v1, :cond_8

    .line 1096
    :try_start_0
    sget-boolean v1, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing window and destroying surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1097
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 1096
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1097
    const-string/jumbo v3, " of: "

    .line 1096
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_6
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v1, :cond_7

    .line 1100
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 1101
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1104
    :cond_7
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :goto_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, v1, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1108
    iput-boolean v5, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 1112
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_8

    .line 1113
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 1114
    iput-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    .line 1069
    :cond_8
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 9
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .prologue
    .line 1038
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_2

    .line 1039
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    .line 1040
    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v0, p0

    .line 1039
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v8

    .line 1044
    :goto_0
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v0, :cond_1

    .line 1046
    :try_start_0
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperService"

    const-string/jumbo v1, "Reporting command complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :cond_1
    :goto_1
    return-void

    .line 1042
    :cond_2
    const/4 v8, 0x0

    .local v8, "result":Landroid/os/Bundle;
    goto :goto_0

    .line 1048
    .end local v8    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method doDesiredSizeChanged(II)V
    .locals 3
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 923
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 924
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesiredSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 925
    const-string/jumbo v2, ","

    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 925
    const-string/jumbo v2, "): "

    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 927
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 928
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->onDesiredSizeChanged(II)V

    .line 929
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 922
    :cond_1
    return-void
.end method

.method doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 934
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 935
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayPaddingChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 937
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 938
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 933
    :cond_1
    return-void
.end method

.method doOffsetsChanged(Z)V
    .locals 14
    .param p1, "always"    # Z

    .prologue
    const/high16 v13, 0x3f000000    # 0.5f

    .line 990
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 991
    return-void

    .line 994
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    if-eqz v0, :cond_6

    .line 1003
    :cond_1
    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1004
    :try_start_0
    iget v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    .line 1005
    .local v1, "xOffset":F
    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffset:F

    .line 1006
    .local v2, "yOffset":F
    iget v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    .line 1007
    .local v3, "xOffsetStep":F
    iget v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingYOffsetStep:F

    .line 1008
    .local v4, "yOffsetStep":F
    iget-boolean v10, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 1009
    .local v10, "sync":Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    .line 1010
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 1013
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v0, :cond_3

    .line 1014
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-eqz v0, :cond_9

    .line 1015
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WallpaperService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Offsets change in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1016
    const-string/jumbo v12, ": "

    .line 1015
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1016
    const-string/jumbo v12, ","

    .line 1015
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_2
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    sub-int v8, v0, v11

    .line 1018
    .local v8, "availw":I
    if-lez v8, :cond_7

    int-to-float v0, v8

    mul-float/2addr v0, v1

    add-float/2addr v0, v13

    float-to-int v0, v0

    neg-int v5, v0

    .line 1019
    .local v5, "xPixels":I
    :goto_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    sub-int v7, v0, v11

    .line 1020
    .local v7, "availh":I
    if-lez v7, :cond_8

    int-to-float v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v13

    float-to-int v0, v0

    neg-int v6, v0

    .local v6, "yPixels":I
    :goto_1
    move-object v0, p0

    .line 1021
    invoke-virtual/range {v0 .. v6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 1027
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_3
    :goto_2
    if-eqz v10, :cond_5

    .line 1029
    :try_start_1
    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "WallpaperService"

    const-string/jumbo v11, "Reporting offsets change complete"

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_4
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v11, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v11}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v0, v11}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 989
    :cond_5
    :goto_3
    return-void

    .line 995
    .end local v1    # "xOffset":F
    .end local v2    # "yOffset":F
    .end local v3    # "xOffsetStep":F
    .end local v4    # "yOffsetStep":F
    .end local v10    # "sync":Z
    :cond_6
    return-void

    .line 1003
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 1018
    .restart local v1    # "xOffset":F
    .restart local v2    # "yOffset":F
    .restart local v3    # "xOffsetStep":F
    .restart local v4    # "yOffsetStep":F
    .restart local v8    # "availw":I
    .restart local v10    # "sync":Z
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "xPixels":I
    goto :goto_0

    .line 1020
    .restart local v7    # "availh":I
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "yPixels":I
    goto :goto_1

    .line 1023
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetsChanged:Z

    goto :goto_2

    .line 1031
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method doVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 945
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 949
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 950
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    .line 951
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportVisibility()V

    .line 943
    :cond_1
    return-void

    .line 946
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    goto :goto_0
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 573
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 574
    const-string/jumbo v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 575
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 576
    const-string/jumbo v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 579
    const-string/jumbo v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 580
    const-string/jumbo v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 581
    const-string/jumbo v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 582
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 583
    const-string/jumbo v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 584
    const-string/jumbo v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 585
    const-string/jumbo v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 586
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 587
    const-string/jumbo v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 588
    const-string/jumbo v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 589
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 590
    const-string/jumbo v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 591
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v0, " mWinFrame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    const-string/jumbo v0, " mContentInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 596
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 597
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 599
    const-string/jumbo v0, " mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 600
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 602
    const-string/jumbo v0, " mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 603
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 605
    const-string/jumbo v0, " mPendingSync="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingSync:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 606
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingMove="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 572
    return-void

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDesiredMinimumHeight()I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method protected final getWallpaperType()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    if-nez v0, :cond_0

    .line 225
    const/4 v0, -0x1

    return v0

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 491
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .prologue
    .line 534
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 465
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .locals 0
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 541
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .prologue
    .line 512
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 548
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 562
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 569
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 555
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 501
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 481
    return-void
.end method

.method reportSurfaceDestroyed()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1054
    iget-boolean v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v3, :cond_2

    .line 1055
    iput-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 1056
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1057
    iget-object v3, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v1

    .line 1058
    .local v1, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v1, :cond_0

    .line 1059
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1060
    .local v0, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1059
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1063
    .end local v0    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_0
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceDestroyed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1064
    iget-object v4, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 1063
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1064
    const-string/jumbo v4, "): "

    .line 1063
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_1
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1053
    .end local v1    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_2
    return-void
.end method

.method reportVisibility()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 956
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-nez v2, :cond_4

    .line 958
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_5

    move v2, v3

    :goto_0
    iput v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    .line 959
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisible:Z

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplayState:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v1, 0x1

    .line 962
    .local v1, "visible":Z
    :goto_1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "packageName":Ljava/lang/String;
    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mInitializing:Z

    if-eqz v2, :cond_4

    .line 966
    :cond_0
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z

    .line 967
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVisibilityChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 968
    const-string/jumbo v5, "): "

    .line 967
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_1
    if-eqz v1, :cond_2

    .line 973
    invoke-virtual {p0, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    .line 974
    invoke-virtual {p0, v3, v3, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 977
    :cond_2
    if-eqz v0, :cond_3

    .line 978
    const-string/jumbo v2, "com.android.systemui.ImageWallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 979
    const-string/jumbo v2, "com.media.vlw.VideoLiveWallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 984
    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 955
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "visible":Z
    :cond_4
    return-void

    .line 958
    :cond_5
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    goto :goto_0

    .line 959
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_1

    .line 980
    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v2, v1}, Landroid/service/wallpaper/WallpaperService;->-wrap0(Landroid/service/wallpaper/WallpaperService;Z)V

    goto :goto_2
.end method

.method public setFixedSizeAllowed(Z)V
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mFixedSizeAllowed:Z

    .line 457
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 446
    if-eqz p1, :cond_1

    .line 447
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    .line 446
    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    .line 451
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 445
    :cond_0
    return-void

    .line 449
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_0
.end method

.method public setTouchEventsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 429
    if-eqz p1, :cond_1

    .line 430
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    .line 429
    :goto_0
    iput v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    .line 432
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0, v1, v1, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 428
    :cond_0
    return-void

    .line 431
    :cond_1
    iget v0, p0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method updateSurface(ZZZ)V
    .locals 39
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .prologue
    .line 629
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 630
    const-string/jumbo v2, "WallpaperService"

    const-string/jumbo v3, "Ignoring updateSurface: destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    const/16 v24, 0x0

    .line 634
    .local v24, "fixedSize":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v31

    .line 635
    .local v31, "myWidth":I
    if-gtz v31, :cond_3

    const/16 v31, -0x1

    .line 637
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v30

    .line 638
    .local v30, "myHeight":I
    if-gtz v30, :cond_4

    const/16 v30, -0x1

    .line 641
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v2, :cond_5

    const/16 v20, 0x0

    .line 642
    .local v20, "creating":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    if-eqz v2, :cond_6

    const/16 v35, 0x0

    .line 643
    .local v35, "surfaceCreating":Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v3

    if-eq v2, v3, :cond_7

    const/16 v26, 0x1

    .line 644
    .local v26, "formatChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move/from16 v0, v31

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    move/from16 v0, v30

    if-eq v2, v0, :cond_8

    :cond_1
    const/16 v34, 0x1

    .line 645
    .local v34, "sizeChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-eqz v2, :cond_9

    const/16 v29, 0x0

    .line 646
    .local v29, "insetsChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_a

    const/16 v36, 0x1

    .line 647
    .local v36, "typeChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    if-ne v2, v3, :cond_b

    .line 648
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    if-eq v2, v3, :cond_c

    const/16 v25, 0x1

    .line 649
    .local v25, "flagsChanged":Z
    :goto_8
    if-nez p1, :cond_d

    if-nez v20, :cond_d

    if-nez v35, :cond_d

    if-nez v26, :cond_d

    if-nez v34, :cond_d

    if-nez v36, :cond_d

    if-nez v25, :cond_d

    if-nez p3, :cond_d

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-eqz v2, :cond_d

    .line 628
    .end local v29    # "insetsChanged":Z
    :cond_2
    :goto_9
    return-void

    .line 636
    .end local v20    # "creating":Z
    .end local v25    # "flagsChanged":Z
    .end local v26    # "formatChanged":Z
    .end local v30    # "myHeight":I
    .end local v34    # "sizeChanged":Z
    .end local v35    # "surfaceCreating":Z
    .end local v36    # "typeChanged":Z
    :cond_3
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 639
    .restart local v30    # "myHeight":I
    :cond_4
    const/16 v24, 0x1

    goto :goto_1

    .line 641
    :cond_5
    const/16 v20, 0x1

    .restart local v20    # "creating":Z
    goto :goto_2

    .line 642
    :cond_6
    const/16 v35, 0x1

    .restart local v35    # "surfaceCreating":Z
    goto :goto_3

    .line 643
    :cond_7
    const/16 v26, 0x0

    .restart local v26    # "formatChanged":Z
    goto :goto_4

    .line 644
    :cond_8
    const/16 v34, 0x0

    .restart local v34    # "sizeChanged":Z
    goto :goto_5

    .line 645
    :cond_9
    const/16 v29, 0x1

    .restart local v29    # "insetsChanged":Z
    goto :goto_6

    .line 646
    :cond_a
    const/16 v36, 0x0

    .restart local v36    # "typeChanged":Z
    goto :goto_7

    .line 647
    :cond_b
    const/16 v25, 0x1

    .restart local v25    # "flagsChanged":Z
    goto :goto_8

    .line 648
    .end local v25    # "flagsChanged":Z
    :cond_c
    const/16 v25, 0x0

    .restart local v25    # "flagsChanged":Z
    goto :goto_8

    .line 653
    :cond_d
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Changes: creating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 654
    const-string/jumbo v4, " format="

    .line 653
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 654
    const-string/jumbo v4, " size="

    .line 653
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_e
    :try_start_0
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    .line 658
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v31

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 669
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowFlags:I

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowFlags:I

    or-int/lit16 v3, v3, 0x200

    or-int/lit16 v3, v3, 0x100

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 675
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWindowPrivateFlags:I

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowPrivateFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindowToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 681
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    if-nez v2, :cond_10

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    .line 684
    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    .line 683
    invoke-virtual {v2, v3}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v38

    .line 685
    .local v38, "windowStyle":Landroid/content/res/TypedArray;
    invoke-virtual/range {v38 .. v38}, Landroid/content/res/TypedArray;->recycle()V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 692
    const v3, 0x10302ea

    .line 691
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 693
    new-instance v2, Landroid/view/InputChannel;

    invoke-direct {v2}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 695
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    .line 696
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    .line 694
    const/4 v6, 0x0

    .line 695
    const/4 v7, 0x0

    .line 694
    invoke-interface/range {v2 .. v11}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v2

    if-gez v2, :cond_f

    .line 697
    const-string/jumbo v2, "WallpaperService"

    const-string/jumbo v3, "Failed to add window while updating wallpaper surface."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 700
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCreated:Z

    .line 702
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .line 702
    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 706
    .end local v38    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 707
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDrawingAllowed:Z

    .line 709
    if-nez v24, :cond_17

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 718
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mHeight:I

    .line 720
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    .line 721
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    .line 722
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v8, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    .line 720
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 718
    invoke-interface/range {v2 .. v17}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v33

    .line 724
    .local v33, "relayoutResult":I
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "New surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 725
    const-string/jumbo v4, ", frame="

    .line 724
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    .line 724
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v37

    .line 728
    .local v37, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v27

    .line 730
    .local v27, "h":I
    if-nez v24, :cond_12

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    .line 732
    .local v32, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, v32

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int v37, v37, v2

    .line 733
    move-object/from16 v0, v32

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v32

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int v27, v27, v2

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 737
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 748
    .end local v32    # "padding":Landroid/graphics/Rect;
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move/from16 v0, v37

    if-eq v2, v0, :cond_13

    .line 749
    const/16 v34, 0x1

    .line 750
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    .line 752
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    move/from16 v0, v27

    if-eq v2, v0, :cond_14

    .line 753
    const/16 v34, 0x1

    .line 754
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 757
    :cond_14
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_15

    .line 758
    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wallpaper size has changed: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    :goto_b
    or-int v29, v29, v2

    .line 762
    .local v29, "insetsChanged":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    :goto_c
    or-int v29, v29, v2

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    :goto_d
    or-int v29, v29, v2

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    :goto_e
    or-int v29, v29, v2

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 770
    invoke-virtual/range {p0 .. p0}, Landroid/service/wallpaper/WallpaperService$Engine;->reportSurfaceDestroyed()V

    .line 771
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "WallpaperService"

    const-string/jumbo v3, "Layout: Surface destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_16
    return-void

    .line 716
    .end local v27    # "h":I
    .end local v33    # "relayoutResult":I
    .end local v37    # "w":I
    .local v29, "insetsChanged":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    .line 883
    .end local v29    # "insetsChanged":Z
    :catch_0
    move-exception v23

    .line 885
    :goto_f
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 886
    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Layout: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 887
    const-string/jumbo v4, " w="

    .line 886
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 886
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 887
    const-string/jumbo v4, " h="

    .line 886
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 886
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 761
    .restart local v27    # "h":I
    .restart local v29    # "insetsChanged":Z
    .restart local v33    # "relayoutResult":I
    .restart local v37    # "w":I
    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_b

    .line 762
    .local v29, "insetsChanged":Z
    :cond_19
    const/4 v2, 0x1

    goto/16 :goto_c

    .line 763
    :cond_1a
    const/4 v2, 0x1

    goto/16 :goto_d

    .line 764
    :cond_1b
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 775
    :cond_1c
    const/16 v21, 0x0

    .line 778
    .local v21, "didSurface":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 780
    if-eqz v35, :cond_1e

    .line 781
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 782
    const/16 v21, 0x1

    .line 783
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceCreated("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 784
    const-string/jumbo v4, "): "

    .line 783
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 787
    .local v19, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_1e

    .line 788
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    :goto_10
    if-ge v2, v3, :cond_1e

    aget-object v18, v19, v2

    .line 789
    .local v18, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 794
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_1e
    if-nez v20, :cond_1f

    and-int/lit8 v2, v33, 0x2

    if-eqz v2, :cond_23

    :cond_1f
    const/4 v2, 0x1

    :goto_11
    or-int p3, p3, v2

    .line 797
    if-nez p2, :cond_20

    if-nez v20, :cond_20

    if-nez v35, :cond_20

    if-nez v26, :cond_20

    if-eqz v34, :cond_24

    .line 799
    :cond_20
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_21

    .line 800
    new-instance v22, Ljava/lang/RuntimeException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/RuntimeException;-><init>()V

    .line 801
    .local v22, "e":Ljava/lang/RuntimeException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 802
    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceReport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " creating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 803
    const-string/jumbo v4, " formatChanged="

    .line 802
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 804
    const-string/jumbo v4, " sizeChanged="

    .line 802
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 806
    .end local v22    # "e":Ljava/lang/RuntimeException;
    :cond_21
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_22

    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 807
    const-string/jumbo v4, ", "

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 807
    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 808
    const-string/jumbo v4, ", "

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 808
    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 808
    const-string/jumbo v4, ", "

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 808
    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 809
    const-string/jumbo v4, "): "

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_22
    const/16 v21, 0x1

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 812
    move-object/from16 v0, p0

    iget v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 811
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 814
    .restart local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_24

    .line 815
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    :goto_12
    if-ge v2, v3, :cond_24

    aget-object v18, v19, v2

    .line 816
    .restart local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFormat:I

    .line 817
    move-object/from16 v0, p0

    iget v6, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mCurHeight:I

    .line 816
    move-object/from16 v0, v18

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 794
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 822
    :cond_24
    if-eqz v29, :cond_26

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 833
    new-instance v28, Landroid/view/WindowInsets;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalSystemInsets:Landroid/graphics/Rect;

    .line 834
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mFinalStableInsets:Landroid/graphics/Rect;

    .line 835
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v4}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v4

    .line 834
    const/4 v5, 0x0

    .line 833
    move-object/from16 v0, v28

    invoke-direct {v0, v2, v5, v3, v4}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 836
    .local v28, "insets":Landroid/view/WindowInsets;
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_25

    .line 837
    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dispatching insets="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService$Engine;->onApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 842
    .end local v28    # "insets":Landroid/view/WindowInsets;
    :cond_26
    if-eqz p3, :cond_28

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 845
    .restart local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v19, :cond_28

    .line 846
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v3, v0

    :goto_13
    if-ge v2, v3, :cond_28

    aget-object v18, v19, v2

    .line 847
    .restart local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    instance-of v4, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_27

    .line 848
    check-cast v18, Landroid/view/SurfaceHolder$Callback2;

    .line 849
    .end local v18    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 848
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 846
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 855
    .end local v19    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_28
    if-eqz v21, :cond_29

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mReportedVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2b

    .line 876
    :cond_29
    :goto_14
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 877
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 878
    if-eqz p3, :cond_2a

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 881
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_f

    .line 861
    :cond_2b
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    if-eqz v2, :cond_2d

    .line 866
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_2c

    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVisibilityChanged(true) at surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_2c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 870
    :cond_2d
    sget-boolean v2, Landroid/service/wallpaper/WallpaperService;->DEBUG:Z

    if-eqz v2, :cond_2e

    const-string/jumbo v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVisibilityChanged(false) at surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_2e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_14

    .line 875
    :catchall_0
    move-exception v2

    .line 876
    const/4 v3, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIsCreating:Z

    .line 877
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSurfaceCreated:Z

    .line 878
    if-eqz p3, :cond_2f

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 881
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    .line 875
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
.end method
