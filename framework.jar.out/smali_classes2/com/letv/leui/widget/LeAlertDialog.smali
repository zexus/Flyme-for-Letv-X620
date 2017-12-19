.class public Lcom/letv/leui/widget/LeAlertDialog;
.super Lcom/letv/leui/widget/LeDialog;
.source "LeAlertDialog.java"


# instance fields
.field private negativeCharSequence:Ljava/lang/CharSequence;

.field private negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralCharSequence:Ljava/lang/CharSequence;

.field private neutralListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveCharSequence:Ljava/lang/CharSequence;

.field private positiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/LeAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeDialog;-><init>(Landroid/content/Context;)V

    .line 35
    const v0, 0x1090074

    iput v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->dialogRes:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeDialog;-><init>(Landroid/content/Context;I)V

    .line 30
    const v0, 0x1090074

    iput v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->dialogRes:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 25
    const v0, 0x1090074

    iput v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->dialogRes:I

    .line 23
    return-void
.end method


# virtual methods
.method public preShow()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 40
    invoke-super {p0}, Lcom/letv/leui/widget/LeDialog;->preShow()V

    .line 42
    const v1, 0x1020421

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    .local v0, "wizaredView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 48
    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    const v1, 0x1020424

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/letv/leui/widget/LeAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeAlertDialog$1;-><init>(Lcom/letv/leui/widget/LeAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    const v1, 0x1020423

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/letv/leui/widget/LeAlertDialog$2;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeAlertDialog$2;-><init>(Lcom/letv/leui/widget/LeAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :goto_2
    iget-object v1, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 82
    const v1, 0x1020422

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/letv/leui/widget/LeAlertDialog$3;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeAlertDialog$3;-><init>(Lcom/letv/leui/widget/LeAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 96
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 127
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    .line 126
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 112
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertDialog;->negativeCharSequence:Ljava/lang/CharSequence;

    .line 111
    return-void
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 132
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralListener:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    .line 131
    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 117
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertDialog;->neutralCharSequence:Ljava/lang/CharSequence;

    .line 116
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 122
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    .line 121
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 107
    iput-object p2, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    iput-object p1, p0, Lcom/letv/leui/widget/LeAlertDialog;->positiveCharSequence:Ljava/lang/CharSequence;

    .line 106
    return-void
.end method
