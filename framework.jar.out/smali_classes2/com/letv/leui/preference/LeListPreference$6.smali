.class Lcom/letv/leui/preference/LeListPreference$6;
.super Ljava/lang/Object;
.source "LeListPreference.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/preference/LeListPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/preference/LeListPreference;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LeListPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/preference/LeListPreference;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreference$6;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 766
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$6;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get13(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$6;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get13(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$6;->this$0:Lcom/letv/leui/preference/LeListPreference;

    invoke-static {v0}, Lcom/letv/leui/preference/LeListPreference;->-get13(Lcom/letv/leui/preference/LeListPreference;)Lcom/letv/leui/preference/LeListPreference$DropdownPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreference$DropdownPopup;->dismiss()V

    .line 771
    :cond_0
    return-void
.end method
