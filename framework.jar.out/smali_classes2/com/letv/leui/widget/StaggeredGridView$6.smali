.class Lcom/letv/leui/widget/StaggeredGridView$6;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/StaggeredGridView;->setSelectionToTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$6;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$6;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/StaggeredGridView;->setSelectionToTop()V

    .line 2346
    return-void
.end method
