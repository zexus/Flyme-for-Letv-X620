.class Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "ModifiedGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ModifiedGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastDelta:I

.field private mLastFlingX:I

.field private mLastOverFlingX:I

.field private mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/letv/leui/widget/ModifiedGallery;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/ModifiedGallery;)V
    .locals 2
    .param p1, "this$0"    # Lcom/letv/leui/widget/ModifiedGallery;

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1436
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastOverFlingX:I

    .line 1440
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/letv/leui/widget/ModifiedGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 1439
    return-void
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1486
    if-eqz p1, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v0}, Lcom/letv/leui/widget/ModifiedGallery;->-wrap0(Lcom/letv/leui/widget/ModifiedGallery;)V

    .line 1479
    :goto_0
    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    goto :goto_0
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1444
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1495
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    iget v7, v7, Lcom/letv/leui/widget/ModifiedGallery;->mItemCount:I

    if-nez v7, :cond_0

    .line 1496
    invoke-direct {p0, v11}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    .line 1497
    return-void

    .line 1499
    :cond_0
    iget-object v5, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 1501
    .local v5, "scroller":Landroid/widget/OverScroller;
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->-get6(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1556
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7, v10}, Lcom/letv/leui/widget/ModifiedGallery;->-set2(Lcom/letv/leui/widget/ModifiedGallery;I)I

    .line 1557
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->-get4(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 1558
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    .line 1494
    :cond_1
    :goto_0
    return-void

    .line 1505
    :pswitch_0
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->-set0(Lcom/letv/leui/widget/ModifiedGallery;Z)Z

    .line 1507
    invoke-virtual {v5}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    .line 1508
    .local v4, "more":Z
    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v6

    .line 1512
    .local v6, "x":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastFlingX:I

    sub-int v1, v7, v6

    .line 1514
    .local v1, "delta":I
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, v1}, Lcom/letv/leui/widget/ModifiedGallery;->trackMotionScroll(I)Z

    move-result v3

    .line 1516
    .local v3, "isAtEdge":Z
    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->-get5(Lcom/letv/leui/widget/ModifiedGallery;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1520
    :cond_2
    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->-get5(Lcom/letv/leui/widget/ModifiedGallery;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1535
    :cond_3
    invoke-direct {p0, v11}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    goto :goto_0

    .line 1516
    :cond_4
    if-nez v3, :cond_2

    .line 1517
    iput v6, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastFlingX:I

    .line 1518
    iput v1, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastDelta:I

    .line 1519
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, p0}, Lcom/letv/leui/widget/ModifiedGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1520
    :cond_5
    if-eqz v3, :cond_3

    .line 1522
    invoke-direct {p0, v8}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    .line 1523
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->-get6(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 1524
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->-set2(Lcom/letv/leui/widget/ModifiedGallery;I)I

    .line 1529
    :goto_1
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7}, Lcom/letv/leui/widget/ModifiedGallery;->-get4(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v7

    if-eq v7, v9, :cond_6

    .line 1530
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, v9}, Lcom/letv/leui/widget/ModifiedGallery;->reportScrollStateChange(I)V

    .line 1533
    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 1526
    :cond_7
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->-set2(Lcom/letv/leui/widget/ModifiedGallery;I)I

    goto :goto_1

    .line 1541
    .end local v1    # "delta":I
    .end local v3    # "isAtEdge":Z
    .end local v4    # "more":Z
    .end local v6    # "x":I
    :pswitch_1
    invoke-virtual {v5}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1542
    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 1543
    .local v0, "currX":I
    iget v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastOverFlingX:I

    sub-int v2, v0, v7

    .line 1544
    .local v2, "deltaX":I
    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastOverFlingX:I

    .line 1546
    if-eqz v2, :cond_8

    .line 1547
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    neg-int v8, v2

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/ModifiedGallery;->trackMotionScroll(I)Z

    .line 1548
    :cond_8
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7}, Lcom/letv/leui/widget/ModifiedGallery;->invalidate()V

    .line 1549
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v7, p0}, Lcom/letv/leui/widget/ModifiedGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1551
    .end local v0    # "currX":I
    .end local v2    # "deltaX":I
    :cond_9
    invoke-direct {p0, v8}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    .line 1552
    iget-object v7, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v7, v10}, Lcom/letv/leui/widget/ModifiedGallery;->-set2(Lcom/letv/leui/widget/ModifiedGallery;I)I

    goto/16 :goto_0

    .line 1501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public startSpringback()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1464
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v1}, Lcom/letv/leui/widget/ModifiedGallery;->-get1(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->-set2(Lcom/letv/leui/widget/ModifiedGallery;I)I

    .line 1466
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v0}, Lcom/letv/leui/widget/ModifiedGallery;->-get1(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastOverFlingX:I

    .line 1467
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ModifiedGallery;->invalidate()V

    .line 1468
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1463
    :goto_0
    return-void

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ModifiedGallery;->-set2(Lcom/letv/leui/widget/ModifiedGallery;I)I

    goto :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .param p1, "distance"    # I

    .prologue
    const/4 v1, 0x0

    .line 1450
    if-nez p1, :cond_0

    return-void

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/letv/leui/widget/ModifiedGallery;->-set2(Lcom/letv/leui/widget/ModifiedGallery;I)I

    .line 1454
    invoke-direct {p0}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->startCommon()V

    .line 1456
    iput v1, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mLastFlingX:I

    .line 1458
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    neg-int v3, p1

    iget-object v2, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-static {v2}, Lcom/letv/leui/widget/ModifiedGallery;->-get0(Lcom/letv/leui/widget/ModifiedGallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1459
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1449
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->this$0:Lcom/letv/leui/widget/ModifiedGallery;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ModifiedGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1476
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ModifiedGallery$FlingRunnable;->endFling(Z)V

    .line 1474
    return-void
.end method
