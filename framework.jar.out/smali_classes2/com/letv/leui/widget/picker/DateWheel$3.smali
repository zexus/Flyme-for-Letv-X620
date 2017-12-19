.class Lcom/letv/leui/widget/picker/DateWheel$3;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "DateWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/DateWheel;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/DateWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/DateWheel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

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
    .line 373
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {p1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateWheel;->-set4(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 374
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateWheel;->-get12(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateWheel;->-get2(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->-get9(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v0}, Lcom/letv/leui/widget/picker/DateWheel;->-get1(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v2}, Lcom/letv/leui/widget/picker/DateWheel;->-get7(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateWheel;->-set0(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    .line 372
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateWheel;->-set0(Lcom/letv/leui/widget/picker/DateWheel;I)I

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel$3;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v1}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/letv/leui/widget/picker/DateWheel;->-set0(Lcom/letv/leui/widget/picker/DateWheel;I)I

    goto :goto_0
.end method
