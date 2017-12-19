.class public Lcom/letv/leui/widget/LeTransLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LeTransLinearLayout.java"


# instance fields
.field private hidePercent:F

.field private isIntercept:Z

.field private transparentHelper:Lcom/letv/leui/widget/LeLayoutTransparentHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->isIntercept:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->isIntercept:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->transparentHelper:Lcom/letv/leui/widget/LeLayoutTransparentHelper;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->transparentHelper:Lcom/letv/leui/widget/LeLayoutTransparentHelper;

    iget v1, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->hidePercent:F

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->setHidePercent(F)V

    .line 59
    iget-object v0, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->transparentHelper:Lcom/letv/leui/widget/LeLayoutTransparentHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->draw(Landroid/graphics/Canvas;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->isIntercept:Z

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHidePercent(F)V
    .locals 0
    .param p1, "hidePercent"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->hidePercent:F

    .line 22
    return-void
.end method

.method public setIntercept(Z)V
    .locals 0
    .param p1, "isIntercept"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->isIntercept:Z

    .line 13
    return-void
.end method

.method public setTransparentHelper(Lcom/letv/leui/widget/LeLayoutTransparentHelper;)V
    .locals 0
    .param p1, "transparentHelper"    # Lcom/letv/leui/widget/LeLayoutTransparentHelper;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/letv/leui/widget/LeTransLinearLayout;->transparentHelper:Lcom/letv/leui/widget/LeLayoutTransparentHelper;

    .line 19
    return-void
.end method
