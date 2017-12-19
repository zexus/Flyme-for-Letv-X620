.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;
.super Ljava/lang/Object;
.source "AntiInadvertentlyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setVisibility(View.GONE) after animate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->-get2(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 195
    return-void
.end method
