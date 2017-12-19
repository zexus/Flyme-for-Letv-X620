.class public Lcom/letv/leui/widget/LeTopSlideToastHelper;
.super Ljava/lang/Object;
.source "LeTopSlideToastHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;,
        Lcom/letv/leui/widget/LeTopSlideToastHelper$1;
    }
.end annotation


# static fields
.field private static final CONTENT_TEXT_DOUBLELINE_WIDTH:F = 0.8f

.field private static final CONTENT_TEXT_SINGlELINE_WIDTH:F = 0.88f

.field private static final CONTENT_TEXT_SIZE_DP:F = 13.0f

.field public static final LENGTH_LONG:I = 0xdac

.field public static final LENGTH_SHORT:I = 0x7d0

.field public static final TOAST_HEIGTH_DP_HIGH:I = 0x48

.field public static final TOAST_HEIGTH_DP_LOW:I = 0x40

.field private static density:F

.field private static screenWidth:I


# instance fields
.field private animStyleId:I

.field private callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

.field private duration:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mShowWhenLocked:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private final timerRunnable:Ljava/lang/Runnable;

.field private toastView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->duration:I

    .line 34
    const v1, 0x1030004

    iput v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->animStyleId:I

    .line 43
    new-instance v1, Lcom/letv/leui/widget/LeTopSlideToastHelper$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper$1;-><init>(Lcom/letv/leui/widget/LeTopSlideToastHelper;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->timerRunnable:Ljava/lang/Runnable;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 56
    move-object v0, p1

    .line 58
    :cond_0
    iput-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowManager:Landroid/view/WindowManager;

    .line 60
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/letv/leui/widget/LeTopSlideToastHelper;->density:F

    .line 61
    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/letv/leui/widget/LeTopSlideToastHelper;->screenWidth:I

    .line 62
    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->init()V

    .line 50
    return-void
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 238
    sget v0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getToastHelper(Landroid/content/Context;ILandroid/view/View;Lcom/letv/leui/widget/LeTopSlideToastCallback;)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/letv/leui/widget/LeTopSlideToastCallback;

    .prologue
    const/4 v1, 0x0

    .line 183
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 184
    :cond_0
    return-object v1

    .line 186
    :cond_1
    new-instance v0, Lcom/letv/leui/widget/LeTopSlideToastHelper;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "helper":Lcom/letv/leui/widget/LeTopSlideToastHelper;
    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setCallback(Lcom/letv/leui/widget/LeTopSlideToastCallback;)V

    .line 188
    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setView(Landroid/view/View;)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    .line 189
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setDuration(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    .line 190
    const v1, 0x1030529

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setAnimation(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    .line 191
    return-object v0
.end method

.method public static getToastHelper(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/letv/leui/widget/LeTopSlideToastCallback;)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "btn_text"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "callback"    # Lcom/letv/leui/widget/LeTopSlideToastCallback;

    .prologue
    .line 178
    sget-object v7, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->LEFT:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->getToastHelper(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/letv/leui/widget/LeTopSlideToastCallback;Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getToastHelper(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/letv/leui/widget/LeTopSlideToastCallback;Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "btn_text"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "callback"    # Lcom/letv/leui/widget/LeTopSlideToastCallback;
    .param p7, "contentAlign"    # Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    const/4 v9, 0x0

    return-object v9

    .line 129
    :cond_0
    new-instance v2, Lcom/letv/leui/widget/LeTopSlideToastHelper;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, "helper":Lcom/letv/leui/widget/LeTopSlideToastHelper;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x10900e5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 131
    .local v4, "toast":Landroid/view/View;
    const v9, 0x102048e

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 132
    .local v7, "toast_img":Landroid/widget/ImageView;
    const v9, 0x102048d

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 133
    .local v8, "toast_text":Landroid/widget/TextView;
    const v9, 0x102048f

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 134
    .local v5, "toast_btn":Landroid/widget/TextView;
    const v9, 0x1020490

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 135
    .local v6, "toast_divider":Landroid/widget/ImageView;
    if-nez p3, :cond_3

    .line 136
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 143
    .local v3, "paint":Landroid/graphics/Paint;
    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v9}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->dip2px(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 146
    .local v1, "TextWidth":F
    sget v9, Lcom/letv/leui/widget/LeTopSlideToastHelper;->screenWidth:I

    int-to-float v9, v9

    const v10, 0x3f6147ae    # 0.88f

    mul-float/2addr v9, v10

    cmpl-float v9, v1, v9

    if-lez v9, :cond_4

    .line 147
    sget v9, Lcom/letv/leui/widget/LeTopSlideToastHelper;->screenWidth:I

    int-to-float v9, v9

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 151
    :goto_1
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    sget-object v9, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->CENTER:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    move-object/from16 v0, p7

    if-ne v0, v9, :cond_1

    .line 155
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    :cond_1
    if-nez p4, :cond_5

    .line 158
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :cond_2
    :goto_2
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setCallback(Lcom/letv/leui/widget/LeTopSlideToastCallback;)V

    .line 167
    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setView(Landroid/view/View;)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    .line 168
    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setDuration(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    .line 169
    const v9, 0x1030529

    invoke-virtual {v2, v9}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setAnimation(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    .line 170
    return-object v2

    .line 138
    .end local v1    # "TextWidth":F
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {v7, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 149
    .restart local v1    # "TextWidth":F
    .restart local v3    # "paint":Landroid/graphics/Paint;
    :cond_4
    sget v9, Lcom/letv/leui/widget/LeTopSlideToastHelper;->screenWidth:I

    int-to-float v9, v9

    const v10, 0x3f6147ae    # 0.88f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_1

    .line 161
    :cond_5
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    if-eqz p5, :cond_2

    .line 163
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private init()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 67
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x88

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 69
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 70
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 71
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 72
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 73
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 74
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 75
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "ToastHelper"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->animStyleId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 65
    return-void
.end method


# virtual methods
.method public getToastView()Landroid/view/View;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    return-object v0
.end method

.method public getmWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public removeView()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeTopSlideToastCallback;->onDismiss()V

    .line 102
    :cond_0
    return-void
.end method

.method public setAnimation(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 2
    .param p1, "animStyleId"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->animStyleId:I

    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->animStyleId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 202
    return-object p0
.end method

.method public setCallback(Lcom/letv/leui/widget/LeTopSlideToastCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/letv/leui/widget/LeTopSlideToastCallback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    .line 37
    return-void
.end method

.method public setDuration(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->duration:I

    .line 196
    return-object p0
.end method

.method public setShowWhenLocked(Z)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 0
    .param p1, "showWhenLocked"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mShowWhenLocked:Z

    .line 234
    return-object p0
.end method

.method public setToastHeight(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 2
    .param p1, "heightDip"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    int-to-float v1, p1

    invoke-static {v1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 213
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    .line 223
    return-object p0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->removeView()V

    .line 82
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mShowWhenLocked:Z

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mHandler:Landroid/os/Handler;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->timerRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeTopSlideToastCallback;->onShow()V

    .line 80
    :cond_2
    return-void

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    goto :goto_0
.end method
