.class Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
.super Landroid/view/SurfaceControl;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowStateAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SurfaceTrace"
.end annotation


# static fields
.field private static final SURFACE_TAG:Ljava/lang/String; = "SurfaceTrace"

.field private static final logSurfaceTrace:Z = true

.field static final sSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDsdx:F

.field private mDsdy:F

.field private mDtdx:F

.field private mDtdy:F

.field private mIsOpaque:Z

.field private mLayer:I

.field private mLayerStack:I

.field private final mName:Ljava/lang/String;

.field private final mPosition:Landroid/graphics/PointF;

.field private mShown:Z

.field private final mSize:Landroid/graphics/Point;

.field private mSurfaceTraceAlpha:F

.field private final mWindowCrop:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    .line 578
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 3
    .param p1, "s"    # Landroid/view/SurfaceSession;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I
    .param p5, "format"    # I
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 598
    invoke-direct/range {p0 .. p6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 586
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    .line 587
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    .line 588
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    .line 589
    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    .line 599
    if-eqz p2, :cond_0

    .end local p2    # "name":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mName:Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Point;->set(II)V

    .line 601
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ctor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 602
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 604
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 597
    return-void

    .line 599
    .restart local p2    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, "Not named"

    goto :goto_0

    .line 603
    .end local p2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static dumpAllSurfaces(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 753
    sget-object v4, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v4

    .line 754
    :try_start_0
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 755
    .local v0, "N":I
    if-gtz v0, :cond_0

    monitor-exit v4

    .line 756
    return-void

    .line 758
    :cond_0
    if-eqz p1, :cond_1

    .line 759
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    :cond_1
    const-string/jumbo v3, "WINDOW MANAGER SURFACES (dumpsys window surfaces)"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 763
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    .line 764
    .local v2, "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    const-string/jumbo v3, "  Surface #"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": #"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    const-string/jumbo v3, " "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const-string/jumbo v3, "    mLayerStack="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayerStack:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 768
    const-string/jumbo v3, " mLayer="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 769
    const-string/jumbo v3, "    mShown="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mAlpha="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 770
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, " mIsOpaque="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 771
    iget-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mIsOpaque:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 772
    const-string/jumbo v3, "    mPosition="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 774
    const-string/jumbo v3, " mSize="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, "x"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 776
    const-string/jumbo v3, "    mCrop="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 777
    const-string/jumbo v3, "    Transform: ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdx:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdx:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdy:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 779
    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdy:F

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    :cond_2
    monitor-exit v4

    .line 752
    return-void

    .line 753
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 734
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 735
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 738
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 733
    return-void

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    if-eqz v0, :cond_0

    .line 715
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide: OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 716
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    .line 719
    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 713
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 744
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 745
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 746
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    sget-object v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v1

    .line 748
    :try_start_0
    sget-object v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 743
    return-void

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 610
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 611
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAlpha("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    const-string/jumbo v2, ". Called by "

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 615
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 609
    return-void
.end method

.method public setLayer(I)V
    .locals 5
    .param p1, "zorder"    # I

    .prologue
    .line 620
    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    if-eq p1, v2, :cond_0

    .line 621
    const-string/jumbo v2, "SurfaceTrace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLayer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): OLD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 622
    const-string/jumbo v4, ". Called by "

    .line 621
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 622
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    .line 621
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    .line 625
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 627
    sget-object v3, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    monitor-enter v3

    .line 628
    :try_start_0
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 630
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 631
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    .line 632
    .local v1, "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    iget v2, v1, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    if-ge v2, p1, :cond_2

    .line 636
    .end local v1    # "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    :cond_1
    sget-object v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->sSurfaces:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 619
    return-void

    .line 630
    .restart local v1    # "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 627
    .end local v0    # "i":I
    .end local v1    # "s":Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setLayerStack(I)V
    .locals 3
    .param p1, "layerStack"    # I

    .prologue
    .line 675
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayerStack:I

    if-eq p1, v0, :cond_0

    .line 676
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayerStack("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 677
    const-string/jumbo v2, ". Called by "

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 677
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayerStack:I

    .line 680
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 674
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 3
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 700
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdx:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdx:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 701
    :cond_0
    :goto_0
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMatrix("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    const-string/jumbo v2, ","

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    const-string/jumbo v2, "): OLD:"

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    const-string/jumbo v2, ". Called by "

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iput p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdx:F

    .line 705
    iput p2, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdx:F

    .line 706
    iput p3, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdy:F

    .line 707
    iput p4, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdy:F

    .line 709
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 699
    return-void

    .line 700
    :cond_2
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdy:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdy:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public setOpaque(Z)V
    .locals 3
    .param p1, "isOpaque"    # Z

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mIsOpaque:Z

    if-eq p1, v0, :cond_0

    .line 686
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOpaque("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 687
    const-string/jumbo v2, ". Called by "

    .line 686
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 687
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iput-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mIsOpaque:Z

    .line 690
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 684
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    const-string/jumbo v2, ". Called by "

    .line 643
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 647
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 641
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    .prologue
    .line 695
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    .line 694
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq p2, v0, :cond_1

    .line 653
    :cond_0
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    const-string/jumbo v2, ". Called by "

    .line 653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 657
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 651
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 662
    if-eqz p1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWindowCrop("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 665
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 665
    const-string/jumbo v2, "): OLD:"

    .line 664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 665
    const-string/jumbo v2, ". Called by "

    .line 664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 670
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 661
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    if-nez v0, :cond_0

    .line 725
    const-string/jumbo v0, "SurfaceTrace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: OLD:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 726
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 725
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    .line 729
    :cond_0
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 723
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mName:Ljava/lang/String;

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    const-string/jumbo v1, " ("

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayerStack:I

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    const-string/jumbo v1, "): shown="

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mShown:Z

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    const-string/jumbo v1, " layer="

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mLayer:I

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    const-string/jumbo v1, " alpha="

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSurfaceTraceAlpha:F

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    const-string/jumbo v1, " "

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    const-string/jumbo v1, ","

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    const-string/jumbo v1, " size="

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    const-string/jumbo v1, "x"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 790
    const-string/jumbo v1, " crop="

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mWindowCrop:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 791
    const-string/jumbo v1, " opaque="

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 791
    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mIsOpaque:Z

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    const-string/jumbo v1, " ("

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdx:F

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    const-string/jumbo v1, ","

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdx:F

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    const-string/jumbo v1, ","

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDsdy:F

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    const-string/jumbo v1, ","

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;->mDtdy:F

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    const-string/jumbo v1, ")"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
