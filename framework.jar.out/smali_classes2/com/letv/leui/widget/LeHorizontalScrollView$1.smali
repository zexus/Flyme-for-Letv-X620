.class Lcom/letv/leui/widget/LeHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "LeHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeHorizontalScrollView;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeHorizontalScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeHorizontalScrollView;

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView$1;->this$0:Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView$1;->this$0:Lcom/letv/leui/widget/LeHorizontalScrollView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeHorizontalScrollView;->requestLayout()V

    .line 1930
    return-void
.end method
