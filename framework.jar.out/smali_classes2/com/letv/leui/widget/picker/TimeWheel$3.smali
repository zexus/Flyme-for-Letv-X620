.class Lcom/letv/leui/widget/picker/TimeWheel$3;
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
    .line 129
    iput-object p1, p0, Lcom/letv/leui/widget/picker/TimeWheel$3;->this$0:Lcom/letv/leui/widget/picker/TimeWheel;

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
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel$3;->this$0:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/TimeWheel;->-get0(Lcom/letv/leui/widget/picker/TimeWheel;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 133
    iget-object v1, p0, Lcom/letv/leui/widget/picker/TimeWheel$3;->this$0:Lcom/letv/leui/widget/picker/TimeWheel;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/letv/leui/widget/picker/TimeWheel;->-set0(Lcom/letv/leui/widget/picker/TimeWheel;Z)Z

    .line 134
    if-eq p3, p2, :cond_1

    .line 135
    iget-object v0, p0, Lcom/letv/leui/widget/picker/TimeWheel$3;->this$0:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/TimeWheel;->onUpdateTime()V

    .line 131
    :cond_1
    return-void
.end method

.method public onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 0
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "diff"    # I

    .prologue
    .line 137
    return-void
.end method
