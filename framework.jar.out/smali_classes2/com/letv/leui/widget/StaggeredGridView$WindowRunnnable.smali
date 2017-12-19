.class Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/letv/leui/widget/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    .line 3296
    iput-object p1, p0, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/StaggeredGridView;Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/StaggeredGridView;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;-><init>(Lcom/letv/leui/widget/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v0}, Lcom/letv/leui/widget/StaggeredGridView;->-wrap0(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;->mOriginalAttachCount:I

    .line 3299
    return-void
.end method

.method public sameWindow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3304
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/StaggeredGridView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;->this$0:Lcom/letv/leui/widget/StaggeredGridView;

    invoke-static {v1}, Lcom/letv/leui/widget/StaggeredGridView;->-wrap0(Lcom/letv/leui/widget/StaggeredGridView;)I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
