.class Lcom/letv/leui/widget/slide/LeSlideLayout$2;
.super Ljava/lang/Object;
.source "LeSlideLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/slide/LeSlideLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-set2(Lcom/letv/leui/widget/slide/LeSlideLayout;I)I

    .line 130
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get8(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-set1(Lcom/letv/leui/widget/slide/LeSlideLayout;Z)Z

    .line 132
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-static {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->-get6(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;->this$0:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->slideToOpen()V

    .line 127
    :cond_0
    return-void
.end method
