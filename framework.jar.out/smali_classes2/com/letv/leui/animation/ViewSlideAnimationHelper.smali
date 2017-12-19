.class public Lcom/letv/leui/animation/ViewSlideAnimationHelper;
.super Ljava/lang/Object;
.source "ViewSlideAnimationHelper.java"


# static fields
.field private static final DURATION_DEFAULT:I = 0x15e

.field private static final TIMEINTERPOLATOR_DEFAULT:Landroid/animation/TimeInterpolator;


# instance fields
.field private duration:I

.field private timeInterpolator:Landroid/animation/TimeInterpolator;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->TIMEINTERPOLATOR_DEFAULT:Landroid/animation/TimeInterpolator;

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    .line 26
    const/16 v0, 0x15e

    iput v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    .line 27
    sget-object v0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->TIMEINTERPOLATOR_DEFAULT:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    .line 21
    iput p2, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    .line 22
    sget-object v0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->TIMEINTERPOLATOR_DEFAULT:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILandroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    .line 16
    iput p2, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    .line 17
    iput-object p3, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    .line 14
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    return v0
.end method

.method public getTimeInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    .line 44
    return-void
.end method

.method public setTimeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "timeInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    .line 32
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    .line 38
    return-void
.end method

.method public slideInFromBottom()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 78
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string/jumbo v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 84
    .local v0, "bottomIn":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 76
    return-void
.end method

.method public slideInFromLeft()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string/jumbo v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 113
    .local v0, "leftIn":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 117
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 105
    return-void
.end method

.method public slideInFromRight()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 136
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string/jumbo v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    .local v0, "rightIn":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 145
    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 146
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 134
    return-void
.end method

.method public slideInFromTop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 50
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string/jumbo v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v6

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 56
    .local v0, "topIn":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 60
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 48
    return-void
.end method

.method public slideOutFromBottom()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 93
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string/jumbo v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 99
    .local v0, "bottomOut":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 102
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 91
    return-void
.end method

.method public slideOutFromLeft()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 122
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string/jumbo v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 128
    .local v0, "leftOut":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 132
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 120
    return-void
.end method

.method public slideOutFromRight()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string/jumbo v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 157
    .local v0, "rightOut":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 161
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 149
    return-void
.end method

.method public slideOutFromTop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 65
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    const-string/jumbo v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v5

    iget-object v4, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 71
    .local v0, "topOut":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->timeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 72
    iget v1, p0, Lcom/letv/leui/animation/ViewSlideAnimationHelper;->duration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 73
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 63
    return-void
.end method
