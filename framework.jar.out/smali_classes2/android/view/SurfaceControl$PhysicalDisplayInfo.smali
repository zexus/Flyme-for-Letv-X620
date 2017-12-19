.class public final Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhysicalDisplayInfo"
.end annotation


# instance fields
.field public appVsyncOffsetNanos:J

.field public density:F

.field public height:I

.field public presentationDeadlineNanos:J

.field public refreshRate:F

.field public secure:Z

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 0
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    .line 527
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    .line 555
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    .line 556
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    .line 557
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    .line 558
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    .line 559
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    .line 560
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    .line 561
    iget-boolean v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    iput-boolean v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    .line 562
    iget-wide v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    .line 563
    iget-wide v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    .line 554
    return-void
.end method

.method public equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .locals 6
    .param p1, "other"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .prologue
    const/4 v0, 0x0

    .line 537
    if-eqz p1, :cond_0

    .line 538
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    if-ne v1, v2, :cond_0

    .line 539
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    if-ne v1, v2, :cond_0

    .line 540
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 541
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 542
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 543
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 544
    iget-boolean v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    iget-boolean v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-ne v1, v2, :cond_0

    .line 545
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v4, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 546
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iget-wide v4, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 537
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 533
    instance-of v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhysicalDisplayInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    const-string/jumbo v1, "density "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    const-string/jumbo v1, ", "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    const-string/jumbo v1, " x "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    const-string/jumbo v1, " dpi, secure "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    iget-boolean v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 571
    const-string/jumbo v1, ", appVsyncOffset "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 571
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    .line 569
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    const-string/jumbo v1, ", bufferDeadline "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    iget-wide v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    .line 569
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    const-string/jumbo v1, "}"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
