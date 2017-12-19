.class Lcom/letv/leui/widget/GaussianBlurRenderer$1;
.super Ljava/lang/Object;
.source "GaussianBlurRenderer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/GaussianBlurRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/GaussianBlurRenderer;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/GaussianBlurRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/GaussianBlurRenderer;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/letv/leui/widget/GaussianBlurRenderer$1;->this$0:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer$1;->this$0:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-static {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->-get0(Lcom/letv/leui/widget/GaussianBlurRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer$1;->this$0:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-static {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->-get1(Lcom/letv/leui/widget/GaussianBlurRenderer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/letv/leui/widget/GaussianBlurRenderer$1;->this$0:Lcom/letv/leui/widget/GaussianBlurRenderer;

    invoke-static {v0}, Lcom/letv/leui/widget/GaussianBlurRenderer;->-wrap0(Lcom/letv/leui/widget/GaussianBlurRenderer;)V

    .line 379
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
