.class Lcom/letv/leui/widget/picker/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/picker/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelView;->-get0(Lcom/letv/leui/widget/picker/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 246
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->-set0(Lcom/letv/leui/widget/picker/WheelView;Z)Z

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->-set1(Lcom/letv/leui/widget/picker/WheelView;I)I

    .line 249
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->invalidate()V

    .line 243
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/WheelView;->-get2(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/picker/WheelScroller;->scroll(II)V

    .line 252
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 5
    .param p1, "distance"    # I

    .prologue
    .line 202
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get1(Lcom/letv/leui/widget/picker/WheelView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v3, v3, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    if-lt v3, v4, :cond_1

    .line 205
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v1

    .line 206
    .local v1, "lastOffset":I
    if-ltz p1, :cond_0

    .line 207
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->-wrap0(Lcom/letv/leui/widget/picker/WheelView;I)V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    neg-int v4, v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->-wrap0(Lcom/letv/leui/widget/picker/WheelView;I)V

    goto :goto_0

    .line 213
    .end local v1    # "lastOffset":I
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    iget v4, v4, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    if-lt v3, v4, :cond_2

    .line 216
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get2(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    .line 218
    return-void

    .line 221
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3, p1}, Lcom/letv/leui/widget/picker/WheelView;->-wrap0(Lcom/letv/leui/widget/picker/WheelView;I)V

    .line 222
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get1(Lcom/letv/leui/widget/picker/WheelView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 223
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelView;->getHeight()I

    move-result v0

    .line 224
    .local v0, "height":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    if-le v3, v0, :cond_4

    .line 225
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3, v0}, Lcom/letv/leui/widget/picker/WheelView;->-set1(Lcom/letv/leui/widget/picker/WheelView;I)I

    .line 226
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get2(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    .line 200
    .end local v0    # "height":I
    :cond_3
    :goto_1
    return-void

    .line 227
    .restart local v0    # "height":I
    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    neg-int v4, v0

    if-ge v3, v4, :cond_3

    .line 228
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    neg-int v4, v0

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->-set1(Lcom/letv/leui/widget/picker/WheelView;I)I

    .line 229
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get2(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    goto :goto_1

    .line 232
    .end local v0    # "height":I
    :cond_5
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelView;->getWidth()I

    move-result v2

    .line 233
    .local v2, "width":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    if-le v3, v2, :cond_6

    .line 234
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3, v2}, Lcom/letv/leui/widget/picker/WheelView;->-set1(Lcom/letv/leui/widget/picker/WheelView;I)I

    .line 235
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get2(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    goto :goto_1

    .line 236
    :cond_6
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get3(Lcom/letv/leui/widget/picker/WheelView;)I

    move-result v3

    neg-int v4, v2

    if-ge v3, v4, :cond_3

    .line 237
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    neg-int v4, v2

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->-set1(Lcom/letv/leui/widget/picker/WheelView;I)I

    .line 238
    iget-object v3, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/WheelView;->-get2(Lcom/letv/leui/widget/picker/WheelView;)Lcom/letv/leui/widget/picker/WheelScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/WheelScroller;->stopScrolling()V

    goto :goto_1
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->-set0(Lcom/letv/leui/widget/picker/WheelView;Z)Z

    .line 197
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$1;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->notifyScrollingListenersAboutStart()V

    .line 195
    return-void
.end method
