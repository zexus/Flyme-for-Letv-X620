.class Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;
.super Ljava/lang/Object;
.source "LeImmersiveStatusBarManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnWindowFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;


# direct methods
.method private constructor <init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;-><init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "b"    # Z

    .prologue
    .line 179
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "focusChangeTime":J
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get0(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    iget-object v3, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-wrap0(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-set0(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Z)Z

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get0(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get2(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    iget-object v3, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get4(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-set1(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get2(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get5(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 193
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get1(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v2}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get3(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Lcom/letv/leui/util/statusbar/PickerColorUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;->this$0:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    invoke-static {v3}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->-get4(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->SetStatusBarColor(Landroid/view/View;I)V

    .line 177
    :cond_2
    return-void
.end method
