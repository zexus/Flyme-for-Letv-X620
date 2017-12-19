.class Lcom/letv/leui/widget/picker/TimeWheel$1;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "TimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/TimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/TimeWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/TimeWheel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/picker/TimeWheel;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/letv/leui/widget/picker/TimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 3
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/TimeWheel;->-get0(Lcom/letv/leui/widget/picker/TimeWheel;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/TimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 111
    if-eq p3, p2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel$1;->this$0:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/TimeWheel;->onUpdateTime()V

    .line 109
    :cond_0
    return-void
.end method

.method public onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 0
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "diff"    # I

    .prologue
    .line 114
    return-void
.end method
