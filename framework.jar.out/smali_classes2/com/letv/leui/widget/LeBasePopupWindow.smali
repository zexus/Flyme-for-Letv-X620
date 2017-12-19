.class public Lcom/letv/leui/widget/LeBasePopupWindow;
.super Landroid/widget/PopupWindow;
.source "LeBasePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;,
        Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;,
        Lcom/letv/leui/widget/LeBasePopupWindow$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LePopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private mAllowScrollAnchorParent:Z

.field protected mAlwaysVisible:Z

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field protected mIsPopupVerticalOffsetSet:Z

.field private mMeasureInAnchorParent:Z

.field private mMeasureInView:Landroid/view/View;

.field private mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

.field private mPopupAnchorView:Landroid/view/View;

.field private mPopupGravity:I

.field protected mPopupHeight:I

.field private mPopupHorizontalOffset:I

.field protected mPopupVerticalOffset:I

.field protected mPopupWidth:I

.field private mScreenLocation:[I

.field mShowDropDownRunnable:Ljava/lang/Runnable;

.field protected mTempPaddingRect:Landroid/graphics/Rect;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWindowFadingDark:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    const v1, 0x1010076

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const v0, 0x1010076

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    .line 36
    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    .line 40
    const/16 v0, 0x51

    iput v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    .line 41
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    .line 42
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Lcom/letv/leui/widget/LeBasePopupWindow$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeBasePopupWindow$1;-><init>(Lcom/letv/leui/widget/LeBasePopupWindow;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 59
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    .line 60
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    .line 64
    iput-boolean v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    .line 66
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    .line 67
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    .line 114
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mContext:Landroid/content/Context;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setAllowScrollAnchorParent(Z)V

    .line 112
    return-void
.end method

.method private calculateGravityOffset(Landroid/view/View;I)[I
    .locals 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    .line 527
    const/4 v11, 0x2

    new-array v7, v11, [I

    .line 529
    .local v7, "result":[I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 530
    .local v1, "anchorWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 532
    .local v0, "anchorHeight":I
    const/4 v4, 0x0

    .line 533
    .local v4, "isShowOnAnchorTop":Z
    and-int/lit8 v11, p2, 0x7

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 534
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v11

    sub-int/2addr v11, v1

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    const/4 v12, 0x0

    aput v11, v7, v12

    .line 541
    :goto_0
    and-int/lit8 v11, p2, 0x70

    const/16 v12, 0x30

    if-ne v11, v12, :cond_5

    .line 542
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v11

    add-int/2addr v11, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAdjustVerticalOffset()I

    move-result v12

    sub-int/2addr v11, v12

    neg-int v11, v11

    const/4 v12, 0x1

    aput v11, v7, v12

    .line 543
    const/4 v4, 0x1

    .line 549
    :goto_1
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 550
    .local v8, "screenLocation":[I
    const/4 v2, 0x0

    .line 551
    .local v2, "changeUpAndDown":Z
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 552
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 553
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 554
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    if-eqz v11, :cond_0

    if-eqz p1, :cond_0

    .line 555
    iget-object v5, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    .line 556
    .local v5, "parentView":Landroid/view/View;
    invoke-virtual {v5, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 558
    iget-boolean v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    if-eqz v11, :cond_0

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 560
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 562
    .local v10, "scrollY":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v0

    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 563
    .local v6, "rect":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {p1, v6, v11}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 567
    .end local v5    # "parentView":Landroid/view/View;
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_0
    const/4 v11, 0x1

    aget v11, v8, v11

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    add-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->top:I

    if-ge v11, v12, :cond_6

    .line 568
    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v7, v12

    .line 569
    const/4 v2, 0x1

    .line 570
    const/4 v4, 0x0

    .line 577
    :cond_1
    :goto_2
    const/4 v11, 0x0

    aget v12, v7, v11

    iget v13, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    add-int/2addr v12, v13

    aput v12, v7, v11

    .line 578
    const/4 v11, 0x1

    aget v12, v7, v11

    iget v13, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    add-int/2addr v12, v13

    aput v12, v7, v11

    .line 579
    invoke-virtual {p0, v4}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPopupPositionChange(Z)V

    .line 581
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    if-eqz v11, :cond_2

    .line 582
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    invoke-interface {v11, v7}, Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;->onModifiedPosition([I)V

    .line 585
    :cond_2
    return-object v7

    .line 535
    .end local v2    # "changeUpAndDown":Z
    .end local v3    # "displayFrame":Landroid/graphics/Rect;
    .end local v8    # "screenLocation":[I
    :cond_3
    and-int/lit8 v11, p2, 0x7

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    .line 536
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v11

    sub-int v11, v1, v11

    const/4 v12, 0x0

    aput v11, v7, v12

    goto/16 :goto_0

    .line 538
    :cond_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v11, v7, v12

    goto/16 :goto_0

    .line 545
    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v7, v12

    .line 546
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 571
    .restart local v2    # "changeUpAndDown":Z
    .restart local v3    # "displayFrame":Landroid/graphics/Rect;
    .restart local v8    # "screenLocation":[I
    :cond_6
    const/4 v11, 0x1

    aget v11, v8, v11

    add-int/2addr v11, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    add-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    if-le v11, v12, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getHeight()I

    move-result v11

    add-int/2addr v11, v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAdjustVerticalOffset()I

    move-result v12

    sub-int/2addr v11, v12

    neg-int v11, v11

    const/4 v12, 0x1

    aput v11, v7, v12

    .line 573
    const/4 v2, 0x1

    .line 574
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private checkPopupPosition(Landroid/view/View;III)Z
    .locals 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 488
    .local v1, "anchorHeight":I
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 489
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mDrawingLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int v4, v11, p2

    .line 491
    .local v4, "offsetX":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v11

    move/from16 v0, p4

    invoke-static {v0, v11}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    and-int/lit8 v3, v11, 0x7

    .line 493
    .local v3, "hgrav":I
    const/4 v11, 0x5

    if-ne v3, v11, :cond_0

    .line 495
    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v4, v11

    .line 498
    :cond_0
    const/4 v5, 0x0

    .line 499
    .local v5, "onTop":Z
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 500
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 501
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 503
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v11, v1

    add-int v8, v11, p3

    .line 505
    .local v8, "screenY":I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    .line 506
    .local v7, "root":Landroid/view/View;
    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    add-int/2addr v11, v8

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v12, :cond_1

    .line 507
    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    add-int/2addr v11, v4

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    if-lez v11, :cond_3

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isAlloowScrollAnchorParent()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 509
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 510
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 511
    .local v10, "scrollY":I
    new-instance v6, Landroid/graphics/Rect;

    iget v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    add-int/2addr v11, v9

    add-int v11, v11, p2

    .line 512
    iget v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    add-int/2addr v12, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v12, v12, p3

    .line 511
    invoke-direct {v6, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 513
    .local v6, "r":Landroid/graphics/Rect;
    const/4 v11, 0x1

    invoke-virtual {p1, v6, v11}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 517
    .end local v6    # "r":Landroid/graphics/Rect;
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_2
    iget-object v11, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 519
    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v11, v11, p3

    .line 520
    iget-object v12, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    sub-int v12, v12, p3

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    .line 519
    if-ge v11, v12, :cond_4

    const/4 v5, 0x1

    .line 521
    :goto_0
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPopupPositionChange(Z)V

    .line 523
    :cond_3
    return v5

    .line 519
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private measureNormalView(Landroid/view/ViewGroup;Landroid/graphics/Point;II)V
    .locals 11
    .param p1, "dropDownView"    # Landroid/view/ViewGroup;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "popupWidth"    # I
    .param p4, "popupHeight"    # I

    .prologue
    .line 675
    const/4 v5, 0x0

    .line 676
    .local v5, "paddingX":I
    const/4 v6, 0x0

    .line 677
    .local v6, "paddingY":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 678
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 679
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 680
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v5, v8, v9

    .line 681
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v6, v8, v9

    .line 686
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    if-nez v8, :cond_0

    .line 687
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    iput v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    .line 694
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getInputMethodMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    const/4 v3, 0x1

    .line 695
    .local v3, "ignoreBottomDecorations":Z
    :goto_1
    sget-object v8, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    .line 696
    iget v10, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    .line 695
    invoke-virtual {v8, p0, v9, v10, v3}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->getMaxAvailableHeight(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    move-result v4

    .line 698
    .local v4, "maxHeight":I
    iget-boolean v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-nez v8, :cond_1

    .line 699
    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 700
    :cond_1
    add-int v8, v4, v6

    iput v8, p2, Landroid/graphics/Point;->y:I

    .line 701
    return-void

    .line 690
    .end local v3    # "ignoreBottomDecorations":Z
    .end local v4    # "maxHeight":I
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 694
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "ignoreBottomDecorations":Z
    goto :goto_1

    .line 704
    .restart local v4    # "maxHeight":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 706
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v7, :cond_5

    .line 707
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x2

    .line 708
    const/4 v9, -0x2

    .line 707
    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 712
    .restart local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    packed-switch p3, :pswitch_data_0

    .line 720
    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    .line 721
    const/high16 v9, 0x40000000    # 2.0f

    .line 720
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 726
    .local v2, "childWidthSpec":I
    :goto_2
    packed-switch p4, :pswitch_data_1

    .line 734
    iget v8, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    .line 735
    const/high16 v9, 0x40000000    # 2.0f

    .line 734
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 738
    .local v1, "childHeightSpec":I
    :goto_3
    invoke-virtual {p1, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 740
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iput v8, p2, Landroid/graphics/Point;->x:I

    .line 741
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    iput v8, p2, Landroid/graphics/Point;->y:I

    .line 674
    return-void

    .line 714
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childWidthSpec":I
    :pswitch_0
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "childWidthSpec":I
    goto :goto_2

    .line 717
    .end local v2    # "childWidthSpec":I
    :pswitch_1
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "childWidthSpec":I
    goto :goto_2

    .line 728
    :pswitch_2
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childHeightSpec":I
    goto :goto_3

    .line 731
    .end local v1    # "childHeightSpec":I
    :pswitch_3
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "childHeightSpec":I
    goto :goto_3

    .line 712
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 726
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V
    .locals 1
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "enabled"    # Z

    .prologue
    .line 361
    sget-object v0, Lcom/letv/leui/widget/LeBasePopupWindow;->HIDDEN_METHOD_INVOKER:Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;

    invoke-virtual {v0, p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow$HiddenMethodReflector;->setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V

    .line 360
    return-void
.end method

.method public static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p0, "popup"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 317
    return-void
.end method


# virtual methods
.method protected buildDropDown()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 661
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 662
    .local v1, "point":Landroid/graphics/Point;
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 663
    return-object v1

    .line 666
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 670
    .local v0, "dropDownView":Landroid/view/ViewGroup;
    iget v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    iget v3, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/LeBasePopupWindow;->measureNormalView(Landroid/view/ViewGroup;Landroid/graphics/Point;II)V

    .line 671
    return-object v1
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 604
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 603
    return-void
.end method

.method protected getAdjustVerticalOffset()I
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getContainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    return v0
.end method

.method public getMeasureInView()Landroid/view/View;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    return-object v0
.end method

.method public getPopupHeight()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    return v0
.end method

.method public getPopupWidth()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    return v0
.end method

.method public isAlloowScrollAnchorParent()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    return v0
.end method

.method public isAlwaysVisible()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMeasureInAnchorParent()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    return v0
.end method

.method public isWindowFaddingDark()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 624
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 627
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    .line 628
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 629
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 630
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 632
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 635
    :cond_0
    return v4

    .line 636
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 637
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 639
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 640
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 642
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 648
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    return v3

    .line 643
    .restart local v0    # "anchorView":Landroid/view/View;
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->dismiss()V

    .line 644
    return v4
.end method

.method protected onPopupPositionChange(Z)V
    .locals 0
    .param p1, "isOnAnchorTop"    # Z

    .prologue
    .line 588
    return-void
.end method

.method protected onPrevShow(Landroid/view/View;III)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "contentWidth"    # I

    .prologue
    .line 476
    return-void
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method

.method public setAllowScrollAnchorParent(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    .line 337
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAllowScrollAnchorParent:Z

    invoke-static {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setAllowScrollingAnchorParent(Landroid/widget/PopupWindow;Z)V

    .line 335
    return-void
.end method

.method public setAlwaysVisible(Z)V
    .locals 0
    .param p1, "alwaysVisible"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    .line 154
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupAnchorView:Landroid/view/View;

    .line 174
    return-void
.end method

.method public setClipToScreenEnabledExt(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setClipToScreenEnabled(Z)V

    .line 119
    return-void
.end method

.method public setContainView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setContentView(Landroid/view/View;)V

    .line 267
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 283
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 284
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "contentView":Landroid/view/View;
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 281
    :cond_0
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 302
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 304
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mTempPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setPopupWidth(I)V

    .line 300
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 130
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 192
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHorizontalOffset:I

    .line 191
    return-void
.end method

.method public setMeasureInAnchorParent(Z)V
    .locals 0
    .param p1, "measure"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInAnchorParent:Z

    .line 344
    return-void
.end method

.method public setMeasureInView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mMeasureInView:Landroid/view/View;

    .line 321
    return-void
.end method

.method public setModifiedPositionListener(Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mModifiedPositionListener:Lcom/letv/leui/widget/LeBasePopupWindow$OnModifiedPositionListener;

    .line 227
    return-void
.end method

.method public setPopupGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    .line 223
    return-void
.end method

.method public setPopupHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    .line 263
    return-void
.end method

.method public setPopupWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    .line 245
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupVerticalOffset:I

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mIsPopupVerticalOffsetSet:Z

    .line 211
    return-void
.end method

.method public setWindowFadingDark(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mWindowFadingDark:Z

    .line 352
    return-void
.end method

.method public show()V
    .locals 14

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->buildDropDown()Landroid/graphics/Point;

    move-result-object v7

    .line 370
    .local v7, "bound":Landroid/graphics/Point;
    iget v9, v7, Landroid/graphics/Point;->y:I

    .line 371
    .local v9, "height":I
    iget v13, v7, Landroid/graphics/Point;->x:I

    .line 372
    .local v13, "width":I
    const/4 v4, 0x0

    .line 373
    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .line 375
    .local v5, "heightSpec":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isInputMethodNotNeeded()Z

    move-result v10

    .line 385
    .local v10, "noInputMethod":Z
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 386
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 390
    const/4 v4, -0x1

    .line 397
    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 401
    if-eqz v10, :cond_2

    move v5, v9

    .line 403
    :goto_1
    if-eqz v10, :cond_4

    .line 405
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/4 v0, -0x1

    .line 406
    :goto_2
    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutMode(II)V

    .line 418
    :goto_3
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v0, :cond_9

    .line 419
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 418
    :goto_4
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setOutsideTouchable(Z)V

    .line 421
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->calculateGravityOffset(Landroid/view/View;I)[I

    move-result-object v8

    .line 423
    .local v8, "gravityOffset":[I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    .line 424
    const/4 v0, 0x0

    aget v2, v8, v0

    .line 425
    const/4 v0, 0x1

    aget v3, v8, v0

    move-object v0, p0

    .line 423
    invoke-virtual/range {v0 .. v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->update(Landroid/view/View;IIII)V

    .line 368
    :goto_5
    return-void

    .line 391
    .end local v8    # "gravityOffset":[I
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 392
    move v4, v13

    goto :goto_0

    .line 394
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    goto :goto_0

    .line 402
    :cond_2
    const/4 v5, -0x1

    goto :goto_1

    .line 406
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 409
    :cond_4
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    .line 410
    :goto_6
    const/4 v1, -0x1

    .line 408
    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    .line 410
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 412
    :cond_6
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 413
    move v5, v9

    goto :goto_3

    .line 415
    :cond_7
    iget v5, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    goto :goto_3

    .line 419
    :cond_8
    const/4 v0, 0x1

    goto :goto_4

    .line 418
    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 429
    :cond_a
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 430
    const/4 v4, -0x1

    .line 439
    :goto_7
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 440
    const/4 v5, -0x1

    .line 449
    :goto_8
    invoke-virtual {p0, v4, v5}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWindowLayoutMode(II)V

    .line 454
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeBasePopupWindow;->calculateGravityOffset(Landroid/view/View;I)[I

    move-result-object v8

    .line 455
    .restart local v8    # "gravityOffset":[I
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v0, :cond_10

    .line 456
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mAlwaysVisible:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 455
    :goto_9
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setOutsideTouchable(Z)V

    .line 457
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 458
    const/4 v1, 0x0

    aget v1, v8, v1

    .line 459
    const/4 v2, 0x1

    aget v2, v8, v2

    .line 460
    iget v3, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupGravity:I

    .line 457
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/letv/leui/widget/LeBasePopupWindow;->checkPopupPosition(Landroid/view/View;III)Z

    .line 465
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v6

    .line 466
    .local v6, "anchor":Landroid/view/View;
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 467
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    aget v1, v8, v1

    add-int v11, v0, v1

    .line 468
    .local v11, "posX":I
    iget-object v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v8, v1

    add-int v12, v0, v1

    .line 469
    .local v12, "posY":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0, v6, v11, v12, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->onPrevShow(Landroid/view/View;III)V

    .line 470
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBasePopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    aget v2, v8, v2

    add-int/2addr v1, v2

    .line 472
    iget-object v2, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mScreenLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v8, v3

    add-int/2addr v2, v3

    .line 470
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/letv/leui/widget/LeBasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_5

    .line 432
    .end local v6    # "anchor":Landroid/view/View;
    .end local v8    # "gravityOffset":[I
    .end local v11    # "posX":I
    .end local v12    # "posY":I
    :cond_b
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_c

    .line 433
    invoke-virtual {p0, v13}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWidth(I)V

    goto :goto_7

    .line 435
    :cond_c
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupWidth:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setWidth(I)V

    goto/16 :goto_7

    .line 442
    :cond_d
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_e

    .line 443
    invoke-virtual {p0, v9}, Lcom/letv/leui/widget/LeBasePopupWindow;->setHeight(I)V

    goto/16 :goto_8

    .line 445
    :cond_e
    iget v0, p0, Lcom/letv/leui/widget/LeBasePopupWindow;->mPopupHeight:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBasePopupWindow;->setHeight(I)V

    goto/16 :goto_8

    .line 456
    .restart local v8    # "gravityOffset":[I
    :cond_f
    const/4 v0, 0x1

    goto :goto_9

    .line 455
    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method
