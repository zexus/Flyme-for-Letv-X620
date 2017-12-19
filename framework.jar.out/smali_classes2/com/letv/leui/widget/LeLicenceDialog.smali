.class public Lcom/letv/leui/widget/LeLicenceDialog;
.super Ljava/lang/Object;
.source "LeLicenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeLicenceDialog$KEY;,
        Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;
    }
.end annotation


# static fields
.field public static final OVER_SEA_FEATURE:Ljava/lang/String; = "shared.widget.reference_to_oversea_libs"

.field public static final TYPE_CONTACTS_NET:I = 0xa

.field public static final TYPE_NET:I = 0x2

.field public static final TYPE_POSITION_NET:I = 0x1

.field public static final TYPE_PRIVACY_LOCATION_NET:I = 0x6

.field public static final TYPE_PRIVACY_NET:I = 0x8

.field public static final TYPE_USER_LOCATION_NET:I = 0x5

.field public static final TYPE_USER_NET:I = 0x7

.field public static final TYPE_USER_PRIVACY_CONTACTS_CALLLOG_LOCATION_NET:I = 0xb

.field public static final TYPE_USER_PRIVACY_CONTACTS_LOCATION_NET:I = 0x9

.field public static final TYPE_USER_PRIVACY_LOCATION_NET:I = 0x3

.field public static final TYPE_USER_PRIVACY_NET:I = 0x4


# instance fields
.field private btnAgree:Landroid/widget/Button;

.field private btnCancel:Landroid/widget/Button;

.field private checked:Z

.field private mAlertDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -set0(Lcom/letv/leui/widget/LeLicenceDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    .line 68
    iput-object p1, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/letv/leui/widget/LeLicenceDialog;->initDialog(Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method private initDialog(Ljava/lang/String;I)V
    .locals 9
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 74
    new-instance v6, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v8, 0x103051c

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    .line 75
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x50

    invoke-virtual {v6, v7}, Landroid/view/Window;->setGravity(I)V

    .line 76
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x10900b0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 80
    .local v5, "view":Landroid/view/View;
    const v6, 0x102043e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 81
    .local v4, "tvLicenceContent":Landroid/widget/TextView;
    const-string/jumbo v0, ""

    .line 82
    .local v0, "agreementStr":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 83
    .local v3, "pemissionStr":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 124
    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 126
    const/16 v6, 0xa

    if-ne p2, v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 129
    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    .line 128
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 139
    const v6, 0x1020440

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/LeCheckBox;

    .line 140
    .local v1, "cbPrompt":Lcom/letv/leui/widget/LeCheckBox;
    new-instance v6, Lcom/letv/leui/widget/LeLicenceDialog$1;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/LeLicenceDialog$1;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;)V

    invoke-virtual {v1, v6}, Lcom/letv/leui/widget/LeCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    const v6, 0x102043f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 147
    .local v2, "cb_prompt_wrapper":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/letv/leui/widget/LeLicenceDialog$2;

    invoke-direct {v6, p0, v1}, Lcom/letv/leui/widget/LeLicenceDialog$2;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeCheckBox;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v6, 0x1020441

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    .line 158
    const v6, 0x1020442

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    .line 160
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    new-instance v7, Lcom/letv/leui/widget/LeLicenceDialog$3;

    invoke-direct {v7, p0}, Lcom/letv/leui/widget/LeLicenceDialog$3;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;)V

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    new-instance v7, Lcom/letv/leui/widget/LeLicenceDialog$4;

    invoke-direct {v7, p0}, Lcom/letv/leui/widget/LeLicenceDialog$4;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;)V

    invoke-direct {p0, v6, v7}, Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 73
    return-void

    .line 86
    .end local v1    # "cbPrompt":Lcom/letv/leui/widget/LeCheckBox;
    .end local v2    # "cb_prompt_wrapper":Landroid/widget/LinearLayout;
    :pswitch_0
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 91
    :pswitch_1
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 95
    :pswitch_2
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406df

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 99
    :pswitch_3
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406e0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 103
    :pswitch_4
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406df

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 107
    :pswitch_5
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406e0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 111
    :pswitch_6
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406da

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 115
    :pswitch_7
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 118
    :pswitch_8
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406e1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 133
    :cond_0
    iget-object v6, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mContext:Landroid/content/Context;

    const v7, 0x10406d5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 134
    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    .line 133
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "btn"    # Landroid/widget/Button;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 213
    if-eqz p2, :cond_0

    .line 214
    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$5;

    invoke-direct {v0, p0, p2}, Lcom/letv/leui/widget/LeLicenceDialog$5;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 189
    :cond_0
    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->checked:Z

    return v0
.end method

.method public setLeLicenceDialogClickListener(Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 2
    .param p1, "listener"    # Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeLicenceDialog$6;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$6;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/letv/leui/widget/LeLicenceDialog$7;

    invoke-direct {v1, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$7;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    new-instance v0, Lcom/letv/leui/widget/LeLicenceDialog$8;

    invoke-direct {v0, p0, p1}, Lcom/letv/leui/widget/LeLicenceDialog$8;-><init>(Lcom/letv/leui/widget/LeLicenceDialog;Lcom/letv/leui/widget/LeLicenceDialog$LeLicenceDialogClickListener;)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeLicenceDialog;->setOnTouchOutCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/letv/leui/widget/LeLicenceDialog;

    .line 262
    return-object p0
.end method

.method public setOnAgreeListener(Landroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "onAgreeListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnAgree:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 209
    return-object p0
.end method

.method public setOnCancelListener(Landroid/view/View$OnClickListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->btnCancel:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/letv/leui/widget/LeLicenceDialog;->setBtnOnClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 199
    return-object p0
.end method

.method public setOnTouchOutCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 233
    :cond_0
    return-object p0
.end method

.method public show()Lcom/letv/leui/widget/LeLicenceDialog;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-object p0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeLicenceDialog;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
