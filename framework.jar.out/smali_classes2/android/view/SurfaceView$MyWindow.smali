.class Landroid/view/SurfaceView$MyWindow;
.super Lcom/android/internal/view/BaseIWindow;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWindow"
.end annotation


# instance fields
.field mCurHeight:I

.field mCurWidth:I

.field private final mSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    const/4 v0, -0x1

    .line 809
    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    .line 863
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    .line 864
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I

    .line 810
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    .line 809
    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 840
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 4

    .prologue
    .line 846
    iget-object v2, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 847
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    if-eqz v1, :cond_0

    .line 848
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 849
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public enableLog(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 870
    iget-object v1, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 871
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->enableLog(Z)V

    .line 869
    :cond_0
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 860
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 817
    iget-object v1, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 818
    .local v0, "surfaceView":Landroid/view/SurfaceView;
    if-eqz v0, :cond_2

    .line 819
    invoke-static {}, Landroid/view/SurfaceView;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    const-string/jumbo v1, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " got resized: w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    const-string/jumbo v3, " h="

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    const-string/jumbo v3, ", cur w="

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    iget v3, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    const-string/jumbo v3, " h="

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    iget v3, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I

    .line 820
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_0
    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 824
    if-eqz p7, :cond_3

    .line 825
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 826
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 827
    iget-object v1, v0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 816
    :cond_2
    return-void

    .line 828
    :cond_3
    :try_start_1
    iget-object v1, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 829
    iget-object v1, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 830
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 831
    iget-object v1, v0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 833
    :catchall_0
    move-exception v1

    .line 834
    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 833
    throw v1
.end method

.method public windowFocusChanged(ZZ)V
    .locals 3
    .param p1, "hasFocus"    # Z
    .param p2, "touchEnabled"    # Z

    .prologue
    .line 855
    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected focus in surface: focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 856
    const-string/jumbo v2, ", touchEnabled="

    .line 855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 856
    const-string/jumbo v2, ", this = "

    .line 855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 856
    iget-object v2, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 855
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method
