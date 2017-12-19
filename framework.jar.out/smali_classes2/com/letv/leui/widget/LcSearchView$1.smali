.class Lcom/letv/leui/widget/LcSearchView$1;
.super Ljava/lang/Object;
.source "LcSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LcSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LcSearchView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LcSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LcSearchView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/letv/leui/widget/LcSearchView$1;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/letv/leui/widget/LcSearchView$1;->this$0:Lcom/letv/leui/widget/LcSearchView;

    invoke-static {v0}, Lcom/letv/leui/widget/LcSearchView;->-wrap2(Lcom/letv/leui/widget/LcSearchView;)V

    .line 63
    return-void
.end method
