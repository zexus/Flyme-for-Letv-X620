.class public Lcom/letv/leui/widget/picker/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;,
        Lcom/letv/leui/widget/picker/WheelScroller$1;,
        Lcom/letv/leui/widget/picker/WheelScroller$2;
    }
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final SCROLLING_DURATION:I = 0x190


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private isVertical:Z

.field private lastScrollX:I

.field private lastScrollY:I

.field private lastTouchedX:F

.field private lastTouchedY:F

.field private listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

.field private maxX:I

.field private maxY:I

.field private minX:I

.field private minY:I

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/picker/WheelScroller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z

    return v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/picker/WheelScroller;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollX:I

    return v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/picker/WheelScroller;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollY:I

    return v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/picker/WheelScroller;)Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/picker/WheelScroller;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxX:I

    return v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/picker/WheelScroller;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxY:I

    return v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/picker/WheelScroller;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->minX:I

    return v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/picker/WheelScroller;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->minY:I

    return v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/picker/WheelScroller;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/picker/WheelScroller;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollX:I

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/picker/WheelScroller;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/picker/WheelScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelScroller;->justify()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/picker/WheelScroller;I)V
    .locals 0
    .param p1, "message"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;
    .param p3, "isVertical"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z

    .line 184
    const v0, 0x7fffffff

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxY:I

    .line 185
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxY:I

    neg-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->minY:I

    .line 186
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxY:I

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxX:I

    .line 187
    iget v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxX:I

    neg-int v0, v0

    iput v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->minX:I

    .line 190
    new-instance v0, Lcom/letv/leui/widget/picker/WheelScroller$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelScroller$1;-><init>(Lcom/letv/leui/widget/picker/WheelScroller;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 212
    iput v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->MESSAGE_SCROLL:I

    .line 213
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->MESSAGE_JUSTIFY:I

    .line 234
    new-instance v0, Lcom/letv/leui/widget/picker/WheelScroller$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/picker/WheelScroller$2;-><init>(Lcom/letv/leui/widget/picker/WheelScroller;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->animationHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 73
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 74
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 75
    iput-object p2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    .line 76
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->context:Landroid/content/Context;

    .line 77
    iput-boolean p3, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z

    .line 71
    return-void
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    return-void
.end method

.method private justify()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;->onJustify()V

    .line 287
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/picker/WheelScroller;->setNextMessage(I)V

    .line 285
    return-void
.end method

.method private setNextMessage(I)V
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelScroller;->clearMessages()V

    .line 222
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    return-void
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isScrollingPerformed:Z

    .line 296
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;->onStarted()V

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;->onFinished()V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isScrollingPerformed:Z

    .line 303
    :cond_0
    return-void
.end method

.method public getOrientation()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelScroller;->justify()V

    .line 165
    :cond_1
    return v4

    .line 131
    :pswitch_1
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z

    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastTouchedY:F

    .line 135
    :goto_1
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 136
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelScroller;->clearMessages()V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastTouchedX:F

    goto :goto_1

    .line 141
    :pswitch_2
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z

    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastTouchedY:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 143
    .local v1, "distanceY":I
    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelScroller;->startScrolling()V

    .line 145
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    invoke-interface {v2, v1}, Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastTouchedY:F

    goto :goto_0

    .line 149
    .end local v1    # "distanceY":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastTouchedX:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 150
    .local v0, "distanceX":I
    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelScroller;->startScrolling()V

    .line 152
    iget-object v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->listener:Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;

    invoke-interface {v2, v0}, Lcom/letv/leui/widget/picker/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastTouchedX:F

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public scroll(II)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "time"    # I

    .prologue
    const/16 v5, 0x190

    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 104
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z

    if-eqz v0, :cond_1

    .line 105
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollY:I

    .line 106
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v5, p2

    :cond_0
    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 111
    :goto_0
    invoke-direct {p0, v1}, Lcom/letv/leui/widget/picker/WheelScroller;->setNextMessage(I)V

    .line 112
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/WheelScroller;->startScrolling()V

    .line 102
    return-void

    .line 108
    :cond_1
    iput v1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->lastScrollX:I

    .line 109
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_2

    move v5, p2

    :cond_2
    move v2, v1

    move v3, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 94
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 92
    return-void
.end method

.method public setMaxX(I)V
    .locals 0
    .param p1, "maxX"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxX:I

    .line 181
    return-void
.end method

.method public setMaxY(I)V
    .locals 0
    .param p1, "maxY"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->maxY:I

    .line 168
    return-void
.end method

.method public setMinX(I)V
    .locals 0
    .param p1, "minX"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->minX:I

    .line 177
    return-void
.end method

.method public setMinY(I)V
    .locals 0
    .param p1, "minY"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->minY:I

    .line 173
    return-void
.end method

.method public setOrientation(Z)V
    .locals 0
    .param p1, "isVertical"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/WheelScroller;->isVertical:Z

    .line 80
    return-void
.end method

.method public stopScrolling()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 118
    return-void
.end method
