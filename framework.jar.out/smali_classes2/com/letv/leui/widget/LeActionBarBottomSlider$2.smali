.class Lcom/letv/leui/widget/LeActionBarBottomSlider$2;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$2;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$2;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-static {v0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->-get2(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/LeActionBarBottomSlider$2$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$2$1;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider$2;)V

    .line 117
    const-wide/16 v2, 0x96

    .line 111
    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeTransLinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    return-void
.end method
