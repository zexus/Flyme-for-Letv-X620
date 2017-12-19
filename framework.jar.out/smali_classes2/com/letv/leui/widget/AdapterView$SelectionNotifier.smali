.class Lcom/letv/leui/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/AdapterView;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 849
    .local p0, "this":Lcom/letv/leui/widget/AdapterView$SelectionNotifier;, "Lcom/letv/leui/widget/AdapterView<TT;>.SelectionNotifier;"
    .local p1, "this$0":Lcom/letv/leui/widget/AdapterView;, "Lcom/letv/leui/widget/AdapterView<TT;>;"
    iput-object p1, p0, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/AdapterView;Lcom/letv/leui/widget/AdapterView$SelectionNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/AdapterView;

    .prologue
    .local p0, "this":Lcom/letv/leui/widget/AdapterView$SelectionNotifier;, "Lcom/letv/leui/widget/AdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;-><init>(Lcom/letv/leui/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 851
    .local p0, "this":Lcom/letv/leui/widget/AdapterView$SelectionNotifier;, "Lcom/letv/leui/widget/AdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;->this$0:Lcom/letv/leui/widget/AdapterView;

    iget-boolean v0, v0, Lcom/letv/leui/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-static {v0}, Lcom/letv/leui/widget/AdapterView;->-wrap1(Lcom/letv/leui/widget/AdapterView;)V

    .line 860
    iget-object v0, p0, Lcom/letv/leui/widget/AdapterView$SelectionNotifier;->this$0:Lcom/letv/leui/widget/AdapterView;

    invoke-static {v0}, Lcom/letv/leui/widget/AdapterView;->-wrap3(Lcom/letv/leui/widget/AdapterView;)V

    goto :goto_0
.end method
