.class Lcom/letv/leui/widget/picker/DateTimeWheel$6;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "DateTimeWheel.java"


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
    .line 196
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$6;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 0
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 198
    return-void
.end method

.method public onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 3
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "diff"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$6;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get4(Lcom/letv/leui/widget/picker/DateTimeWheel;)Ljava/util/Calendar;

    move-result-object v0

    neg-int v1, p2

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 202
    if-eqz p2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$6;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    .line 200
    :cond_0
    return-void
.end method
