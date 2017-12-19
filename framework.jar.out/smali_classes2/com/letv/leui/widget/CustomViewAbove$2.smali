.class Lcom/letv/leui/widget/CustomViewAbove$2;
.super Lcom/letv/leui/widget/CustomViewAbove$SimpleOnPageChangeListener;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/CustomViewAbove;->initCustomViewAbove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/CustomViewAbove;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/CustomViewAbove;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/letv/leui/widget/CustomViewAbove$2;->this$0:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-direct {p0}, Lcom/letv/leui/widget/CustomViewAbove$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 143
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove$2;->this$0:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-static {v0}, Lcom/letv/leui/widget/CustomViewAbove;->-get0(Lcom/letv/leui/widget/CustomViewAbove;)Lcom/letv/leui/widget/CustomViewBehind;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    packed-switch p1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove$2;->this$0:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-static {v0}, Lcom/letv/leui/widget/CustomViewAbove;->-get0(Lcom/letv/leui/widget/CustomViewAbove;)Lcom/letv/leui/widget/CustomViewBehind;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/CustomViewAbove$2;->this$0:Lcom/letv/leui/widget/CustomViewAbove;

    invoke-static {v0}, Lcom/letv/leui/widget/CustomViewAbove;->-get0(Lcom/letv/leui/widget/CustomViewAbove;)Lcom/letv/leui/widget/CustomViewBehind;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
