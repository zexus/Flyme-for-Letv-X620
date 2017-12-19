.class final Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeFloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarPopup"
.end annotation


# instance fields
.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private mDismissed:Z

.field private mHidden:Z

.field private mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

.field private final mParent:Landroid/view/View;

.field private mPopupDownDrawable:Lcom/letv/leui/widget/LePopupDrawable;

.field private mPopupUpDrawable:Lcom/letv/leui/widget/LePopupDrawable;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mShouldMeasured:Z

.field private final mTmpCoords:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method static synthetic -wrap0(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->viewPortHasChanged()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const v5, -0xa5a5a6

    const/high16 v4, 0x41000000    # 8.0f

    const/4 v3, 0x1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 263
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    .line 264
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    .line 265
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    .line 267
    iput-boolean v3, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 269
    iput-boolean v3, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mShouldMeasured:Z

    .line 282
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    .line 283
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 284
    invoke-direct {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 285
    .local v0, "bodyView":Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->-wrap1(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 286
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 288
    new-instance v1, Lcom/letv/leui/widget/LePopupDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v4, v5, v2}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FIZ)V

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupUpDrawable:Lcom/letv/leui/widget/LePopupDrawable;

    .line 289
    new-instance v1, Lcom/letv/leui/widget/LePopupDrawable;

    invoke-direct {v1, v4, v5, v3}, Lcom/letv/leui/widget/LePopupDrawable;-><init>(FIZ)V

    iput-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupDownDrawable:Lcom/letv/leui/widget/LePopupDrawable;

    .line 290
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupUpDrawable:Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 281
    return-void
.end method

.method private createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 294
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 295
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 296
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 299
    .local v0, "contentParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v2, Landroid/widget/HorizontalScrollView;

    invoke-direct {v2, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 302
    .local v2, "scrollView":Landroid/widget/HorizontalScrollView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 306
    invoke-virtual {v2, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 307
    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 309
    new-instance v3, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    iget-object v4, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    .line 310
    iget-object v3, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-object v2
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    .line 433
    iget-boolean v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mShouldMeasured:Z

    if-eqz v11, :cond_0

    .line 434
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewGroup;->measure(II)V

    .line 435
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mShouldMeasured:Z

    .line 437
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    iget-object v12, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int v9, v11, v12

    .line 439
    .local v9, "x":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 443
    iget v11, p1, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int v0, v11, v12

    .line 444
    .local v0, "availableHeightAboveContent":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v11, v12

    .line 446
    .local v1, "availableHeightBelowContent":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    .line 447
    .local v6, "toobarHeight":I
    if-lt v0, v6, :cond_1

    .line 449
    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int v10, v11, v6

    .line 450
    .local v10, "y":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupUpDrawable:Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 468
    :goto_0
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    iget-object v12, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 469
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v12, 0x0

    aget v2, v11, v12

    .line 470
    .local v2, "rootViewLeftOnScreen":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v12, 0x1

    aget v4, v11, v12

    .line 471
    .local v4, "rootViewTopOnScreen":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    iget-object v12, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v11, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 472
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v12, 0x0

    aget v3, v11, v12

    .line 473
    .local v3, "rootViewLeftOnWindow":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v12, 0x1

    aget v5, v11, v12

    .line 474
    .local v5, "rootViewTopOnWindow":I
    sub-int v7, v2, v3

    .line 475
    .local v7, "windowLeftOnScreen":I
    sub-int v8, v4, v5

    .line 476
    .local v8, "windowTopOnScreen":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    sub-int v12, v9, v7

    sub-int v13, v10, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 430
    return-void

    .line 451
    .end local v2    # "rootViewLeftOnScreen":I
    .end local v3    # "rootViewLeftOnWindow":I
    .end local v4    # "rootViewTopOnScreen":I
    .end local v5    # "rootViewTopOnWindow":I
    .end local v7    # "windowLeftOnScreen":I
    .end local v8    # "windowTopOnScreen":I
    .end local v10    # "y":I
    :cond_1
    if-lt v1, v6, :cond_2

    .line 453
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    .line 454
    .restart local v10    # "y":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupDownDrawable:Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 457
    .end local v10    # "y":I
    :cond_2
    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int v10, v11, v6

    .line 458
    .restart local v10    # "y":I
    iget-object v11, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupUpDrawable:Lcom/letv/leui/widget/LePopupDrawable;

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private refreshViewPort()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 479
    return-void
.end method

.method private viewPortHasChanged()Z
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 485
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 355
    iget-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 360
    iput-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 361
    iput-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mShouldMeasured:Z

    .line 362
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 354
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    return-void

    .line 374
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 375
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 369
    return-void
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 382
    iget-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 1
    .param p2, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;
    .param p3, "suggestedWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->layoutMenuItems(Ljava/util/List;)Ljava/util/List;

    .line 325
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mMainPanel:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    invoke-virtual {v0, p2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 321
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 333
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    return-void

    .line 339
    :cond_0
    iput-boolean v4, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 340
    iput-boolean v4, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 342
    invoke-direct {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 346
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 347
    iget-object v3, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 346
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 332
    return-void
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentRectOnScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 398
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0, p1}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 409
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 397
    return-void

    .line 401
    :cond_0
    return-void
.end method
