.class Lcom/letv/leui/widget/LeTitleEditText$2;
.super Ljava/lang/Object;
.source "LeTitleEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeTitleEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeTitleEditText;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeTitleEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeTitleEditText;

    .prologue
    .line 745
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get0(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-wrap0(Lcom/letv/leui/widget/LeTitleEditText;)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get1(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get5(Lcom/letv/leui/widget/LeTitleEditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$2;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-wrap1(Lcom/letv/leui/widget/LeTitleEditText;)V

    goto :goto_0
.end method
