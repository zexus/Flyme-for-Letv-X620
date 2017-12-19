.class Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "LeScrollStripTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeScrollStripTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;
    .param p2, "tabIndex"    # I

    .prologue
    .line 501
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    iput p2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->mTabIndex:I

    .line 501
    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;ILcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeScrollStripTabWidget;
    .param p2, "tabIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;-><init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, -0x1

    .line 506
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-get2(Lcom/letv/leui/widget/LeScrollStripTabWidget;)I

    move-result v2

    .line 508
    .local v2, "oldSelectedTab":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-get0(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 509
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v4, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->mTabIndex:I

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTab(I)V

    .line 514
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-get3(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 515
    iget v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->mTabIndex:I

    if-eq v3, v2, :cond_2

    .line 516
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-get3(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->mTabIndex:I

    invoke-interface {v3, v4}, Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;->onClickTabChanged(I)V

    .line 517
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3, v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-set0(Lcom/letv/leui/widget/LeScrollStripTabWidget;J)J

    .line 505
    :cond_0
    :goto_1
    return-void

    .line 511
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v4, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->mTabIndex:I

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTabButNotInvalidateScrollStrip(I)V

    goto :goto_0

    .line 519
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-get3(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->mTabIndex:I

    invoke-interface {v3, v4}, Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;->onClickTabNotChanged(I)V

    .line 521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 522
    .local v0, "currentTimeMs":J
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-get1(Lcom/letv/leui/widget/LeScrollStripTabWidget;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x15e

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    .line 523
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3, v8, v9}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-set0(Lcom/letv/leui/widget/LeScrollStripTabWidget;J)J

    .line 525
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-get3(Lcom/letv/leui/widget/LeScrollStripTabWidget;)Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;

    move-result-object v3

    iget v4, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->mTabIndex:I

    invoke-interface {v3, v4}, Lcom/letv/leui/widget/LeScrollStripTabWidget$OnTabClickListener;->onDoubleClickTabNotChanged(I)V

    goto :goto_1

    .line 527
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$TabClickListener;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    invoke-static {v3, v0, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->-set0(Lcom/letv/leui/widget/LeScrollStripTabWidget;J)J

    goto :goto_1
.end method
