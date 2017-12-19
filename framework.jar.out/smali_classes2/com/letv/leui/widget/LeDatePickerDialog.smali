.class public Lcom/letv/leui/widget/LeDatePickerDialog;
.super Landroid/app/Dialog;
.source "LeDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;
.implements Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;,
        Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;
    }
.end annotation


# instance fields
.field private day:I

.field private dayStr:Ljava/lang/String;

.field private isChinese:Z

.field private mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

.field private mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

.field private mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

.field private month:I

.field private monthStr:Ljava/lang/String;

.field private timeStr:Ljava/lang/String;

.field private timeTv:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private year:I

.field private yearStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeDatePickerDialog;-><init>(Landroid/content/Context;I)V

    .line 79
    iput-object p2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    .line 80
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeDatePickerDialog;->init(Landroid/content/Context;)V

    .line 81
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p3, p4, p5}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(III)V

    .line 82
    iput p3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    .line 83
    add-int/lit8 v0, p4, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    .line 84
    iput p5, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    .line 85
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->isChinese:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;IIIZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "b"    # Z

    .prologue
    const/4 v3, 0x1

    .line 94
    const v0, 0x103051c

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeDatePickerDialog;-><init>(Landroid/content/Context;I)V

    .line 95
    iput-object p2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

    .line 96
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeDatePickerDialog;->init(Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, p6}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZZ)V

    .line 98
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p3, p4, p5, v3}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    .line 93
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109009e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    .line 193
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->setContentView(Landroid/view/View;)V

    .line 194
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    const v2, 0x102007d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    const v2, 0x102007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v1, 0x102007c

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/picker/DateWheel;

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10406ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->isChinese:Z

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel;->addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const v2, -0xdc6a12

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterItemTextColor(I)V

    .line 208
    const v1, 0x102007b

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    .line 209
    const v1, 0x1020079

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    .line 210
    const v1, 0x1020078

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeDatePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/letv/leui/widget/LeDatePickerDialog$1;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeDatePickerDialog$1;-><init>(Lcom/letv/leui/widget/LeDatePickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 190
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel;->setOnLunarDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;)V

    goto :goto_0
.end method

.method private subtitleIsShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->view:Landroid/view/View;

    .line 276
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    .line 277
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    .line 278
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    .line 279
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    .line 280
    iput-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public getDateTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDateWheel()Lcom/letv/leui/widget/picker/DateWheel;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    return-object v0
.end method

.method public isShowDate(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    return-void

    .line 186
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public isShowTitle(Z)V
    .locals 8
    .param p1, "b"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 117
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    if-nez p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

    if-nez v0, :cond_2

    .line 121
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->isChinese:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->monthStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->dayStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;

    iget v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    iget v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    iget v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    invoke-interface {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeDatePickerDialog$OnDateSetListener;->onDateSet(III)V

    .line 230
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->dismiss()V

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mLunarDateSetListener:Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->monthStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->dayStr:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/letv/leui/widget/LeDatePickerDialog$OnLunarDateSetListener;->onDateSet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->dismiss()V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x102007d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateChange(Lcom/letv/leui/widget/picker/DateWheel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p2, "year"    # Ljava/lang/String;
    .param p3, "month"    # Ljava/lang/String;
    .param p4, "day"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->yearStr:Ljava/lang/String;

    .line 287
    iput-object p3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->monthStr:Ljava/lang/String;

    .line 288
    iput-object p4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->dayStr:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->subtitleIsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDateChanged(Lcom/letv/leui/widget/picker/DateWheel;III)V
    .locals 8
    .param p1, "view"    # Lcom/letv/leui/widget/picker/DateWheel;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    iput p2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->year:I

    .line 254
    iput p3, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->month:I

    .line 255
    iput p4, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->day:I

    .line 256
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->isChinese:Z

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->subtitleIsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/letv/leui/widget/LeDatePickerDialog;->subtitleIsShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->timeStr:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, p3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setCenterItemTextColor(I)V

    .line 247
    return-void
.end method

.method public setMaxYear(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setMinYear(I)V

    .line 164
    return-void
.end method

.method public setMinYear(I)V
    .locals 1
    .param p1, "min"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/DateWheel;->setMinYear(I)V

    .line 156
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    return-void
.end method

.method public updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/letv/leui/widget/LeDatePickerDialog;->mDateWheel:Lcom/letv/leui/widget/picker/DateWheel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    .line 148
    return-void
.end method
