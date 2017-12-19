.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "LeListPreferenceListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    .line 1735
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$PopupDataSetObserver;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->dismiss()V

    .line 1743
    return-void
.end method
