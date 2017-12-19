.class Lcom/letv/leui/widget/LeActionBarBottomSlider$2$1;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$2;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeActionBarBottomSlider$2;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$2$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$2$1;->this$1:Lcom/letv/leui/widget/LeActionBarBottomSlider$2;

    iget-object v0, v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$2;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-wrap0(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V

    .line 113
    return-void
.end method
