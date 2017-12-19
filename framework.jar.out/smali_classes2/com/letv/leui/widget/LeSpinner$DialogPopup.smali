.class Lcom/letv/leui/widget/LeSpinner$DialogPopup;
.super Ljava/lang/Object;
.source "LeSpinner.java"

# interfaces
.implements Lcom/letv/leui/widget/LeSpinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/letv/leui/widget/LeSpinner;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeSpinner;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeSpinner;Lcom/letv/leui/widget/LeSpinner$DialogPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeSpinner;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeSpinner$DialogPopup;-><init>(Lcom/letv/leui/widget/LeSpinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 1013
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 1051
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/LeSpinner;->setSelection(I)V

    .line 1052
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget-object v0, v0, Lcom/letv/leui/widget/LeSpinner;->mOnItemClickListener:Lcom/letv/leui/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    iget-object v1, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v4, p2, v2, v3}, Lcom/letv/leui/widget/LeSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1055
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->dismiss()V

    .line 1050
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1022
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1060
    const-string/jumbo v0, "Spinner"

    const-string/jumbo v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 1070
    const-string/jumbo v0, "Spinner"

    const-string/jumbo v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 1026
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .prologue
    .line 1065
    const-string/jumbo v0, "Spinner"

    const-string/jumbo v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 1035
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    .line 1036
    return-void

    .line 1038
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeSpinner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1039
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1040
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1042
    :cond_1
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1043
    iget-object v3, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->this$0:Lcom/letv/leui/widget/LeSpinner;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeSpinner;->getSelectedItemPosition()I

    move-result v3

    .line 1042
    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 1044
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1045
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1046
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1047
    iget-object v2, p0, Lcom/letv/leui/widget/LeSpinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1034
    return-void
.end method
