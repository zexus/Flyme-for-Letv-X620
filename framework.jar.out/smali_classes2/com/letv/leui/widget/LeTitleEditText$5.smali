.class Lcom/letv/leui/widget/LeTitleEditText$5;
.super Ljava/lang/Object;
.source "LeTitleEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeTitleEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 102
    iput-object p1, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get3(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-static {v0}, Lcom/letv/leui/widget/LeTitleEditText;->-get3(Lcom/letv/leui/widget/LeTitleEditText;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeTitleEditText$5;->this$0:Lcom/letv/leui/widget/LeTitleEditText;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 103
    :cond_0
    return-void
.end method
