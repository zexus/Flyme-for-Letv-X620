.class public Lcom/letv/leui/widget/LeTimePickerDialog;
.super Landroid/app/Dialog;
.source "LeTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private hourOfDay:I

.field private mTimeSetListener:Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;

.field private mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

.field private minute:I

.field private timeStr:Ljava/lang/String;

.field private timeTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 64
    const v0, 0x103052a

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeTimePickerDialog;-><init>(Landroid/content/Context;I)V

    .line 65
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeTimePickerDialog;->init(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;

    .line 67
    invoke-direct {p0, p5}, Lcom/letv/leui/widget/LeTimePickerDialog;->setIs24Hours(Z)V

    .line 68
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/LeTimePickerDialog;->updateTime(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 69
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeStr:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->view:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTimePickerDialog;->setContentView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->view:Landroid/view/View;

    const v1, 0x1020085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->view:Landroid/view/View;

    const v1, 0x1020086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v0, 0x1020081

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/widget/picker/TimeWheel;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    .line 90
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/picker/TimeWheel;->addOnTimeChangedListener(Lcom/letv/leui/widget/picker/TimeWheel$OnTimeChangedListener;)V

    .line 91
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    const v1, -0xdc6a12

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/TimeWheel;->setCenterItemTextColor(I)V

    .line 92
    const v0, 0x1020082

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->titleTv:Landroid/widget/TextView;

    .line 93
    const v0, 0x1020080

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeTv:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10406f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeStr:Ljava/lang/String;

    .line 97
    const v0, 0x102007f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/LeTimePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeTimePickerDialog$1;-><init>(Lcom/letv/leui/widget/LeTimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    return-void
.end method

.method private setIs24Hours(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/TimeWheel;->setIs24Hours(Ljava/lang/Boolean;)V

    .line 157
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 203
    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->view:Landroid/view/View;

    .line 204
    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    .line 205
    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;

    .line 206
    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeTv:Landroid/widget/TextView;

    .line 207
    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->titleTv:Landroid/widget/TextView;

    .line 208
    iput-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeStr:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public getTimeWheel()Lcom/letv/leui/widget/picker/TimeWheel;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    return-object v0
.end method

.method public isShowContent(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 113
    iget-object v1, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeTv:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    return-void

    .line 113
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;

    iget v1, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->hourOfDay:I

    iget v2, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->minute:I

    invoke-interface {v0, v1, v2}, Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;->onTimeSet(II)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTimePickerDialog;->dismiss()V

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTimePickerDialog;->dismiss()V

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1020085
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTimeChanged(Lcom/letv/leui/widget/picker/TimeWheel;II)V
    .locals 6
    .param p1, "view"    # Lcom/letv/leui/widget/picker/TimeWheel;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 192
    iput p2, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->hourOfDay:I

    .line 193
    iput p3, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->minute:I

    .line 194
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->timeStr:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_0
    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/TimeWheel;->setCenterItemTextColor(I)V

    .line 185
    return-void
.end method

.method public setOnDateSetListener(Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;)V
    .locals 0
    .param p1, "dateSetListener"    # Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeSetListener:Lcom/letv/leui/widget/LeTimePickerDialog$OnTimeSetListener;

    .line 78
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    return-void
.end method

.method public updateTime(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "hourOfDay"    # Ljava/lang/Integer;
    .param p2, "minuteOfHour"    # Ljava/lang/Integer;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 132
    iget-object v0, p0, Lcom/letv/leui/widget/LeTimePickerDialog;->mTimeWheel:Lcom/letv/leui/widget/picker/TimeWheel;

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/picker/TimeWheel;->setCurrentMin(Ljava/lang/Integer;)V

    .line 130
    return-void
.end method
