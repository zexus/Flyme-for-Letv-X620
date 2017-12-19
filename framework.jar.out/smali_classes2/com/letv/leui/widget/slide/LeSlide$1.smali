.class final Lcom/letv/leui/widget/slide/LeSlide$1;
.super Ljava/lang/Object;
.source "LeSlide.java"

# interfaces
.implements Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/slide/LeSlide;->attach(Landroid/app/Activity;II)Lcom/letv/leui/widget/slide/LeSlideInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final mEvaluator:Landroid/animation/ArgbEvaluator;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$statusBarColor1:I

.field final synthetic val$statusBarColor2:I


# direct methods
.method constructor <init>(Landroid/app/Activity;II)V
    .locals 1
    .param p1, "val$activity"    # Landroid/app/Activity;
    .param p2, "val$statusBarColor1"    # I
    .param p3, "val$statusBarColor2"    # I

    .prologue
    .line 50
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$statusBarColor1:I

    iput p3, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$statusBarColor2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->mEvaluator:Landroid/animation/ArgbEvaluator;

    .line 50
    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 62
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 60
    return-void
.end method

.method public onOpened()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onSlideChange(F)V
    .locals 4
    .param p1, "percent"    # F

    .prologue
    const/4 v3, -0x1

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 72
    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$statusBarColor1:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$statusBarColor2:I

    if-eq v1, v3, :cond_0

    .line 73
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->mEvaluator:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$statusBarColor1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$statusBarColor2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, "newColor":I
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlide$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 69
    .end local v0    # "newColor":I
    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 55
    return-void
.end method
