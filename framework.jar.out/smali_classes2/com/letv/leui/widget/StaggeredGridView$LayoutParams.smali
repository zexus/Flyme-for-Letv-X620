.class public Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LAYOUT_ATTRS:[I

.field private static final SPAN_INDEX:I


# instance fields
.field column:I

.field id:J

.field position:I

.field public span:I

.field viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2802
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101014d

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->LAYOUT_ATTRS:[I

    .line 2801
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 2832
    invoke-direct {p0, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2809
    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    .line 2829
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2834
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    .line 2835
    const-string/jumbo v0, "StaggeredGridView"

    const-string/jumbo v1, "Constructing LayoutParams with height FILL_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    const/4 v0, -0x2

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    .line 2831
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 2842
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2809
    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    .line 2829
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2844
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->width:I

    if-eq v1, v4, :cond_0

    .line 2845
    const-string/jumbo v1, "StaggeredGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inflation setting LayoutParams width to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2846
    const-string/jumbo v3, " - must be MATCH_PARENT"

    .line 2845
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    iput v4, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->width:I

    .line 2849
    :cond_0
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    if-ne v1, v4, :cond_1

    .line 2850
    const-string/jumbo v1, "StaggeredGridView"

    const-string/jumbo v2, "Inflation setting LayoutParams height to MATCH_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    const/4 v1, -0x2

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    .line 2855
    :cond_1
    sget-object v1, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2856
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    .line 2857
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2841
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, -0x1

    .line 2861
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2809
    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->span:I

    .line 2829
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2863
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->width:I

    if-eq v0, v3, :cond_0

    .line 2864
    const-string/jumbo v0, "StaggeredGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Constructing LayoutParams with width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2865
    const-string/jumbo v2, " - must be MATCH_PARENT"

    .line 2864
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    iput v3, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->width:I

    .line 2868
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 2869
    const-string/jumbo v0, "StaggeredGridView"

    const-string/jumbo v1, "Constructing LayoutParams with height MATCH_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    const/4 v0, -0x2

    iput v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->height:I

    .line 2860
    :cond_1
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    .line 2892
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 2900
    iget-wide v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 2876
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->position:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 2884
    iget v0, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->viewType:I

    return v0
.end method

.method public setColumn(I)V
    .locals 0
    .param p1, "column"    # I

    .prologue
    .line 2896
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->column:I

    .line 2895
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 2904
    iput-wide p1, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->id:J

    .line 2903
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 2880
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->position:I

    .line 2879
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 2888
    iput p1, p0, Lcom/letv/leui/widget/StaggeredGridView$LayoutParams;->viewType:I

    .line 2887
    return-void
.end method
