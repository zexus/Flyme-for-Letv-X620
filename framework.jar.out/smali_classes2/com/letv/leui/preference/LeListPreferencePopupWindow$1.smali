.class Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;
.super Ljava/lang/Object;
.source "LeListPreferencePopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferencePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 9

    .prologue
    const/4 v6, -0x1

    .line 130
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get2(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get2(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 131
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get7(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get7(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 132
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 135
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v7, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get3(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v4}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get4(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I

    move-result v4

    .line 136
    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    invoke-static {v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-get5(Lcom/letv/leui/preference/LeListPreferencePopupWindow;)I

    move-result v5

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-wrap0(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-static {v7, v0}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->-wrap1(Lcom/letv/leui/preference/LeListPreferencePopupWindow;Z)V

    .line 137
    iget-object v3, p0, Lcom/letv/leui/preference/LeListPreferencePopupWindow$1;->this$0:Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->update(IIIIZ)V

    .line 129
    .end local v2    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x0

    .local v1, "anchor":Landroid/view/View;
    goto :goto_0
.end method
