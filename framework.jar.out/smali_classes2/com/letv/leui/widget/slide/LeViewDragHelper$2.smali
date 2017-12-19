.class Lcom/letv/leui/widget/slide/LeViewDragHelper$2;
.super Ljava/lang/Object;
.source "LeViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeViewDragHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeViewDragHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/slide/LeViewDragHelper;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper$2;->this$0:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeViewDragHelper$2;->this$0:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setDragState(I)V

    .line 314
    return-void
.end method
