.class Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$4;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 1091
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$4;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1095
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$4;->this$0:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    invoke-static {v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->-get0(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v0

    .line 1098
    .local v0, "dropDownList":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 1099
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->-set0(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;Z)Z

    .line 1093
    .end local v0    # "dropDownList":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1104
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
