.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# static fields
.field private static final DEFAULT_DIM_DURATION:I = 0xc8


# instance fields
.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBounds:Landroid/graphics/Rect;

.field mDeferDetach:Z

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mDimmingTag:Z

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mForceFullscreen:Z

.field private mFullscreen:Z

.field mOverrideConfig:Landroid/content/res/Configuration;

.field private final mPreForceFullscreenBounds:Landroid/graphics/Rect;

.field mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStackId:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 66
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 85
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 103
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 104
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 105
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 106
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 109
    const/16 v1, 0x791c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 102
    return-void
.end method

.method private getDimBehindFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 410
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 411
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 412
    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    .line 411
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 413
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 414
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 418
    :cond_0
    :goto_0
    return-wide p1

    .line 415
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 416
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_0
.end method

.method private updateOverrideConfiguration()V
    .locals 5

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 187
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 189
    return-void

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-ne v2, v3, :cond_1

    .line 193
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 197
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const v3, 0x3bcccccd    # 0.00625f

    mul-float v0, v2, v3

    .line 198
    .local v0, "density":F
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 199
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 198
    iput v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 200
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 201
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 200
    iput v3, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 202
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 203
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 202
    iput v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 204
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 205
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v2, v4, :cond_2

    .line 206
    const/4 v2, 0x1

    .line 204
    :goto_0
    iput v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 185
    return-void

    .line 206
    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;ZZ)V

    .line 291
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 303
    if-nez p2, :cond_4

    .line 304
    const/4 v0, 0x0

    .line 320
    .local v0, "stackNdx":I
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addTask: task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " toTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 321
    const-string/jumbo v6, " pos="

    .line 320
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 324
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 325
    if-eqz p2, :cond_2

    .line 326
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 328
    :cond_2
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    if-eqz p2, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const/16 v2, 0x791a

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 301
    return-void

    .line 306
    .end local v0    # "stackNdx":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 307
    .restart local v0    # "stackNdx":I
    if-nez p3, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 309
    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 310
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 311
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 312
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 317
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method animateDimLayers()Z
    .locals 8

    .prologue
    .line 424
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v5, :cond_2

    .line 425
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v1

    .line 426
    .local v1, "dimLayer":I
    const/4 v0, 0x0

    .line 431
    .local v0, "dimAmount":F
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v4

    .line 432
    .local v4, "targetAlpha":F
    cmpl-float v5, v4, v0

    if-eqz v5, :cond_6

    .line 433
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v5, :cond_3

    .line 434
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 447
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v5

    if-nez v5, :cond_7

    .line 450
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    .line 455
    :cond_1
    const/4 v5, 0x0

    return v5

    .line 428
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v4    # "targetAlpha":F
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v5, -0x1

    .line 429
    .restart local v1    # "dimLayer":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v0    # "dimAmount":F
    goto :goto_0

    .line 436
    .restart local v4    # "targetAlpha":F
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_5

    .line 437
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    .line 439
    .local v2, "duration":J
    :goto_2
    cmpl-float v5, v4, v0

    if-lez v5, :cond_4

    .line 440
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBehindFadeDuration(J)J

    move-result-wide v2

    .line 442
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto :goto_1

    .line 438
    .end local v2    # "duration":J
    :cond_5
    const-wide/16 v2, 0xc8

    .restart local v2    # "duration":J
    goto :goto_2

    .line 444
    .end local v2    # "duration":J
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 445
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto :goto_1

    .line 452
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v5

    return v5
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attachDisplayContent: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 373
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 374
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 375
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    .line 367
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 530
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 534
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 536
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 527
    return-void
.end method

