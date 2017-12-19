.class Lcom/letv/leui/widget/LeBottomSheet$11;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeBottomSheet;->setBottomButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomSheet;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$11;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$11;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get17(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$11;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get17(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/letv/leui/widget/LeBottomSheet$LeBotOnClickListener;->cancleOnClickListener()V

    .line 891
    :cond_0
    return-void
.end method
