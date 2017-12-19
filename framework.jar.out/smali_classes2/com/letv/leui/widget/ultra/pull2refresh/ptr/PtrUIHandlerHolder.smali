.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
.super Ljava/lang/Object;
.source "PtrUIHandlerHolder.java"

# interfaces
.implements Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;


# instance fields
.field private mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

.field private mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)V
    .locals 3
    .param p0, "head"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    .param p1, "handler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    return-void

    .line 34
    :cond_0
    if-nez p0, :cond_1

    .line 35
    return-void

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-nez v2, :cond_2

    .line 38
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .line 39
    return-void

    .line 42
    :cond_2
    move-object v0, p0

    .line 46
    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :goto_0
    invoke-direct {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->contains(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    return-void

    .line 49
    :cond_3
    iget-object v2, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v2, :cond_4

    .line 54
    new-instance v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-direct {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;-><init>()V

    .line 55
    .local v1, "newHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    iput-object p1, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .line 56
    iput-object v1, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .line 29
    return-void

    .line 43
    .end local v1    # "newHolder":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_4
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    goto :goto_0
.end method

.method private contains(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Z
    .locals 2
    .param p1, "handler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    const/4 v0, 0x0

    .line 14
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static create()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;-><init>()V

    return-object v0
.end method

.method private getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    return-object v0
.end method

.method public static removeHandler(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    .locals 4
    .param p0, "head"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    .param p1, "handler"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    .prologue
    const/4 v3, 0x0

    .line 64
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 65
    :cond_0
    return-object p0

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v2, :cond_0

    .line 68
    move-object v0, p0

    .line 69
    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    const/4 v1, 0x0

    .line 74
    :cond_2
    invoke-direct {v0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->contains(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    if-nez v1, :cond_4

    .line 79
    iget-object p0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .line 80
    iput-object v3, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .line 82
    move-object v0, p0

    .line 94
    :goto_0
    if-nez v0, :cond_2

    .line 96
    if-nez p0, :cond_3

    .line 97
    new-instance p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .end local p0    # "head":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;-><init>()V

    .line 99
    .restart local p0    # "head":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_3
    return-object p0

    .line 85
    :cond_4
    iget-object v2, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    iput-object v2, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .line 86
    iput-object v3, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    .line 87
    iget-object v0, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    goto :goto_0

    .line 90
    :cond_5
    move-object v1, v0

    .line 91
    .local v1, "pre":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    goto :goto_0
.end method


# virtual methods
.method public hasHandler()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mHandler:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    .line 151
    move-object v0, p0

    .line 153
    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .line 154
    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V

    .line 157
    :cond_1
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    .line 150
    return-void
.end method

.method public onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 129
    move-object v0, p0

    .line 131
    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .line 132
    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 135
    :cond_1
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    .line 128
    return-void
.end method

.method public onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 140
    move-object v0, p0

    .line 142
    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .line 143
    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 146
    :cond_1
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    .line 139
    return-void
.end method

.method public onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 3
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    move-object v0, p0

    .line 120
    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_1
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .line 121
    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 124
    :cond_2
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_1

    .line 114
    return-void
.end method

.method public onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    .line 104
    move-object v0, p0

    .line 106
    .local v0, "current":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->getHandler()Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;

    move-result-object v1

    .line 107
    .local v1, "handler":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;->onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V

    .line 110
    :cond_1
    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;->mNext:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    .line 103
    return-void
.end method
