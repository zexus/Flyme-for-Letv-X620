.class Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$id:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$position"    # I
    .param p4, "val$id"    # J

    .prologue
    .line 774
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;->this$1:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    iput-object p2, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;->val$position:I

    iput-wide p4, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;->val$id:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;->this$1:Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;->val$child:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;->val$position:I

    iget-wide v4, p0, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$2;->val$id:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 776
    return-void
.end method
