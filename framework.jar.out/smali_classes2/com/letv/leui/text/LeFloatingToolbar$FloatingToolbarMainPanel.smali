.class final Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeFloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarMainPanel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;
    }
.end annotation


# instance fields
.field private final mContentView:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance v0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;-><init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)V

    .line 496
    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 517
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    .line 518
    iput-object p2, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    .line 516
    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "menuItemButton"    # Landroid/view/View;
    .param p2, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 566
    move-object v0, p1

    .line 567
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 568
    iget-object v1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public layoutMenuItems(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 531
    .local v5, "remainingMenuItems":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/view/MenuItem;>;"
    iget-object v7, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 533
    :goto_0
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 534
    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    .line 535
    .local v2, "menuItem":Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/letv/leui/text/LeFloatingToolbar;->-wrap0(Landroid/content/Context;Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    .line 537
    .local v3, "menuItemButton":Landroid/view/View;
    iget-object v7, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 538
    .local v6, "res":Landroid/content/res/Resources;
    const v7, 0x1050169

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 540
    .local v1, "itemMargin":I
    const v7, 0x1050168

    .line 539
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 540
    mul-int/lit8 v8, v1, 0x2

    .line 539
    sub-int v0, v7, v8

    .line 542
    .local v0, "itemHeight":I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 543
    const/4 v7, -0x2

    .line 542
    invoke-direct {v4, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 545
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 546
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 547
    const/16 v7, 0x10

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 549
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    invoke-direct {p0, v3, v2}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 551
    iget-object v7, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 552
    invoke-virtual {v5}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 554
    .end local v0    # "itemHeight":I
    .end local v1    # "itemMargin":I
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "menuItemButton":Landroid/view/View;
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    return-object v5
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 557
    return-void
.end method
