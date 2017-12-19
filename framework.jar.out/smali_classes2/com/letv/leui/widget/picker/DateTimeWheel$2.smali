.class Lcom/letv/leui/widget/picker/DateTimeWheel$2;
.super Ljava/lang/Object;
.source "DateTimeWheel.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/DateTimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/picker/DateTimeWheel;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    .line 119
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get2(Lcom/letv/leui/widget/picker/DateTimeWheel;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v2}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get2(Lcom/letv/leui/widget/picker/DateTimeWheel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-wrap0(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setLeft(I)V

    .line 120
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get3(Lcom/letv/leui/widget/picker/DateTimeWheel;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v2}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get3(Lcom/letv/leui/widget/picker/DateTimeWheel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-wrap0(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setLeft(I)V

    .line 121
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get1(Lcom/letv/leui/widget/picker/DateTimeWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-wrap0(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get1(Lcom/letv/leui/widget/picker/DateTimeWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method
