.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get0(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get0(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get0(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get0(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    iget v1, v1, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get2(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferencePopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferencePopupWindow;->setInputMethodMode(I)V

    .line 1759
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ResizePopupRunnable;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    .line 1755
    :cond_0
    return-void
.end method
