.class public Lcom/letv/leui/widget/LeButton;
.super Landroid/widget/Button;
.source "LeButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeButton$DefStyle;
    }
.end annotation


# static fields
.field private static synthetic -com_letv_leui_widget_LeButton$DefStyleSwitchesValues:[I = null

.field private static final BTN_BLUE:I = -0xdc6a12

.field private static final BTN_WHITE:I = -0x1


# instance fields
.field private defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

.field private hasDefStyle:Z

.field private mhasStroke:Z

.field private minusColor:I

.field private myColor:I

.field private nombg_color:I

.field private nombg_roundRadius:I

.field private nombg_strokeColor:I

.field private nombg_strokeWidth:I

.field private normal_bg:Landroid/graphics/drawable/GradientDrawable;

.field private press_bg:Landroid/graphics/drawable/GradientDrawable;

.field private prsbg_color:I

.field private prsbg_roundRadius:I

.field private prsbg_strokeColor:I

.field private prsbg_strokeWidth:I

.field private textColor:I

.field private unable_bg:Landroid/graphics/drawable/GradientDrawable;

.field private unable_color:I

.field private unable_roundRadius:I

.field private unable_strokeColor:I

.field private unable_strokeWidth:I


# direct methods
.method private static synthetic -getcom_letv_leui_widget_LeButton$DefStyleSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/letv/leui/widget/LeButton;->-com_letv_leui_widget_LeButton$DefStyleSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/letv/leui/widget/LeButton;->-com_letv_leui_widget_LeButton$DefStyleSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/letv/leui/widget/LeButton$DefStyle;->values()[Lcom/letv/leui/widget/LeButton$DefStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/letv/leui/widget/LeButton$DefStyle;->BLUE_BG:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeButton$DefStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/letv/leui/widget/LeButton$DefStyle;->DEF:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeButton$DefStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeButton$DefStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/letv/leui/widget/LeButton$DefStyle;->WHITE_BG_BLK:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeButton$DefStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/letv/leui/widget/LeButton;->-com_letv_leui_widget_LeButton$DefStyleSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    .line 32
    sget-object v0, Lcom/letv/leui/widget/LeButton$DefStyle;->DEF:Lcom/letv/leui/widget/LeButton$DefStyle;

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    .line 33
    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    .line 34
    const v0, 0x101010

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    .line 73
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 74
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 75
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    .line 32
    sget-object v0, Lcom/letv/leui/widget/LeButton$DefStyle;->DEF:Lcom/letv/leui/widget/LeButton$DefStyle;

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    .line 33
    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    .line 34
    const v0, 0x101010

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    .line 73
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 74
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 75
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 111
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 193
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private setBtnBackgroud()V
    .locals 6

    .prologue
    const v5, 0x101009e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 93
    .local v0, "bg_list":Landroid/graphics/drawable/StateListDrawable;
    const v1, 0x10100a7

    filled-new-array {v1, v5}, [I

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 94
    new-array v1, v4, [I

    aput v5, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 95
    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method private setDefBGStyle()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x16000000

    const v3, -0x1f1f1d

    const/4 v2, -0x1

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    .line 119
    invoke-static {}, Lcom/letv/leui/widget/LeButton;->-getcom_letv_leui_widget_LeButton$DefStyleSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeButton$DefStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    .line 142
    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/LeButton;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_roundRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_roundRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_roundRadius:I

    .line 145
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/LeButton;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeWidth:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeWidth:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeWidth:I

    .line 147
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 148
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 150
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 151
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 153
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 154
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 157
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 159
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 160
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 164
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    :cond_1
    return-void

    .line 121
    :pswitch_0
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    .line 122
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    .line 123
    iput v4, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v4, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v4, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    .line 124
    iput v2, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto :goto_0

    .line 127
    :pswitch_1
    iput v2, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    .line 128
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    const/high16 v1, -0x4e000000

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    .line 129
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    .line 130
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto/16 :goto_0

    .line 133
    :pswitch_2
    iput v2, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    .line 134
    const/high16 v0, 0x19000000

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    .line 135
    iput v3, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v3, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v3, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    .line 136
    const v0, -0xb5b3ae

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto/16 :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 172
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setAlpha(F)V

    .line 170
    :goto_0
    return-void

    .line 175
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public getNormalBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getPressBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getUnableBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 188
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomColor(I)V
    .locals 4
    .param p1, "myColor"    # I

    .prologue
    const/high16 v3, 0x100000

    .line 51
    move v1, p1

    .line 52
    .local v1, "tempcolor":I
    rem-int/lit16 v0, v1, 0x100

    .local v0, "temp":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 53
    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    add-int/lit8 v2, v2, -0x10

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 54
    sub-int/2addr v1, v0

    .line 56
    :cond_0
    const/high16 v2, 0x10000

    rem-int v0, v1, v2

    const/16 v2, 0x1000

    if-ge v0, v2, :cond_1

    .line 57
    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    add-int/lit16 v2, v2, -0x1000

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 58
    sub-int/2addr v1, v0

    .line 60
    :cond_1
    const/high16 v2, 0x1000000

    rem-int v0, v1, v2

    if-ge v0, v3, :cond_2

    .line 61
    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 64
    :cond_2
    const/high16 v2, -0x1000000

    or-int/2addr p1, v2

    .line 65
    iput p1, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    .line 47
    return-void
.end method

.method public setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V
    .locals 0
    .param p1, "defStyle"    # Lcom/letv/leui/widget/LeButton$DefStyle;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    .line 41
    invoke-direct {p0}, Lcom/letv/leui/widget/LeButton;->setDefBGStyle()V

    .line 42
    invoke-direct {p0}, Lcom/letv/leui/widget/LeButton;->setBtnBackgroud()V

    .line 38
    :cond_0
    return-void
.end method

.method public setHasStroke(Z)V
    .locals 0
    .param p1, "hasStroke"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    .line 69
    return-void
.end method
