.class public Lcom/letv/leui/widget/LeDialog;
.super Landroid/app/Dialog;
.source "LeDialog.java"


# instance fields
.field protected contentView:Landroid/view/View;

.field protected dialogRes:I

.field private iconResId:I

.field private msg:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 23
    const v0, 0x10900a3

    iput v0, p0, Lcom/letv/leui/widget/LeDialog;->dialogRes:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const v0, 0x10900a3

    iput v0, p0, Lcom/letv/leui/widget/LeDialog;->dialogRes:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    const v0, 0x10900a3

    iput v0, p0, Lcom/letv/leui/widget/LeDialog;->dialogRes:I

    .line 25
    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/letv/leui/widget/LeDialog;->msg:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public preShow()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 70
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/letv/leui/widget/LeDialog;->dialogRes:I

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "contentViewAll":Landroid/view/View;
    invoke-super {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 73
    const v5, 0x1020006

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 74
    .local v2, "icon":Landroid/widget/ImageView;
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 75
    .local v4, "titleTv":Landroid/widget/TextView;
    const v5, 0x1020420

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 76
    .local v3, "titlePanel":Landroid/view/View;
    const v5, 0x102041f

    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "contentPanel":Landroid/view/View;
    if-eqz v3, :cond_3

    iget v5, p0, Lcom/letv/leui/widget/LeDialog;->iconResId:I

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 102
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 104
    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "contentPanel":Landroid/view/View;
    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_2
    :goto_1
    return-void

    .line 82
    .restart local v0    # "contentPanel":Landroid/view/View;
    :cond_3
    if-eqz v2, :cond_4

    .line 83
    iget v5, p0, Lcom/letv/leui/widget/LeDialog;->iconResId:I

    if-nez v5, :cond_5

    if-eqz v2, :cond_5

    .line 84
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :cond_4
    :goto_2
    if-eqz v4, :cond_0

    .line 92
    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 93
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget v5, p0, Lcom/letv/leui/widget/LeDialog;->iconResId:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 95
    :cond_6
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_7
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    if-nez v5, :cond_2

    .line 108
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/letv/leui/widget/LeDialog;->contentView:Landroid/view/View;

    .line 65
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/letv/leui/widget/LeDialog;->iconResId:I

    .line 61
    return-void
.end method

.method public setMeg(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDialog;->msg:Ljava/lang/CharSequence;

    .line 45
    return-void
.end method

.method public setMsg(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/letv/leui/widget/LeDialog;->msg:Ljava/lang/CharSequence;

    .line 41
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    .line 57
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/letv/leui/widget/LeDialog;->title:Ljava/lang/CharSequence;

    .line 53
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDialog;->preShow()V

    .line 116
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 114
    return-void
.end method
