.class Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;
.super Ljava/lang/Object;
.source "DragSortHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothAnimator"
.end annotation


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field private mDurationF:F

.field protected mStartTime:J

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/DragSortHelper;FI)V
    .locals 4
    .param p1, "this$0"    # Lcom/letv/leui/widget/DragSortHelper;
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 818
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput p2, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mAlpha:F

    .line 820
    int-to-float v0, p3

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mDurationF:F

    .line 821
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mAlpha:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mAlpha:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mD:F

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mA:F

    .line 822
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mAlpha:F

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mB:F

    .line 823
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mC:F

    .line 818
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mCanceled:Z

    .line 843
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 855
    return-void
.end method

.method public onUpdate(FF)V
    .locals 0
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 851
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 861
    iget-boolean v1, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mCanceled:Z

    if-eqz v1, :cond_0

    .line 862
    return-void

    .line 865
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mDurationF:F

    div-float v0, v1, v2

    .line 867
    .local v0, "fraction":F
    cmpl-float v1, v0, v6

    if-ltz v1, :cond_1

    .line 868
    invoke-virtual {p0, v6, v6}, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->onUpdate(FF)V

    .line 869
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->onStop()V

    .line 860
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->transform(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->onUpdate(FF)V

    .line 872
    iget-object v1, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v1}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/LeListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 837
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mStartTime:J

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mCanceled:Z

    .line 839
    invoke-virtual {p0}, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->onStart()V

    .line 840
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->-get11(Lcom/letv/leui/widget/DragSortHelper;)Lcom/letv/leui/widget/LeListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/LeListView;->post(Ljava/lang/Runnable;)Z

    .line 836
    return-void
.end method

.method public transform(F)F
    .locals 3
    .param p1, "frac"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 827
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mAlpha:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 828
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    .line 829
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 830
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mB:F

    iget v1, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0

    .line 832
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/DragSortHelper$SmoothAnimator;->mD:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method
