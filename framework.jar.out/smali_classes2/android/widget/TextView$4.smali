.class Landroid/widget/TextView$4;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->getBottomSheet()Lcom/letv/leui/text/LeTextViewBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;

    .prologue
    .line 10982
    iput-object p1, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 10985
    iget-object v2, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-get3(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_0

    .line 10986
    iget-object v2, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 10987
    .local v1, "start":I
    iget-object v2, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 10988
    .local v0, "end":I
    iget-object v2, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-get3(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 10989
    iget-object v2, p0, Landroid/widget/TextView$4;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->invalidDisplayList(II)V

    .line 10984
    .end local v0    # "end":I
    .end local v1    # "start":I
    :cond_0
    return-void
.end method
