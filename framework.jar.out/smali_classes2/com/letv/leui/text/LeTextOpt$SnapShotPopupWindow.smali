.class public Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;
.super Ljava/lang/Object;
.source "LeTextOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeTextOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapShotPopupWindow"
.end annotation


# static fields
.field private static final SNAPSHOT_BORDER_COLOR:I = -0x4b4643

.field private static final SNAPSHOT_BORDER_RADIUS:I = 0x2

.field private static final SNAPSHOT_OFFSET:I = 0x9

.field private static final SNAPSHOT_RADIUS:I = 0xb4

.field private static final SNAPSHOT_SHADOWS_OFFSET_Y:I = 0xc


# instance fields
.field protected mContentView:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field private mImageView:Lcom/letv/leui/widget/BorderedCircleImageView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mPivotX:I

.field private mPivotY:I

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mPreOffset:I

.field private mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

.field private mSnapZoomMultiplier:F

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;F)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "snapZoomMultiplier"    # F

    .prologue
    const/4 v5, -0x2

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    .line 524
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 526
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 527
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 528
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 529
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 531
    invoke-direct {p0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->onCreateContentView()Landroid/view/View;

    move-result-object v0

    .line 532
    .local v0, "contentView":Landroid/view/View;
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 533
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 534
    iput-object p1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    .line 535
    iput p2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapZoomMultiplier:F

    .line 522
    return-void
.end method

.method private computeLocalWidthOffset(IIII)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "posY"    # I
    .param p3, "viewportToContentHorizontalOffset"    # I
    .param p4, "viewportToContentVerticalOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 616
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    .line 618
    .local v5, "width":I
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 619
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 620
    .local v3, "offsetPosX":F
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 622
    .local v1, "line":I
    invoke-static {v0, p1}, Lcom/letv/leui/text/LeTextOpt;->isLineEndOffset(Landroid/text/Layout;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 623
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 624
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    .line 625
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    .line 630
    :goto_0
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    add-int/2addr v6, p3

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    .line 631
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    add-int/2addr v6, p3

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    .line 632
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    if-gez v6, :cond_1

    .line 633
    iput v7, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    .line 636
    :cond_1
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    if-gez v6, :cond_2

    .line 637
    iput v7, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    .line 640
    :cond_2
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 641
    .local v2, "lineTop":I
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 642
    .local v4, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    .line 643
    const/high16 v7, 0x41400000    # 12.0f

    .line 642
    add-float/2addr v6, v7

    .line 643
    const/high16 v7, 0x41100000    # 9.0f

    .line 642
    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    .line 644
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    add-int/2addr v6, p4

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    .line 646
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    add-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p4

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotY:I

    .line 649
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    add-int/2addr v6, p2

    if-gez v6, :cond_3

    .line 650
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    .line 615
    :cond_3
    return-void

    .line 627
    .end local v2    # "lineTop":I
    .end local v4    # "paint":Landroid/text/TextPaint;
    :cond_4
    float-to-int v6, v3

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    .line 628
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float v6, v3, v6

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    goto :goto_0
.end method

.method private onCreateContentView()Landroid/view/View;
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/4 v6, -0x2

    .line 539
    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 540
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/letv/leui/widget/BorderedCircleImageView;

    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;-><init>(Landroid/content/Context;)V

    .line 541
    .local v2, "imageView":Lcom/letv/leui/widget/BorderedCircleImageView;
    const/16 v5, 0xb6

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;->setCircleRadius(I)V

    .line 542
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBorderWidth(I)V

    .line 543
    const v5, -0x4b4643

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBorderColor(I)V

    .line 544
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 546
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 549
    const/4 v5, 0x1

    .line 546
    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 550
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/BorderedCircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 554
    .local v0, "boundView":Landroid/widget/ImageView;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 560
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 564
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 565
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 566
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 565
    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 567
    iput-object v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mImageView:Lcom/letv/leui/widget/BorderedCircleImageView;

    .line 568
    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 569
    return-object v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 654
    return-void
.end method

.method public getSnapShotCatcher()Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;
    .locals 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x168

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected showAtLocation(Landroid/view/View;II)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I

    .prologue
    const/4 v1, -0x1

    .line 666
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2, p3, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 665
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 670
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public showAtOffset(IIIII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "viewportToContentHorizontalOffset"    # I
    .param p5, "viewportToContentVerticalOffset"    # I

    .prologue
    .line 591
    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPreOffset:I

    if-ne v1, p1, :cond_0

    .line 592
    return-void

    .line 594
    :cond_0
    iput p1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPreOffset:I

    .line 595
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->computeLocalWidthOffset(IIII)V

    .line 598
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->getSnapShotCatcher()Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    move-result-object v0

    .line 599
    .local v0, "catcher":Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;
    invoke-virtual {v0}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 600
    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapZoomMultiplier:F

    invoke-static {v0, v1}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->-wrap1(Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;F)V

    .line 603
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->updatePosition(II)V

    .line 604
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    iget v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    iget v3, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotY:I

    invoke-static {v1, v2, v3}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->-wrap0(Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;II)V

    .line 606
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->updateZoomImage()V

    .line 590
    return-void
.end method

.method protected updatePosition(II)V
    .locals 3
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 659
    iget v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    add-int v0, p1, v2

    .line 660
    .local v0, "positionX":I
    iget v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    add-int v1, p2, v2

    .line 662
    .local v1, "positionY":I
    iget-object v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->showAtLocation(Landroid/view/View;II)V

    .line 658
    return-void
.end method

.method public updateZoomImage()V
    .locals 2

    .prologue
    .line 573
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mImageView:Lcom/letv/leui/widget/BorderedCircleImageView;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 575
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 576
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mImageView:Lcom/letv/leui/widget/BorderedCircleImageView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 572
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