.method detachDisplay()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 379
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/16 v7, 0x791e

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 381
    const/4 v3, 0x0

    .line 382
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 383
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 384
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "appNdx":I
    :goto_1
    if-ltz v0, :cond_1

    .line 385
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 386
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 389
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v6, v8}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 391
    const/4 v3, 0x1

    .line 386
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 384
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 382
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 395
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_2
    if-eqz v3, :cond_3

    .line 396
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->close()V

    .line 378
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 540
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mStackId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 541
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDeferDetach="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 542
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 543
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 549
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDimLayer:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 552
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mDimWinAnimator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 554
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 555
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 556
    const-string/jumbo v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 558
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 559
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 560
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 561
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 562
    const-string/jumbo v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 557
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 539
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_3
    return-void
.end method

.method forceFullscreen(Z)Z
    .locals 2
    .param p1, "forceFullscreen"    # Z

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    if-ne v0, p1, :cond_0

    .line 258
    return v1

    .line 260
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mForceFullscreen:Z

    .line 261
    if-eqz p1, :cond_2

    .line 262
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v0, :cond_1

    .line 263
    return v1

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 268
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    :cond_3
    return v1

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mPreForceFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method isAnimating()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 276
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 277
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 278
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 279
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 280
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2
    if-ltz v4, :cond_2

    .line 281
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 282
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v6, :cond_1

    .line 283
    :cond_0
    const/4 v6, 0x1

    return v6

    .line 280
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 278
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 276
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 288
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return v7
.end method

.method isDimming()Z
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x0

    return v0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    return v0
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    return v0
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 339
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToBottom: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 338
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 332
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToTop: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 331
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v5, 0x0

    .line 350
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0, v5}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "appNdx":I
    :goto_0
    if-ltz v0, :cond_4

    .line 359
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 360
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_3

    .line 361
    iput-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 362
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 358
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 349
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 404
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 402
    :cond_0
    return-void
.end method

.method resetDimmingTag()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    .line 458
    return-void
.end method

.method resizeWindows()V
    .locals 10

    .prologue
    .line 122
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v7, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 123
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 124
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    iget-object v0, v7, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 125
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v7, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 127
    .local v6, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_2

    .line 128
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 129
    .local v4, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 130
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WindowManager"

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBounds: Resizing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 130
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 125
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 123
    .end local v5    # "winNdx":I
    .end local v6    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 121
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return-void
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .prologue
    .line 505
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 506
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1

    .line 508
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 509
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    .line 510
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v2, v0, -0x1

    .line 511
    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const-wide/16 v4, 0x0

    .line 510
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 504
    :cond_1
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 142
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v2, :cond_0

    .line 143
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBounds bound = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    const-string/jumbo v4, ", stackId = "

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "setBounds"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {v2, v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 148
    .local v0, "oldFullscreen":Z
    const/4 v1, 0x0

    .line 149
    .local v1, "rotation":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 151
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v1, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 152
    if-nez p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 154
    iput-boolean v7, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 165
    :cond_1
    :goto_0
    if-nez p1, :cond_4

    .line 167
    return v6

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 159
    return v6

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    goto :goto_0

    .line 169
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-ne v0, v2, :cond_5

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v2, v1, :cond_5

    .line 170
    return v6

    .line 173
    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 174
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 176
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    .line 177
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateOverrideConfiguration()V

    .line 178
    return v7
.end method

.method setDimmingTag()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    .line 462
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 2
    .param p1, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 484
    iget-boolean v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1

    .line 489
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v0, :cond_2

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 500
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 497
    :cond_0
    return-void
.end method

.method switchUser()V
    .locals 5

    .prologue
    .line 516
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 517
    .local v2, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 518
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 519
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 520
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 521
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    add-int/lit8 v2, v2, -0x1

    .line 517
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void
.end method

.method testDimmingTag()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 214
    .local v0, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v2, v0, :cond_2

    .line 215
    return-void

    .line 220
    :cond_2
    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    invoke-static {v2, v0}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    .line 221
    .local v1, "rotationDelta":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 222
    packed-switch v1, :pswitch_data_0

    .line 245
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 224
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 227
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 228
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 229
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 233
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 234
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 235
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 236
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 239
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 240
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 241
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 242
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
