.class Lcom/letv/leui/widget/SwipeListViewHelper$1;
.super Ljava/lang/Object;
.source "SwipeListViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/SwipeListViewHelper;->onDismissAnimationEnd(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/SwipeListViewHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/SwipeListViewHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/SwipeListViewHelper;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/letv/leui/widget/SwipeListViewHelper$1;->this$0:Lcom/letv/leui/widget/SwipeListViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/letv/leui/widget/SwipeListViewHelper$1;->this$0:Lcom/letv/leui/widget/SwipeListViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/SwipeListViewHelper;->setPaused(Z)V

    .line 416
    return-void
.end method
