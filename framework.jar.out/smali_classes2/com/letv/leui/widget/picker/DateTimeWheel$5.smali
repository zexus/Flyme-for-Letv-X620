.class Lcom/letv/leui/widget/picker/DateTimeWheel$5;
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
    .line 186
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$5;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

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

    .line 189
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$5;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-get4(Lcom/letv/leui/widget/picker/DateTimeWheel;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 190
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$5;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->-set1(Lcom/letv/leui/widget/picker/DateTimeWheel;Z)Z

    .line 191
    if-eq p3, p2, :cond_1

    .line 192
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel$5;->this$0:Lcom/letv/leui/widget/picker/DateTimeWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    .line 188
    :cond_1
    return-void
.end method
