.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$3;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$3;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$3;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 1077
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1078
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$3;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    .line 1074
    :cond_0
    return-void
.end method
