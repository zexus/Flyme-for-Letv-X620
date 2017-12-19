.class public Lcom/letv/leui/app/FlingBackBaseActivity;
.super Landroid/app/Activity;
.source "FlingBackBaseActivity.java"


# instance fields
.field mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v1}, Lcom/letv/leui/app/FlingBackHelper;->isFlingBackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v1, p1}, Lcom/letv/leui/app/FlingBackHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 24
    .local v0, "comsumed":Z
    if-eqz v0, :cond_0

    .line 25
    return v0

    .line 28
    .end local v0    # "comsumed":Z
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public getFlingBackMode()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v0}, Lcom/letv/leui/app/FlingBackHelper;->getFlingBackMode()I

    move-result v0

    return v0
.end method

.method public isDownFlingBackEnabled()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v0}, Lcom/letv/leui/app/FlingBackHelper;->isDownFlingBackEnabled()Z

    move-result v0

    return v0
.end method

.method public isFlingBackEnabled()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v0}, Lcom/letv/leui/app/FlingBackHelper;->isFlingBackEnabled()Z

    move-result v0

    return v0
.end method

.method public isLeftFlingBackEnabled()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v0}, Lcom/letv/leui/app/FlingBackHelper;->isLeftFlingBackEnabled()Z

    move-result v0

    return v0
.end method

.method public isRightFlingBackEnabled()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v0}, Lcom/letv/leui/app/FlingBackHelper;->isRightFlingBackEnabled()Z

    move-result v0

    return v0
.end method

.method public isUpFlingBackEnabled()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v0}, Lcom/letv/leui/app/FlingBackHelper;->isUpFlingBackEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance v0, Lcom/letv/leui/app/FlingBackHelper;

    invoke-direct {v0, p0}, Lcom/letv/leui/app/FlingBackHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    .line 14
    return-void
.end method

.method public setFlingBackMode(I)V
    .locals 1
    .param p1, "flingBackMode"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/app/FlingBackHelper;->setFlingBackMode(I)V

    .line 31
    return-void
.end method

.method public setOnFlingBackGestureListener(Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;)V
    .locals 1
    .param p1, "l"    # Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/letv/leui/app/FlingBackBaseActivity;->mFlingBackHelper:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/app/FlingBackHelper;->setOnFlingBackGestureListener(Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;)V

    .line 59
    return-void
.end method
