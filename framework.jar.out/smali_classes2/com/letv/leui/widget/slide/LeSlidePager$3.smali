.class Lcom/letv/leui/widget/slide/LeSlidePager$3;
.super Ljava/lang/Object;
.source "LeSlidePager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/slide/LeSlidePager;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlidePager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/slide/LeSlidePager;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$3;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$3;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/widget/slide/LeSlidePager;->-wrap0(Lcom/letv/leui/widget/slide/LeSlidePager;I)V

    .line 222
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$3;->this$0:Lcom/letv/leui/widget/slide/LeSlidePager;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlidePager;->populate()V

    .line 220
    return-void
.end method
