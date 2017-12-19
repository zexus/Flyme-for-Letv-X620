.class final Lcom/letv/leui/widget/slide/LeSlide$3;
.super Ljava/lang/Object;
.source "LeSlide.java"

# interfaces
.implements Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/slide/LeSlide;->attach(Landroid/app/Activity;Lcom/letv/leui/widget/slide/LeSlideConfig;)Lcom/letv/leui/widget/slide/LeSlideInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final mEvaluator:Landroid/animation/ArgbEvaluator;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlideConfig;Landroid/app/Activity;)V
    .locals 1
    .param p1, "val$config"    # Lcom/letv/leui/widget/slide/LeSlideConfig;
    .param p2, "val$activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 140
    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getListener()Lcom/letv/leui/widget/slide/LeSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getListener()Lcom/letv/leui/widget/slide/LeSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/slide/LeSlideListener;->onSlideClosed()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 158
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 152
    return-void
.end method

.method public onOpened()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getListener()Lcom/letv/leui/widget/slide/LeSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getListener()Lcom/letv/leui/widget/slide/LeSlideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/slide/LeSlideListener;->onSlideOpened()V

    .line 162
    :cond_0
    return-void
.end method

.method public onSlideChange(F)V
    .locals 4
    .param p1, "percent"    # F

    .prologue
    .line 172
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->areStatusBarColorsValid()Z

    move-result v1

    .line 172
    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->mEvaluator:Landroid/animation/ArgbEvaluator;

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v2}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getPrimaryColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getSecondaryColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 175
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 181
    .end local v0    # "newColor":I
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getListener()Lcom/letv/leui/widget/slide/LeSlideListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getListener()Lcom/letv/leui/widget/slide/LeSlideListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/letv/leui/widget/slide/LeSlideListener;->onSlideChange(F)V

    .line 169
    :cond_1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getListener()Lcom/letv/leui/widget/slide/LeSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$3;->val$config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getListener()Lcom/letv/leui/widget/slide/LeSlideListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideListener;->onSlideStateChanged(I)V

    .line 145
    :cond_0
    return-void
.end method
