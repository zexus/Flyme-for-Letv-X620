.class Lcom/letv/leui/app/LetvEnginerModeActivity$1;
.super Ljava/lang/Object;
.source "LetvEnginerModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/app/LetvEnginerModeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/app/LetvEnginerModeActivity;


# direct methods
.method constructor <init>(Lcom/letv/leui/app/LetvEnginerModeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/app/LetvEnginerModeActivity;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/letv/leui/app/LetvEnginerModeActivity$1;->this$0:Lcom/letv/leui/app/LetvEnginerModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    const-string/jumbo v0, "sys.display.string"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/letv/leui/app/LetvEnginerModeActivity$1;->this$0:Lcom/letv/leui/app/LetvEnginerModeActivity;

    const-string/jumbo v1, "display string name mode open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 31
    return-void
.end method
