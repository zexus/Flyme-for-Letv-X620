.class Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$2;
.super Ljava/lang/Object;
.source "LeListPreferenceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;-><init>(Lcom/letv/leui/widget/LeListPreferenceView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 678
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup$2;->this$1:Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPreferenceView$DropdownPopup;->dismiss()V

    .line 677
    return-void
.end method
