.class Lcom/letv/leui/widget/picker/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/picker/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/picker/WheelView;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView$2;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$2;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    .line 420
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$2;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    .line 425
    return-void
.end method
