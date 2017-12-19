.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;
.super Landroid/widget/RelativeLayout;
.source "SimpleLeLoadingHeader.java"

# interfaces
.implements Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimpleLeLoadingHeader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSimpleLeLoadingView:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

.field private needRest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->initView()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0xd2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .local v0, "rLP":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mContext:Landroid/content/Context;

    const v3, 0x10900ce

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x1020476

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    iput-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mSimpleLeLoadingView:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    .line 37
    return-void
.end method


# virtual methods
.method public getDefaultColorList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mSimpleLeLoadingView:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->getDefaultColorList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 6
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->getStatus()B

    move-result v3

    .line 102
    .local v3, "st":B
    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 103
    :cond_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPercent()F

    move-result v2

    .line 107
    .local v2, "percent":F
    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    .line 108
    .local v0, "l":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 109
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mSimpleLeLoadingView:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-virtual {v4, v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->setPercent(J)V

    .line 98
    :goto_0
    return-void

    .line 111
    :cond_2
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mSimpleLeLoadingView:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-virtual {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->resetOriginals()V

    goto :goto_0
.end method

.method public onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->needRest:Z

    .line 75
    const-string/jumbo v0, "SimpleLeLoadingHeader"

    const-string/jumbo v1, "onUIRefreshBegin --- percent ---"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "SimpleLeLoadingHeader"

    const-string/jumbo v1, "AutoRefresh --- onUIRefreshBegin"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mSimpleLeLoadingView:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->autoPull2RefreshAnim()V

    .line 73
    :cond_0
    return-void
.end method

.method public onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->needRest:Z

    if-eqz v0, :cond_0

    .line 94
    :cond_0
    const-string/jumbo v0, "SimpleLeLoadingHeader"

    const-string/jumbo v1, "onUIRefreshComplete --- "

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 69
    const-string/jumbo v0, "SimpleLeLoadingHeader"

    const-string/jumbo v1, "onUIRefreshPrepare "

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->needRest:Z

    .line 58
    const-string/jumbo v0, "SimpleLeLoadingHeader"

    const-string/jumbo v1, "onUIReset "

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;->isAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "SimpleLeLoadingHeader"

    const-string/jumbo v1, "AutoRefresh --- onUIReset"

    invoke-static {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/util/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mSimpleLeLoadingView:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->cancelAutoPull2RefreshAnim()V

    .line 56
    :cond_0
    return-void
.end method

.method public setEachColor4Balls(IIIIII)V
    .locals 7
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "color3"    # I
    .param p4, "color4"    # I
    .param p5, "color5"    # I
    .param p6, "color6"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->mSimpleLeLoadingView:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingView;->setEachColor4Balls(IIIIII)V

    .line 128
    return-void
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 120
    return-void
.end method

.method public setUp(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "ptrFrameLayout"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 49
    return-void
.end method
