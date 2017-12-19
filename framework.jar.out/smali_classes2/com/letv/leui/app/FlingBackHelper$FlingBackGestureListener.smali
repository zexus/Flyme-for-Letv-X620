.class Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FlingBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/app/FlingBackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingBackGestureListener"
.end annotation


# instance fields
.field private mHandleGestureToDown:Z

.field private mHandleGestureToLeft:Z

.field private mHandleGestureToRight:Z

.field private mHandleGestureToUp:Z

.field final synthetic this$0:Lcom/letv/leui/app/FlingBackHelper;


# direct methods
.method private constructor <init>(Lcom/letv/leui/app/FlingBackHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/app/FlingBackHelper;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/app/FlingBackHelper;Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/app/FlingBackHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;-><init>(Lcom/letv/leui/app/FlingBackHelper;)V

    return-void
.end method

.method private performGestureEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 134
    const-wide v4, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 136
    .local v2, "ratio":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 137
    .local v0, "distanceX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 139
    .local v1, "distanceY":F
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get2(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get2(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 140
    return v7

    .line 142
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v3}, Lcom/letv/leui/app/FlingBackHelper;->isLeftFlingBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 144
    iget-boolean v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToLeft:Z

    .line 142
    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get2(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 146
    div-float v3, v1, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get1(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 148
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get0(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 152
    :goto_0
    return v6

    .line 150
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get1(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;->OnGestureToLeft()V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v3}, Lcom/letv/leui/app/FlingBackHelper;->isRightFlingBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 157
    iget-boolean v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToRight:Z

    .line 155
    if-eqz v3, :cond_4

    .line 158
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get2(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 159
    div-float v3, v1, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get1(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    if-nez v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get0(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 165
    :goto_1
    return v6

    .line 163
    :cond_3
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get1(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;->OnGestureToRight()V

    goto :goto_1

    .line 168
    :cond_4
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v3}, Lcom/letv/leui/app/FlingBackHelper;->isUpFlingBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 169
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 170
    iget-boolean v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToUp:Z

    .line 168
    if-eqz v3, :cond_6

    .line 171
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get2(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_6

    .line 172
    div-float v3, v0, v1

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    .line 173
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get1(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    if-nez v3, :cond_5

    .line 174
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get0(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 178
    :goto_2
    return v6

    .line 176
    :cond_5
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get1(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;->OnGestureToUp()V

    goto :goto_2

    .line 181
    :cond_6
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-virtual {v3}, Lcom/letv/leui/app/FlingBackHelper;->isDownFlingBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 182
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 183
    iget-boolean v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToDown:Z

    .line 181
    if-eqz v3, :cond_8

    .line 184
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get2(Lcom/letv/leui/app/FlingBackHelper;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_8

    .line 185
    div-float v3, v0, v1

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    .line 186
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get1(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    if-nez v3, :cond_7

    .line 187
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get0(Lcom/letv/leui/app/FlingBackHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->onBackPressed()V

    .line 191
    :goto_3
    return v6

    .line 189
    :cond_7
    iget-object v3, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->this$0:Lcom/letv/leui/app/FlingBackHelper;

    invoke-static {v3}, Lcom/letv/leui/app/FlingBackHelper;->-get1(Lcom/letv/leui/app/FlingBackHelper;)Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/letv/leui/app/FlingBackHelper$OnFlingBackGestureListener;->OnGestureToDown()V

    goto :goto_3

    .line 194
    :cond_8
    return v7
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToLeft:Z

    .line 106
    iput-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToRight:Z

    .line 107
    iput-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToUp:Z

    .line 108
    iput-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToDown:Z

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->performGestureEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToLeft:Z

    if-eqz v0, :cond_0

    .line 117
    iput-boolean v1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToLeft:Z

    .line 118
    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToRight:Z

    if-eqz v0, :cond_1

    .line 119
    iput-boolean v1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToRight:Z

    .line 120
    :cond_1
    cmpg-float v0, p4, v2

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToUp:Z

    if-eqz v0, :cond_2

    .line 121
    iput-boolean v1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToUp:Z

    .line 122
    :cond_2
    cmpl-float v0, p4, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToDown:Z

    if-eqz v0, :cond_3

    .line 123
    iput-boolean v1, p0, Lcom/letv/leui/app/FlingBackHelper$FlingBackGestureListener;->mHandleGestureToDown:Z

    .line 124
    :cond_3
    return v1
.end method
