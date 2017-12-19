.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;
.super Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
.source "PtrClassicFrameLayout.java"


# instance fields
.field private mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->initViews()V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->initViews()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->initViews()V

    .line 21
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    .line 29
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 30
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->addPtrUIHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getHeader()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    return-object v0
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrClassicFrameLayout;->mPtrClassicHeader:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/leui/header/SimpleLeLoadingHeader;->setLastUpdateTimeRelateObject(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method
