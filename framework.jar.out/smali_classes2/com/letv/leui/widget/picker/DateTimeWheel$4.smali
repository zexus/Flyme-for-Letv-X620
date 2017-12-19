.class Lcom/letv/leui/widget/picker/DateTimeWheel$4;
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
    .line 177
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$4;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

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
    .line 180
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$4;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get4(Lcom/letv/leui/widget/picker/DateTimeWheel;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$4;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 181
    if-eq p3, p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$4;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    .line 179
    :cond_0
    return-void
.end method
