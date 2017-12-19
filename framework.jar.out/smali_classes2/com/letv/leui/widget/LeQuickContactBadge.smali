.class public Lcom/letv/leui/widget/LeQuickContactBadge;
.super Lcom/letv/leui/widget/BorderedRoundedCornersImageView;
.source "LeQuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final EXTRA_URI_CONTENT:Ljava/lang/String; = "uri_content"

.field private static final MULTI_BLANK:Ljava/lang/String; = "[ ]+"

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3

.field static sBackgroundColorList:[I

.field static sObject:Ljava/lang/Object;


# instance fields
.field private DEFAULT_TEXT_SIZE_RATIO:F

.field private mBadgeText:Ljava/lang/String;

.field private mBadgeTextColor:I

.field private mBadgeTextPaint:Landroid/graphics/Paint;

.field private mBadgeTextShadowColor:I

.field private mBadgeTextShadowRadius:I

.field private mBadgeTextSize:I

.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field private mDefaultAvatar:Landroid/graphics/drawable/Drawable;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/LeQuickContactBadge;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/LeQuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/LeQuickContactBadge;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    .line 73
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v3

    .line 72
    sput-object v0, Lcom/letv/leui/widget/LeQuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v4, [Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "lookup"

    aput-object v1, v0, v3

    .line 79
    sput-object v0, Lcom/letv/leui/widget/LeQuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/LeQuickContactBadge;->sObject:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mExtras:Landroid/os/Bundle;

    .line 63
    iput-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextColor:I

    .line 451
    const v0, 0x3f1e353f    # 0.618f

    iput v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->DEFAULT_TEXT_SIZE_RATIO:F

    .line 171
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;-><init>(Lcom/letv/leui/widget/LeQuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    .line 174
    :cond_0
    invoke-virtual {p0, p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method private drawBadgeText(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 618
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 619
    return-void

    .line 622
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 624
    .local v6, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 625
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 623
    invoke-virtual {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 628
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_2

    .line 629
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    .line 630
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 631
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 633
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 635
    iget v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextSize:I

    if-nez v7, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->DEFAULT_TEXT_SIZE_RATIO:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextSize:I

    .line 638
    :cond_1
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 640
    iget v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowRadius:I

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowColor:I

    if-eqz v7, :cond_2

    .line 641
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowRadius:I

    int-to-float v8, v8

    iget v9, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowColor:I

    invoke-virtual {v7, v8, v11, v11, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 646
    :cond_2
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v0, v7

    .line 647
    .local v0, "baseX":F
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v1, v7

    .line 648
    .local v1, "baseY":F
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 649
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v3, v7, v8

    .line 650
    .local v3, "fontTotalHeight":F
    div-float v7, v3, v12

    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v5, v7, v8

    .line 651
    .local v5, "offY":F
    add-float v7, v1, v5

    sub-float v4, v7, v12

    .line 652
    .local v4, "newY":F
    iget-object v7, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeText:Ljava/lang/String;

    iget-object v8, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 617
    return-void
.end method

.method public static getBackgroundColorByName(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 131
    if-nez p0, :cond_0

    .line 132
    return v7

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getBackgroundColorList(Landroid/content/res/Resources;)[I

    move-result-object v2

    .line 136
    .local v2, "colorsList":[I
    if-nez v2, :cond_1

    .line 137
    return v7

    .line 139
    :cond_1
    array-length v1, v2

    .line 141
    .local v1, "colorSize":I
    const/4 v6, 0x0

    .line 142
    .local v6, "position":I
    if-eqz p1, :cond_4

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 144
    .local v4, "length":I
    const/4 v5, 0x0

    .line 145
    .local v5, "nameValue":C
    const/4 v3, 0x0

    .end local v5    # "nameValue":C
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 146
    const/16 v7, 0xa

    if-le v3, v7, :cond_3

    .line 151
    :cond_2
    mul-int/lit8 v7, v4, 0x11

    mul-int/lit8 v8, v5, 0xd

    add-int v0, v7, v8

    .line 152
    .local v0, "code":I
    rem-int v6, v0, v1

    .line 157
    .end local v0    # "code":I
    .end local v3    # "i":I
    .end local v4    # "length":I
    :goto_1
    aget v7, v2, v6

    return v7

    .line 149
    .restart local v3    # "i":I
    .restart local v4    # "length":I
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v7, v5

    int-to-char v5, v7

    .line 145
    .local v5, "nameValue":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "nameValue":C
    :cond_4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    array-length v7, v2

    int-to-double v10, v7

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_1
.end method

.method public static getBackgroundColorList(Landroid/content/res/Resources;)[I
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 91
    if-nez p0, :cond_0

    .line 92
    return-object v5

    .line 95
    :cond_0
    sget-object v6, Lcom/letv/leui/widget/LeQuickContactBadge;->sObject:Ljava/lang/Object;

    monitor-enter v6

    .line 96
    :try_start_0
    sget-object v5, Lcom/letv/leui/widget/LeQuickContactBadge;->sBackgroundColorList:[I

    if-nez v5, :cond_3

    .line 97
    const v5, 0x107004f

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 98
    .local v4, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 99
    .local v0, "N":I
    new-array v5, v0, [I

    sput-object v5, Lcom/letv/leui/widget/LeQuickContactBadge;->sBackgroundColorList:[I

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 101
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 102
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 103
    sget-object v5, Lcom/letv/leui/widget/LeQuickContactBadge;->sBackgroundColorList:[I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v5, v1

    .line 100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "id":I
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    monitor-exit v6

    .line 109
    sget-object v5, Lcom/letv/leui/widget/LeQuickContactBadge;->sBackgroundColorList:[I

    array-length v5, v5

    new-array v3, v5, [I

    .line 110
    .local v3, "ret":[I
    sget-object v5, Lcom/letv/leui/widget/LeQuickContactBadge;->sBackgroundColorList:[I

    sget-object v6, Lcom/letv/leui/widget/LeQuickContactBadge;->sBackgroundColorList:[I

    array-length v6, v6

    invoke-static {v5, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 111
    return-object v3

    .line 95
    .end local v3    # "ret":[I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 468
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 470
    .local v4, "len":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 471
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 472
    .local v0, "c":C
    invoke-static {v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->isChinese(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 473
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 470
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 477
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "firstLetter":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 479
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 480
    const-string/jumbo v7, "[ ]+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, "subString":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 482
    array-length v5, v6

    .line 483
    .local v5, "length":I
    const/4 v7, 0x2

    if-lt v5, v7, :cond_3

    .line 484
    aget-object v7, v6, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "lastLetter":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 486
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 487
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 488
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 490
    :cond_2
    return-object v1

    .line 493
    .end local v3    # "lastLetter":Ljava/lang/String;
    :cond_3
    return-object v1

    .line 496
    .end local v5    # "length":I
    .end local v6    # "subString":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, ""

    return-object v7
.end method

.method public static getRandomBackgroundColor(Landroid/content/res/Resources;)I
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x0

    .line 116
    if-nez p0, :cond_0

    .line 117
    return v2

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getBackgroundColorList(Landroid/content/res/Resources;)[I

    move-result-object v0

    .line 121
    .local v0, "colorsList":[I
    if-nez v0, :cond_1

    .line 122
    return v2

    .line 126
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    array-length v4, v0

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 127
    .local v1, "random":I
    aget v2, v0, v1

    return v2
.end method

.method private isAssigned()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 196
    iget-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 455
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 456
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 457
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 462
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 458
    :cond_1
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    .line 464
    const/4 v1, 0x0

    return v1
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->isAssigned()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->setEnabled(Z)V

    .line 307
    return-void
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method public assignContactFromEmail(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 255
    iput-object p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 256
    iput-object p3, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mExtras:Landroid/os/Bundle;

    .line 257
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    .line 259
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 260
    sget-object v4, Lcom/letv/leui/widget/LeQuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 258
    const/4 v1, 0x0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 262
    :cond_0
    iput-object v2, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 263
    invoke-direct {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z

    .prologue
    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->assignContactFromPhone(Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method public assignContactFromPhone(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "lazyLookup"    # Z
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 295
    iput-object p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mExtras:Landroid/os/Bundle;

    .line 297
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    .line 299
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 300
    sget-object v4, Lcom/letv/leui/widget/LeQuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 298
    const/4 v1, 0x1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return-void

    .line 302
    :cond_0
    iput-object v2, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 303
    invoke-direct {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 221
    iput-object p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 222
    iput-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 223
    iput-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->onContactUriChanged()V

    .line 220
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->drawableStateChanged()V

    .line 178
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 316
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 317
    .local v2, "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 322
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactUri:Landroid/net/Uri;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 323
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 324
    const/high16 v9, 0x80000

    .line 326
    .local v9, "intentFlags":I
    :goto_1
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "intentFlags":I
    :goto_2
    return-void

    .line 316
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mExtras:Landroid/os/Bundle;

    .restart local v2    # "extras":Landroid/os/Bundle;
    goto :goto_0

    .line 325
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_1
    const v9, 0x10008000

    .restart local v9    # "intentFlags":I
    goto :goto_1

    .line 328
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "intentFlags":I
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    if-eqz v0, :cond_3

    .line 329
    const-string/jumbo v0, "uri_content"

    iget-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    .line 331
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 332
    sget-object v4, Lcom/letv/leui/widget/LeQuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 330
    const/4 v1, 0x2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    if-eqz v0, :cond_4

    .line 334
    const-string/jumbo v0, "uri_content"

    iget-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mQueryHandler:Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;

    .line 336
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 337
    sget-object v4, Lcom/letv/leui/widget/LeQuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 335
    const/4 v1, 0x3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/letv/leui/widget/LeQuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 340
    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeQuickContactBadge;->drawBadgeText(Landroid/graphics/Canvas;)V

    .line 188
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 347
    const-class v0, Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 345
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/letv/leui/widget/BorderedRoundedCornersImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 353
    const-class v0, Lcom/letv/leui/widget/LeQuickContactBadge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method public setContactBadgeText(Ljava/lang/String;)V
    .locals 2
    .param p1, "badgeText"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeText:Ljava/lang/String;

    .line 514
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->invalidate()V

    .line 503
    return-void

    .line 507
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeText:Ljava/lang/String;

    goto :goto_0

    .line 511
    :cond_1
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeQuickContactBadge;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setContactBudageTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 572
    iget v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextColor:I

    if-ne p1, v0, :cond_0

    .line 573
    return-void

    .line 576
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextColor:I

    .line 577
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 580
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->invalidate()V

    .line 571
    :cond_1
    return-void
.end method

.method public setContactBudageTextColorResource(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->setContactBudageTextColor(I)V

    .line 567
    return-void
.end method

.method public setContactBudageTextShadow(II)V
    .locals 4
    .param p1, "shadowRadius"    # I
    .param p2, "shdowColor"    # I

    .prologue
    const/4 v3, 0x0

    .line 600
    if-lez p1, :cond_0

    .line 601
    iget v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowRadius:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowColor:I

    if-ne v0, p2, :cond_1

    .line 602
    :cond_0
    return-void

    .line 605
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowRadius:I

    .line 606
    iput p2, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowColor:I

    .line 608
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 611
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->invalidate()V

    .line 599
    :cond_2
    return-void
.end method

.method public setContactBudageTextShadowResource(II)V
    .locals 3
    .param p1, "shadowRadiusRes"    # I
    .param p2, "shdowColorRes"    # I

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 589
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 590
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 589
    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LeQuickContactBadge;->setContactBudageTextShadow(II)V

    .line 586
    return-void
.end method

.method public setContactBudageTextSize(I)V
    .locals 2
    .param p1, "badgeTextSize"    # I

    .prologue
    .line 553
    if-lez p1, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextSize:I

    if-ne p1, v0, :cond_1

    .line 554
    :cond_0
    return-void

    .line 557
    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextSize:I

    .line 558
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 561
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mBadgeText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->invalidate()V

    .line 552
    :cond_2
    return-void
.end method

.method public setContactBudageTextSizeResource(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->setContactBudageTextSize(I)V

    .line 543
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .param p1, "excludeMimes"    # [Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setImageToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeQuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108052e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeQuickContactBadge;->mDefaultAvatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeQuickContactBadge;->setContactBadgeText(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/letv/leui/widget/LeQuickContactBadge;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 184
    return-void
.end method

.method public shouldUseDefaultImage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "badgeText"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    return v7

    .line 521
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 522
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    return v7

    .line 525
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 527
    .local v3, "len":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 528
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 529
    .local v0, "c":C
    invoke-static {v0}, Lcom/letv/leui/widget/LeQuickContactBadge;->isChinese(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 530
    return v6

    .line 527
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 533
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "firstLetter":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 535
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 536
    return v6

    .line 538
    :cond_4
    return v7
.end method
