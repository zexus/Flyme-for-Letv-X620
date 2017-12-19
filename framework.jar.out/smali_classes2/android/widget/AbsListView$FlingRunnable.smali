.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$FlingRunnable$1;
    }
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method static synthetic -get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v2, 0x1

    .line 5080
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5042
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 5081
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 5083
    iget-boolean v0, p1, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_0

    .line 5084
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v2, v2}, Landroid/widget/OverScroller;->setEnableLeOverScroll(ZZ)V

    .line 5080
    :cond_0
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    const/4 v5, 0x0

    .line 5174
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_2

    .line 5175
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v5, v5, v5}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 5176
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 5181
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    .line 5182
    .local v0, "overscrollMode":I
    if-eqz v0, :cond_3

    .line 5183
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-wrap1(Landroid/widget/AbsListView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5203
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5204
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    .line 5205
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5208
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 5209
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5171
    return-void

    .line 5179
    .end local v0    # "overscrollMode":I
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    .line 5184
    .restart local v0    # "overscrollMode":I
    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5185
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 5187
    .local v1, "vel":I
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5188
    const-string/jumbo v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "edgeReached when fling: touch mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5189
    const-string/jumbo v4, ",mScrollY = "

    .line 5188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5189
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v4

    .line 5188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5189
    const-string/jumbo v4, ",delta = "

    .line 5188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5189
    const-string/jumbo v4, ",vel = "

    .line 5188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-nez v2, :cond_1

    .line 5196
    if-lez p1, :cond_5

    .line 5197
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get5(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_1

    .line 5199
    :cond_5
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get4(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_1
.end method

.method endFling()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5228
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5229
    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5230
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endFling+: mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5231
    const-string/jumbo v2, ",mFirstPosition = "

    .line 5230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5231
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5231
    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "endFling"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 5230
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5237
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5239
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5240
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5242
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 5243
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-wrap4(Landroid/widget/AbsListView;)V

    .line 5244
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5246
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5247
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endFling-: mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5248
    const-string/jumbo v2, ",mFirstPosition = "

    .line 5247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5248
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5251
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-get7(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5252
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-get7(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 5253
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0, v4}, Landroid/widget/AbsListView;->-set0(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5227
    :cond_2
    return-void

    .line 5233
    :cond_3
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endFling+: mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mTouchMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5234
    const-string/jumbo v2, ",mFirstPosition = "

    .line 5233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5234
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 5258
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5259
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flywheelTouch: touch mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mScrollY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5260
    const-string/jumbo v2, ",this = "

    .line 5259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5260
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 5259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5263
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5257
    return-void
.end method

.method public run()V
    .locals 30

    .prologue
    .line 5268
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get8(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_2

    .line 5269
    :cond_0
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/widget/AbsListView;->-get20()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5270
    const-string/jumbo v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FlingRunnable: touch mode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",mAdapter = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5271
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5271
    const-string/jumbo v5, ",mFirstPosition = "

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5271
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5271
    const-string/jumbo v5, ",mDataChanged = "

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5272
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5272
    const-string/jumbo v5, ",adatper size = "

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5272
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mItemCount:I

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5272
    const-string/jumbo v5, ",this = "

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5273
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 5270
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5275
    :cond_1
    return-void

    .line 5268
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v2, :cond_0

    .line 5278
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    .line 5280
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5281
    return-void

    .line 5284
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5285
    return-void

    .line 5289
    :cond_3
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v2, :cond_4

    .line 5290
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5293
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 5294
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5295
    return-void

    .line 5298
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v27, v0

    .line 5299
    .local v27, "scroller":Landroid/widget/OverScroller;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v23

    .line 5300
    .local v23, "more":Z
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v29

    .line 5304
    .local v29, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v20, v2, v29

    .line 5307
    .local v20, "delta":I
    if-lez v20, :cond_a

    .line 5309
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5310
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 5311
    .local v21, "firstView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5314
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 5328
    .end local v21    # "firstView":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 5329
    .local v24, "motionView":Landroid/view/View;
    const/16 v26, 0x0

    .line 5330
    .local v26, "oldTop":I
    if-eqz v24, :cond_7

    .line 5331
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v26

    .line 5335
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v15

    .line 5336
    .local v15, "atEdge":Z
    if-eqz v15, :cond_b

    if-eqz v20, :cond_b

    const/16 v16, 0x1

    .line 5338
    .local v16, "atEnd":Z
    :goto_1
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5339
    const-string/jumbo v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FlingRunnable mode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " mScrollY = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5340
    const-string/jumbo v5, ",atEnd = "

    .line 5339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5340
    const-string/jumbo v5, ",delta = "

    .line 5339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5340
    const-string/jumbo v5, ",more = "

    .line 5339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5341
    const-string/jumbo v5, ",y = "

    .line 5339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5341
    const-string/jumbo v5, ",mLastFlingY = "

    .line 5339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5341
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5339
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5344
    :cond_8
    if-eqz v16, :cond_f

    .line 5346
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_d

    .line 5347
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->canOverScroll()Z

    move-result v2

    if-nez v2, :cond_c

    .line 5348
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5267
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v23    # "more":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    .end local v29    # "y":I
    :cond_9
    :goto_2
    return-void

    .line 5317
    .restart local v20    # "delta":I
    .restart local v23    # "more":Z
    .restart local v29    # "y":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v25, v2, -0x1

    .line 5318
    .local v25, "offsetToLast":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v3, v3, v25

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5320
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 5321
    .local v22, "lastView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5324
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get12(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get13(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_0

    .line 5336
    .end local v22    # "lastView":Landroid/view/View;
    .end local v25    # "offsetToLast":I
    .restart local v15    # "atEdge":Z
    .restart local v24    # "motionView":Landroid/view/View;
    .restart local v26    # "oldTop":I
    :cond_b
    const/16 v16, 0x0

    .restart local v16    # "atEnd":Z
    goto/16 :goto_1

    .line 5351
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    invoke-static {v2, v3}, Landroid/widget/AbsListView;->-set1(Landroid/widget/AbsListView;I)I

    .line 5352
    if-eqz v23, :cond_9

    .line 5353
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto :goto_2

    .line 5359
    :cond_d
    if-eqz v24, :cond_e

    .line 5361
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v26

    sub-int v2, v20, v2

    neg-int v4, v2

    .line 5362
    .local v4, "overshoot":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v6

    .line 5363
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v3, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 5362
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5363
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 5362
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsListView;->-wrap2(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    .line 5365
    .end local v4    # "overshoot":I
    :cond_e
    if-eqz v23, :cond_9

    .line 5366
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_2

    .line 5372
    :cond_f
    if-eqz v23, :cond_10

    if-eqz v16, :cond_11

    .line 5377
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_2

    .line 5373
    :cond_11
    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 5374
    :cond_12
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5375
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 5395
    .end local v15    # "atEdge":Z
    .end local v16    # "atEnd":Z
    .end local v20    # "delta":I
    .end local v23    # "more":Z
    .end local v24    # "motionView":Landroid/view/View;
    .end local v26    # "oldTop":I
    .end local v27    # "scroller":Landroid/widget/OverScroller;
    .end local v29    # "y":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v27, v0

    .line 5397
    .restart local v27    # "scroller":Landroid/widget/OverScroller;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_15

    .line 5398
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 5399
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v9

    .line 5400
    .local v9, "scrollY":I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v19

    .line 5401
    .local v19, "currY":I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int v7, v2, v3

    .line 5402
    .local v7, "deltaY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v19

    invoke-static {v2, v0}, Landroid/widget/AbsListView;->-set1(Landroid/widget/AbsListView;I)I

    .line 5403
    if-eqz v7, :cond_13

    .line 5404
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    neg-int v3, v7

    neg-int v5, v7

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5405
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 5406
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 5408
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v19    # "currY":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_2

    .line 5412
    :cond_15
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5413
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v9

    .line 5414
    .restart local v9    # "scrollY":I
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v19

    .line 5415
    .restart local v19    # "currY":I
    sub-int v7, v19, v9

    .line 5416
    .restart local v7    # "deltaY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    .line 5417
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v13, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 5416
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 5417
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 5416
    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->-wrap2(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5418
    if-gtz v9, :cond_19

    if-lez v19, :cond_19

    const/16 v17, 0x1

    .line 5419
    .local v17, "crossDown":Z
    :goto_3
    if-ltz v9, :cond_1a

    if-gez v19, :cond_1a

    const/16 v18, 0x1

    .line 5421
    .local v18, "crossUp":Z
    :goto_4
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 5422
    const-string/jumbo v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FlingRunnable touch mode overfling: crossDown = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5423
    const-string/jumbo v5, ",crossUp = "

    .line 5422
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5423
    const-string/jumbo v5, ",mScrollY = "

    .line 5422
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5424
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v5

    .line 5422
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5424
    const-string/jumbo v5, ",scrollY = "

    .line 5422
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5424
    const-string/jumbo v5, ",deltaY = "

    .line 5422
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5427
    :cond_16
    if-nez v17, :cond_17

    if-eqz v18, :cond_1b

    .line 5428
    :cond_17
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 5429
    .local v28, "velocity":I
    if-eqz v18, :cond_18

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 5432
    :cond_18
    invoke-virtual/range {v27 .. v27}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5433
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_2

    .line 5418
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    .end local v28    # "velocity":I
    :cond_19
    const/16 v17, 0x0

    .restart local v17    # "crossDown":Z
    goto/16 :goto_3

    .line 5419
    :cond_1a
    const/16 v18, 0x0

    .restart local v18    # "crossUp":Z
    goto/16 :goto_4

    .line 5435
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_2

    .line 5438
    .end local v17    # "crossDown":Z
    .end local v18    # "crossUp":Z
    :cond_1c
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5439
    const-string/jumbo v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FlingRunnable overScrollBy return false: mScrollY = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5440
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v5

    .line 5439
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5440
    const-string/jumbo v5, ", old scrollY = "

    .line 5439
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5441
    const-string/jumbo v5, ", mScroller.getCurrVelocity() = "

    .line 5439
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5442
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v5

    .line 5439
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5444
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    .line 5445
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 5448
    .end local v7    # "deltaY":I
    .end local v9    # "scrollY":I
    .end local v19    # "currY":I
    :cond_1e
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5449
    const-string/jumbo v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FlingRunnable overfling intend to endfling: mScrollY = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5450
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v5}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v5

    .line 5449
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_2

    .line 5278
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 5090
    if-gez p1, :cond_2

    const v2, 0x7fffffff

    .line 5091
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5093
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5094
    const-string/jumbo v0, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start: touch mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5095
    const-string/jumbo v4, ",mScrollY = "

    .line 5094
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5095
    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v4

    .line 5094
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5096
    const-string/jumbo v4, ",initialVelocity = "

    .line 5094
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5097
    const-string/jumbo v4, ",mLastFlingY = "

    .line 5094
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5097
    iget v4, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5094
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v5}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5101
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5103
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5104
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5113
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-get7(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5114
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string/jumbo v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-set0(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 5089
    :cond_1
    return-void

    .line 5090
    .end local v2    # "initialY":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "initialY":I
    goto/16 :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .param p1, "initialVelocity"    # I

    .prologue
    const v8, 0x7fffffff

    const/high16 v7, -0x80000000

    const/4 v1, 0x0

    .line 5145
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5146
    const-string/jumbo v0, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startOverfling: touch mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mScrollY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5147
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v3

    .line 5146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5147
    const-string/jumbo v3, ",initialVelocity = "

    .line 5146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5148
    const-string/jumbo v3, ",mMinimumVelocity = "

    .line 5146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5148
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get11(Landroid/widget/AbsListView;)I

    move-result v3

    .line 5146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5148
    const-string/jumbo v3, ",getHeight() = "

    .line 5146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5149
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 5146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5157
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_1

    .line 5158
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    .line 5159
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    .line 5158
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 5166
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5167
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5168
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5144
    return-void

    .line 5162
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5163
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v2

    .line 5164
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    .line 5163
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_0
.end method

.method startScroll(IIZ)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5213
    if-gez p1, :cond_1

    const v2, 0x7fffffff

    .line 5214
    .local v2, "initialY":I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5216
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5217
    const-string/jumbo v0, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startScroll: touch mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mScrollY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v4}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5218
    const-string/jumbo v4, ",distance = "

    .line 5217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5218
    const-string/jumbo v4, ",mLastFlingY = "

    .line 5217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5218
    iget v4, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 5217
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5221
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_2

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5222
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5223
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5224
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5212
    return-void

    .line 5213
    .end local v2    # "initialY":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "initialY":I
    goto :goto_0

    .line 5221
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5119
    invoke-static {}, Landroid/widget/AbsListView;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/AbsListView;->-get21()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5120
    const-string/jumbo v0, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSpringback: touch mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5121
    const-string/jumbo v3, ",mScrollY = "

    .line 5120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5121
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v3}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v3

    .line 5120
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    :goto_0
    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5133
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mLeOverScrollEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    :goto_1
    invoke-static {v1, v0}, Landroid/widget/AbsListView;->-set1(Landroid/widget/AbsListView;I)I

    .line 5135
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5136
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5137
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5118
    :goto_2
    return-void

    .line 5132
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v2}, Landroid/widget/AbsListView;->-get16(Landroid/widget/AbsListView;)I

    move-result v2

    goto :goto_0

    .line 5133
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)I

    move-result v0

    goto :goto_1

    .line 5139
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5140
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_2
.end method
