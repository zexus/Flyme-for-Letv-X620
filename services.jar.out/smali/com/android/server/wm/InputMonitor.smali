.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# static fields
.field private static final MILLI_TO_NANO:J = 0xf4240L


# instance fields
.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputFocus:Lcom/android/server/wm/WindowState;

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mTmpRect:Landroid/graphics/Rect;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 78
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .param p1, "windowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    .line 268
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 270
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 272
    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    .line 271
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 266
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 7
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "child"    # Lcom/android/server/wm/WindowState;
    .param p3, "flags"    # I
    .param p4, "type"    # I
    .param p5, "isVisible"    # Z
    .param p6, "hasFocus"    # Z
    .param p7, "hasWallpaper"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 281
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 282
    and-int/lit8 v3, p3, 0x28

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 284
    .local v1, "modal":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2

    .line 286
    or-int/lit8 p3, p3, 0x20

    .line 287
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowState;->getStackBounds(Landroid/graphics/Rect;)V

    .line 288
    iget-object v3, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 293
    :goto_1
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 294
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 295
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 296
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 297
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    iput-boolean v3, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 298
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 299
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 300
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :cond_0
    iput-boolean v2, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 301
    iget v2, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 302
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 303
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 304
    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 306
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 307
    .local v0, "frame":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 308
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 309
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 310
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 312
    iget v2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3

    .line 316
    iget v2, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v2, v6, v2

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 322
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 279
    return-void

    .line 282
    .end local v0    # "frame":Landroid/graphics/Rect;
    .end local v1    # "modal":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "modal":Z
    goto :goto_0

    .line 291
    :cond_2
    iget-object v3, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    goto :goto_1

    .line 318
    .restart local v0    # "frame":Landroid/graphics/Rect;
    :cond_3
    iput v6, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    goto :goto_2
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 326
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 325
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 594
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 490
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 491
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 490
    :cond_0
    const/4 v0, 0x0

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 2

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_1

    .line 569
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 570
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 573
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 567
    :cond_1
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "focus"    # Lcom/android/server/input/InputWindowHandle;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 481
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 482
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    return-wide v2

    .line 481
    :cond_0
    const/4 v0, 0x0

    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingNonInteractive(JI)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;Ljava/lang/String;)J
    .locals 19
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v4, 0x0

    .line 146
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v14, 0x0

    .line 147
    .local v14, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .line 148
    .local v3, "aboveSystem":Z
    const/4 v5, 0x0

    .line 150
    .local v5, "bIsWNR":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 151
    if-eqz p2, :cond_1

    .line 152
    :try_start_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v14, v0

    .line 153
    .local v14, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_1

    .line 154
    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 157
    .local v4, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager;->enableANRDebuggingMechanism()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 156
    if-eqz v15, :cond_1

    .line 158
    if-nez v4, :cond_0

    .line 159
    const/4 v5, 0x1

    .line 164
    :cond_0
    :try_start_1
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v15}, Landroid/view/IWindow;->dumpInputDispatchingStatus()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v14    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_0
    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 175
    :try_start_2
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v4, v0

    .line 178
    :cond_2
    if-eqz v14, :cond_4

    .line 179
    const-string/jumbo v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Input event dispatching timed out sending to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 180
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    .line 179
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 181
    const-string/jumbo v18, ".  Reason: "

    .line 179
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 186
    const/16 v17, 0x7d3

    .line 185
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v10

    .line 187
    .local v10, "systemAlertLayer":I
    iget v15, v14, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v15, v10, :cond_3

    const/4 v3, 0x1

    .line 197
    .end local v10    # "systemAlertLayer":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v15, v4, v14, v0}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v16

    .line 200
    if-eqz v4, :cond_8

    iget-object v15, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v15, :cond_8

    if-nez v5, :cond_8

    .line 204
    :try_start_3
    iget-object v15, v4, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v0, p3

    invoke-interface {v15, v0}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v2

    .line 205
    .local v2, "abort":Z
    if-nez v2, :cond_6

    .line 208
    iget-wide v0, v4, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    move-wide/from16 v16, v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    return-wide v16

    .line 165
    .end local v2    # "abort":Z
    .restart local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v14    # "windowState":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v6

    .line 166
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v15, "WindowManager"

    .line 167
    const-string/jumbo v17, "Error dump input dispatching status."

    .line 166
    move-object/from16 v0, v17

    invoke-static {v15, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 150
    .end local v4    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v14    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 187
    .restart local v10    # "systemAlertLayer":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 188
    .end local v10    # "systemAlertLayer":I
    :cond_4
    if-eqz v4, :cond_5

    .line 189
    :try_start_5
    const-string/jumbo v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Input event dispatching timed out sending to application "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 190
    iget-object v0, v4, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 189
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 191
    const-string/jumbo v18, ".  Reason: "

    .line 189
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 193
    :cond_5
    const-string/jumbo v15, "WindowManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Input event dispatching timed out .  Reason: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 213
    .restart local v2    # "abort":Z
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 214
    if-eqz v14, :cond_7

    .line 215
    iget v15, v14, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 218
    .local v11, "userId":I
    :goto_2
    const-wide/16 v16, 0x1f40

    .line 217
    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->getUserConfirmTime(IJ)J

    move-result-wide v8

    .line 219
    .local v8, "extendTime":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-lez v15, :cond_c

    .line 220
    const-string/jumbo v15, "WindowManager"

    const-string/jumbo v16, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 222
    const-wide/32 v16, 0xf4240

    mul-long v16, v16, v8

    return-wide v16

    .line 216
    .end local v8    # "extendTime":J
    .end local v11    # "userId":I
    :cond_7
    const/16 v11, -0x2710

    .restart local v11    # "userId":I
    goto :goto_2

    .line 228
    .end local v2    # "abort":Z
    .end local v11    # "userId":I
    :cond_8
    if-eqz v14, :cond_b

    .line 232
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    .line 233
    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v16, v0

    .line 232
    move/from16 v0, v16

    move-object/from16 v1, p3

    invoke-interface {v15, v0, v3, v1}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v12

    .line 234
    .local v12, "timeout":J
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-ltz v15, :cond_9

    .line 238
    const-wide/32 v16, 0xf4240

    mul-long v16, v16, v12

    return-wide v16

    .line 243
    :cond_9
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 244
    if-eqz v14, :cond_a

    .line 245
    iget v15, v14, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 248
    .restart local v11    # "userId":I
    :goto_3
    const-wide/16 v16, 0x1f40

    .line 247
    move-wide/from16 v0, v16

    invoke-static {v11, v0, v1}, Lcom/mediatek/common/mom/MobileManagerUtils;->getUserConfirmTime(IJ)J

    move-result-wide v8

    .line 249
    .restart local v8    # "extendTime":J
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-lez v15, :cond_c

    .line 250
    const-string/jumbo v15, "WindowManager"

    const-string/jumbo v16, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 252
    const-wide/32 v16, 0xf4240

    mul-long v16, v16, v8

    return-wide v16

    .line 246
    .end local v8    # "extendTime":J
    .end local v11    # "userId":I
    :cond_a
    const/16 v11, -0x2710

    .restart local v11    # "userId":I
    goto :goto_3

    .line 261
    .end local v11    # "userId":I
    .end local v12    # "timeout":J
    :cond_b
    const-string/jumbo v15, "WindowManager"

    const-string/jumbo v16, "both windowState & appWindowToken are null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_c
    :goto_4
    const-wide/16 v16, 0x0

    return-wide v16

    .line 257
    :catch_1
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_4

    .line 226
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    .restart local v7    # "ex":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyCameraLensCoverSwitchChanged(JZ)V

    .line 456
    return-void
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 427
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 424
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .param p1, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 94
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 95
    const-string/jumbo v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 87
    return-void

    .line 92
    .end local v0    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 450
    return-void
.end method

.method public notifyPredump(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;II)V
    .locals 6
    .param p1, "inputApplicationHandle"    # Lcom/android/server/input/InputApplicationHandle;
    .param p2, "inputWindowHandle"    # Lcom/android/server/input/InputWindowHandle;
    .param p3, "pid"    # I
    .param p4, "message"    # I

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "windowState":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    .line 109
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_0

    .line 111
    :try_start_0
    iget-object v4, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v3, v0

    .line 112
    .local v3, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_0

    .line 114
    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 118
    .end local v1    # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 120
    :cond_1
    new-instance v4, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;

    invoke-direct {v4}, Lcom/mediatek/anrappframeworks/ANRAppFrameworks;-><init>()V

    invoke-static {v4}, Lcom/mediatek/anrappmanager/ANRManagerNative;->getDefault(Lcom/mediatek/anrappmanager/IFrameworks;)Lcom/mediatek/anrappmanager/IANRManager;

    move-result-object v4

    .line 121
    const-string/jumbo v5, "KeyDispatchingTimeout predump"

    .line 120
    invoke-interface {v4, p3, v5, p4}, Lcom/mediatek/anrappmanager/IANRManager;->notifyLightWeightANR(ILjava/lang/String;I)V

    .line 127
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v5, "Pre ANR dump"

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/server/wm/WindowManagerService;->savePreANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 103
    :goto_1
    return-void

    .line 118
    :cond_2
    if-nez v3, :cond_1

    .line 123
    const-string/jumbo v4, "WindowManager"

    .line 124
    const-string/jumbo v5, "Touch event for WNR, it isn\'t necessary to predump"

    .line 123
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error notifyPredump "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 4
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    const/4 v3, 0x1

    .line 550
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_1

    .line 551
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 552
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pausing WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    iput-boolean v3, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 555
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 549
    :cond_1
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 3
    .param p1, "window"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 559
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_1

    .line 560
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 561
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resuming WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 564
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 558
    :cond_1
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_2

    .line 587
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_BOOT:Z

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting event dispatching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 591
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 585
    :cond_2
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .param p1, "newApp"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v3, 0x0

    .line 529
    if-nez p1, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 527
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 533
    .local v1, "handle":Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 534
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 538
    :try_start_0
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->getFocusAppPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputApplicationHandle;->pid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "GetFocusAppPid fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;Z)V
    .locals 4
    .param p1, "newWindow"    # Lcom/android/server/wm/WindowState;
    .param p2, "updateInputWindows"    # Z

    .prologue
    const/4 v3, 0x0

    .line 506
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_3

    .line 511
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 518
    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 519
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 521
    if-eqz p2, :cond_3

    .line 522
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 505
    :cond_3
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 331
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 2

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_1

    .line 578
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 579
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 582
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 576
    :cond_1
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 22
    .param p1, "force"    # Z

    .prologue
    .line 337
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-eqz v2, :cond_4

    .line 340
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 349
    const/4 v11, 0x0

    .line 352
    .local v11, "disableWallpaperTouchEvents":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_5

    const/4 v14, 0x1

    .line 353
    .local v14, "inDrag":Z
    :goto_0
    if-eqz v14, :cond_2

    .line 354
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_1

    .line 355
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v21, "Inserting drag window"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v13, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 358
    .local v13, "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v13, :cond_6

    .line 359
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 366
    .end local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v2, :cond_7

    const/4 v10, 0x1

    .line 369
    .local v10, "addInputConsumerHandle":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 370
    .local v16, "numDisplays":I
    const/4 v12, 0x0

    .local v12, "displayNdx":I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_11

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v20

    .line 372
    .local v20, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, "winNdx":I
    :goto_4
    if-ltz v19, :cond_10

    .line 373
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 374
    .local v4, "child":Lcom/android/server/wm/WindowState;
    iget-object v15, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 375
    .local v15, "inputChannel":Landroid/view/InputChannel;
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 376
    .local v3, "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    if-eqz v15, :cond_3

    if-nez v3, :cond_8

    .line 372
    :cond_3
    :goto_5
    add-int/lit8 v19, v19, -0x1

    goto :goto_4

    .line 338
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v10    # "addInputConsumerHandle":Z
    .end local v11    # "disableWallpaperTouchEvents":Z
    .end local v12    # "displayNdx":I
    .end local v14    # "inDrag":Z
    .end local v15    # "inputChannel":Landroid/view/InputChannel;
    .end local v16    # "numDisplays":I
    .end local v19    # "winNdx":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    return-void

    .line 352
    .restart local v11    # "disableWallpaperTouchEvents":Z
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "inDrag":Z
    goto :goto_0

    .line 361
    .restart local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_6
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v21, "Drag is in progress but there is no drag window handle."

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    .end local v13    # "dragWindowHandle":Lcom/android/server/input/InputWindowHandle;
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "addInputConsumerHandle":Z
    goto :goto_2

    .line 376
    .restart local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .restart local v4    # "child":Lcom/android/server/wm/WindowState;
    .restart local v12    # "displayNdx":I
    .restart local v15    # "inputChannel":Landroid/view/InputChannel;
    .restart local v16    # "numDisplays":I
    .restart local v19    # "winNdx":I
    .restart local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_8
    iget-boolean v2, v4, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_3

    .line 380
    if-eqz v10, :cond_9

    .line 381
    iget v2, v3, Lcom/android/server/input/InputWindowHandle;->layer:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/input/InputWindowHandle;->layer:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v2, v0, :cond_9

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    iget-object v2, v2, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 383
    const/4 v10, 0x0

    .line 386
    :cond_9
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 387
    .local v5, "flags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v18, v0

    .line 388
    .local v18, "privateFlags":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 390
    .local v6, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_c

    const/4 v8, 0x1

    .line 391
    .local v8, "hasFocus":Z
    :goto_6
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v7

    .line 392
    .local v7, "isVisible":Z
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_a

    .line 395
    const/4 v11, 0x1

    .line 397
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v4, v2, :cond_e

    .line 398
    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_e

    .line 399
    if-eqz v11, :cond_d

    const/4 v9, 0x0

    .line 400
    .local v9, "hasWallpaper":Z
    :goto_7
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_f

    const/16 v17, 0x1

    .line 404
    .local v17, "onDefaultDisplay":Z
    :goto_8
    if-eqz v14, :cond_b

    if-eqz v7, :cond_b

    if-eqz v17, :cond_b

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    :cond_b
    move-object/from16 v2, p0

    .line 408
    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_5

    .line 390
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v17    # "onDefaultDisplay":Z
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "hasFocus":Z
    goto :goto_6

    .line 399
    .restart local v7    # "isVisible":Z
    :cond_d
    const/4 v9, 0x1

    .restart local v9    # "hasWallpaper":Z
    goto :goto_7

    .line 397
    .end local v9    # "hasWallpaper":Z
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "hasWallpaper":Z
    goto :goto_7

    .line 400
    :cond_f
    const/16 v17, 0x0

    .restart local v17    # "onDefaultDisplay":Z
    goto :goto_8

    .line 370
    .end local v3    # "inputWindowHandle":Lcom/android/server/input/InputWindowHandle;
    .end local v4    # "child":Lcom/android/server/wm/WindowState;
    .end local v5    # "flags":I
    .end local v6    # "type":I
    .end local v7    # "isVisible":Z
    .end local v8    # "hasFocus":Z
    .end local v9    # "hasWallpaper":Z
    .end local v15    # "inputChannel":Landroid/view/InputChannel;
    .end local v17    # "onDefaultDisplay":Z
    .end local v18    # "privateFlags":I
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 414
    .end local v19    # "winNdx":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    .line 336
    return-void
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 440
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v1

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 441
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
