.class public Landroid/widget/Editor$LeTextActionModelImpl;
.super Landroid/view/ActionMode;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeTextActionModelImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;,
        Landroid/widget/Editor$LeTextActionModelImpl$1;,
        Landroid/widget/Editor$LeTextActionModelImpl$2;
    }
.end annotation


# static fields
.field private static final MAX_HIDE_DURATION:I = 0xbb8

.field private static final MOVING_HIDE_DELAY:I = 0x12c

.field public static final TYPE_LE_FLOATING:I = 0x2


# instance fields
.field private final mCallback:Landroid/view/ActionMode$Callback2;

.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContentRectOnScreen:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

.field private mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

.field private final mHideOff:Ljava/lang/Runnable;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mMovingOff:Ljava/lang/Runnable;

.field private final mOriginatingView:Landroid/view/View;

.field private final mPreviousContentRectOnScreen:Landroid/graphics/Rect;

.field private final mPreviousViewPositionOnScreen:[I

.field private final mPreviousViewRectOnScreen:Landroid/graphics/Rect;

.field private final mRootViewPositionOnScreen:[I

.field private final mScreenRect:Landroid/graphics/Rect;

.field private final mViewPositionOnScreen:[I

.field private final mViewRectOnScreen:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/view/ActionMode$Callback2;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$LeTextActionModelImpl;)Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;
    .param p3, "originatingView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    .line 6437
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 6420
    new-instance v0, Landroid/widget/Editor$LeTextActionModelImpl$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$LeTextActionModelImpl$1;-><init>(Landroid/widget/Editor$LeTextActionModelImpl;)V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    .line 6427
    new-instance v0, Landroid/widget/Editor$LeTextActionModelImpl$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$LeTextActionModelImpl$2;-><init>(Landroid/widget/Editor$LeTextActionModelImpl;)V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    .line 6439
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContext:Landroid/content/Context;

    .line 6440
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode$Callback2;

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    .line 6441
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 6442
    const/4 v1, 0x1

    .line 6441
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 6443
    invoke-virtual {p0, v2}, Landroid/widget/Editor$LeTextActionModelImpl;->setType(I)V

    .line 6444
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRect:Landroid/graphics/Rect;

    .line 6445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    .line 6446
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    .line 6447
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    .line 6448
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewPositionOnScreen:[I

    .line 6449
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mRootViewPositionOnScreen:[I

    .line 6450
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    .line 6451
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    .line 6452
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mScreenRect:Landroid/graphics/Rect;

    .line 6453
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    .line 6454
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6438
    return-void
.end method

.method private checkToolbarInitialized()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6624
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 6625
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 6623
    return-void

    :cond_0
    move v0, v2

    .line 6624
    goto :goto_0

    :cond_1
    move v1, v2

    .line 6625
    goto :goto_1
.end method

.method private static intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 6559
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_0

    .line 6560
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 6559
    :cond_0
    return v0
.end method

.method private isContentRectWithinBounds()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6545
    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mScreenRect:Landroid/graphics/Rect;

    .line 6548
    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6549
    iget-object v3, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6545
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6551
    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mScreenRect:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Landroid/widget/Editor$LeTextActionModelImpl;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6552
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/widget/Editor$LeTextActionModelImpl;->intersectsClosed(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 6551
    :cond_0
    return v0
.end method

.method private repositionToolbar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6517
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    .line 6519
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6520
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    aget v1, v1, v4

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6522
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->isContentRectWithinBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6523
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v4}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    .line 6525
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6527
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6528
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v3}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setMoving(Z)V

    .line 6529
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 6530
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6532
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/letv/leui/text/LeFloatingToolbar;->setContentRect(Landroid/graphics/Rect;)Lcom/letv/leui/text/LeFloatingToolbar;

    .line 6533
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->updateLayout()Lcom/letv/leui/text/LeFloatingToolbar;

    .line 6541
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousContentRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6516
    return-void

    .line 6536
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, v3}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setOutOfBounds(Z)V

    .line 6537
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 6538
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 6629
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->dismiss()V

    .line 6630
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->deactivate()V

    .line 6631
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMovingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6632
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6628
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 6590
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    .line 6591
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->reset()V

    .line 6592
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    invoke-virtual {v0, p0}, Landroid/view/ActionMode$Callback2;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 6589
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 6612
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 6597
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 6617
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 6607
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 6602
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 6565
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    .line 6567
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 6568
    invoke-static {}, Landroid/view/ViewConfiguration;->getDefaultActionModeHideDuration()J

    move-result-wide p1

    .line 6570
    :cond_0
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 6571
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6572
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 6573
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6564
    :goto_0
    return-void

    .line 6575
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setHideRequested(Z)V

    .line 6576
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 6577
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mHideOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 6487
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    .line 6488
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0, v1}, Landroid/view/ActionMode$Callback2;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 6489
    invoke-virtual {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->invalidateContentRect()V

    .line 6486
    return-void
.end method

.method public invalidateContentRect()V
    .locals 3

    .prologue
    .line 6494
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    .line 6495
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mCallback:Landroid/view/ActionMode$Callback2;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6496
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->repositionToolbar()V

    .line 6493
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 6583
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    .line 6584
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->setWindowFocused(Z)V

    .line 6585
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->updateToolbarVisibility()V

    .line 6582
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 6483
    return-void
.end method

.method public setFloatingToolbar(Lcom/letv/leui/text/LeFloatingToolbar;)V
    .locals 2
    .param p1, "floatingToolbar"    # Lcom/letv/leui/text/LeFloatingToolbar;

    .prologue
    .line 6459
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 6458
    invoke-virtual {p1, v0}, Lcom/letv/leui/text/LeFloatingToolbar;->setMenu(Landroid/view/Menu;)Lcom/letv/leui/text/LeFloatingToolbar;

    move-result-object v0

    .line 6460
    new-instance v1, Landroid/widget/Editor$LeTextActionModelImpl$3;

    invoke-direct {v1, p0}, Landroid/widget/Editor$LeTextActionModelImpl$3;-><init>(Landroid/widget/Editor$LeTextActionModelImpl;)V

    .line 6458
    invoke-virtual {v0, v1}, Lcom/letv/leui/text/LeFloatingToolbar;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/letv/leui/text/LeFloatingToolbar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    .line 6466
    new-instance v0, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbar:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-direct {v0, v1}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;-><init>(Lcom/letv/leui/text/LeFloatingToolbar;)V

    iput-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    .line 6467
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mFloatingToolbarVisibilityHelper:Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl$FloatingToolbarVisibilityHelper;->activate()V

    .line 6457
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 6480
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 6477
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 6474
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 6471
    return-void
.end method

.method public updateViewLocationInWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6500
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->checkToolbarInitialized()V

    .line 6502
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6503
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mRootViewPositionOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6504
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mOriginatingView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6505
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mRootViewPositionOnScreen:[I

    aget v1, v1, v3

    iget-object v2, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mRootViewPositionOnScreen:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 6507
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewPositionOnScreen:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6508
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6499
    :goto_0
    return-void

    .line 6509
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$LeTextActionModelImpl;->repositionToolbar()V

    .line 6510
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    aget v1, v1, v3

    aput v1, v0, v3

    .line 6511
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewPositionOnScreen:[I

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewPositionOnScreen:[I

    aget v1, v1, v4

    aput v1, v0, v4

    .line 6512
    iget-object v0, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mPreviousViewRectOnScreen:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/Editor$LeTextActionModelImpl;->mViewRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
