.class public Lcom/letv/leui/pim/lunar/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field private static sLunar:Lcom/letv/leui/pim/lunar/Lunar;

.field static final sLunarInfo:[J


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mChineseDateFormat:Ljava/text/SimpleDateFormat;

.field private mChineseNumber:[Ljava/lang/String;

.field private mDaseDate:Ljava/util/Date;

.field private mDay:I

.field private mLeap:Z

.field private mLeapMonth:I

.field private mLunarMonthName:[Ljava/lang/String;

.field private mMonth:I

.field private mRes:Landroid/content/res/Resources;

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/letv/leui/pim/lunar/Lunar;->sLunarInfo:[J

    .line 12
    return-void

    .line 27
    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mDaseDate:Ljava/util/Date;

    .line 115
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    .line 116
    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v4, 0x1070060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mChineseNumber:[Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v4, 0x1070065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLunarMonthName:[Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v4, 0x10405bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "format1":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mChineseDateFormat:Ljava/text/SimpleDateFormat;

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v4, 0x10405bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "format2":Ljava/lang/String;
    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mChineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mDaseDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2    # "format2":Ljava/lang/String;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private cyclicalm(I)Ljava/lang/String;
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 104
    iget-object v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v3, 0x107005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "Gan":[Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v3, 0x107005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "Zhi":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p1, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance()Lcom/letv/leui/pim/lunar/Lunar;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/letv/leui/pim/lunar/Lunar;->sLunar:Lcom/letv/leui/pim/lunar/Lunar;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/letv/leui/pim/lunar/Lunar;

    invoke-direct {v0}, Lcom/letv/leui/pim/lunar/Lunar;-><init>()V

    sput-object v0, Lcom/letv/leui/pim/lunar/Lunar;->sLunar:Lcom/letv/leui/pim/lunar/Lunar;

    .line 132
    :cond_0
    sget-object v0, Lcom/letv/leui/pim/lunar/Lunar;->sLunar:Lcom/letv/leui/pim/lunar/Lunar;

    return-object v0
.end method

.method private yearDays(I)I
    .locals 6
    .param p1, "y"    # I

    .prologue
    .line 43
    const/16 v1, 0x15c

    .line 44
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 45
    sget-object v2, Lcom/letv/leui/pim/lunar/Lunar;->sLunarInfo:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 44
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public animalsYear()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x107005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "Animals":[Ljava/lang/String;
    iget v1, p0, Lcom/letv/leui/pim/lunar/Lunar;->mYear:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v1, v0, v1

    return-object v1
.end method

.method public cyclical()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget v1, p0, Lcom/letv/leui/pim/lunar/Lunar;->mYear:I

    add-int/lit16 v1, v1, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 111
    .local v0, "num":I
    invoke-direct {p0, v0}, Lcom/letv/leui/pim/lunar/Lunar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChinaDayString(I)Ljava/lang/String;
    .locals 6
    .param p1, "day"    # I

    .prologue
    const/16 v5, 0x1e

    const/16 v4, 0xa

    .line 192
    iget-object v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v3, 0x1070061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "chineseTen":[Ljava/lang/String;
    rem-int/lit8 v2, p1, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 194
    .local v1, "n":I
    :goto_0
    if-le p1, v5, :cond_1

    .line 195
    const-string/jumbo v2, ""

    return-object v2

    .line 193
    .end local v1    # "n":I
    :cond_0
    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "n":I
    goto :goto_0

    .line 196
    :cond_1
    if-ne p1, v4, :cond_2

    .line 197
    iget-object v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v3, 0x10405c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    :cond_2
    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v3, 0x10405c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 200
    :cond_3
    if-ne p1, v5, :cond_4

    .line 201
    iget-object v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v3, 0x10405c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 203
    :cond_4
    if-gez p1, :cond_5

    .line 204
    const/4 p1, 0x0

    .line 206
    :cond_5
    if-ltz v1, :cond_6

    if-le v1, v4, :cond_7

    .line 207
    :cond_6
    const/4 v1, 0x0

    .line 209
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mChineseNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/letv/leui/pim/lunar/Lunar;->mDay:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/pim/lunar/Lunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 238
    iget-object v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v3, 0x10405be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "run1":Ljava/lang/String;
    iget-object v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v3, 0x10405c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "month1":Ljava/lang/String;
    iget v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    if-lt v2, v4, :cond_0

    iget v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_1

    .line 241
    :cond_0
    iput v4, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    .line 243
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    if-eqz v3, :cond_2

    .end local v1    # "run1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLunarMonthName:[Ljava/lang/String;

    iget v4, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .restart local v1    # "run1":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getYear()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    iget-object v1, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v2, 0x10405bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "year1":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/letv/leui/pim/lunar/Lunar;->mYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getmDay()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/letv/leui/pim/lunar/Lunar;->mDay:I

    return v0
.end method

.method public getmLeap()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    return v0
.end method

.method public getmLeapMonth()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeapMonth:I

    return v0
.end method

.method public getmMonth()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    return v0
.end method

.method public getmYear()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/letv/leui/pim/lunar/Lunar;->mYear:I

    return v0
.end method

.method public isBigMonth(Ljava/lang/String;)Z
    .locals 2
    .param p1, "lunarFestivalStr"    # Ljava/lang/String;

    .prologue
    .line 263
    iget v0, p0, Lcom/letv/leui/pim/lunar/Lunar;->mYear:I

    iget v1, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 264
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public leapDays(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/letv/leui/pim/lunar/Lunar;->sLunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 64
    const/16 v0, 0x1e

    return v0

    .line 66
    :cond_0
    const/16 v0, 0x1d

    return v0

    .line 68
    :cond_1
    return v1
.end method

.method public leapMonth(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    const-wide/16 v2, 0xf

    .line 76
    const/16 v0, 0x76c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x801

    if-gt p1, v0, :cond_0

    .line 77
    sget-object v0, Lcom/letv/leui/pim/lunar/Lunar;->sLunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 79
    :cond_0
    sget-object v0, Lcom/letv/leui/pim/lunar/Lunar;->sLunarInfo:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public monthDays(II)I
    .locals 4
    .param p1, "y"    # I
    .param p2, "m"    # I

    .prologue
    .line 92
    sget-object v0, Lcom/letv/leui/pim/lunar/Lunar;->sLunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p2

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 93
    const/16 v0, 0x1d

    return v0

    .line 95
    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 14
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 137
    const/4 v5, 0x0

    .line 138
    .local v5, "leapMonth":I
    iput-object p1, p0, Lcom/letv/leui/pim/lunar/Lunar;->mCalendar:Ljava/util/Calendar;

    .line 139
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    iget-object v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mDaseDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    div-long/2addr v10, v12

    long-to-int v7, v10

    .line 140
    .local v7, "offset":I
    add-int/lit8 v0, v7, 0x28

    .line 141
    .local v0, "dayCyl":I
    const/16 v6, 0xe

    .line 142
    .local v6, "monCyl":I
    const/4 v2, 0x0

    .line 144
    .local v2, "daysOfYear":I
    const/16 v4, 0x76c

    .local v4, "iYear":I
    :goto_0
    const/16 v9, 0x802

    if-ge v4, v9, :cond_0

    if-lez v7, :cond_0

    .line 145
    invoke-direct {p0, v4}, Lcom/letv/leui/pim/lunar/Lunar;->yearDays(I)I

    move-result v2

    .line 146
    sub-int/2addr v7, v2

    .line 147
    add-int/lit8 v6, v6, 0xc

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    :cond_0
    if-gez v7, :cond_1

    .line 150
    add-int/2addr v7, v2

    .line 151
    add-int/lit8 v4, v4, -0x1

    .line 152
    add-int/lit8 v6, v6, -0xc

    .line 154
    :cond_1
    iput v4, p0, Lcom/letv/leui/pim/lunar/Lunar;->mYear:I

    .line 155
    add-int/lit16 v8, v4, -0x748

    .line 156
    .local v8, "yearCyl":I
    invoke-virtual {p0, v4}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v5

    .line 157
    iput v5, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeapMonth:I

    .line 158
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "daysOfMonth":I
    const/4 v3, 0x1

    .local v3, "iMonth":I
    :goto_1
    const/16 v9, 0xd

    if-ge v3, v9, :cond_6

    if-lez v7, :cond_6

    .line 161
    if-lez v5, :cond_2

    add-int/lit8 v9, v5, 0x1

    if-ne v3, v9, :cond_2

    iget-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    if-eqz v9, :cond_5

    .line 166
    :cond_2
    iget v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mYear:I

    invoke-virtual {p0, v9, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v1

    .line 167
    :goto_2
    sub-int/2addr v7, v1

    .line 168
    iget-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    if-eqz v9, :cond_3

    add-int/lit8 v9, v5, 0x1

    if-ne v3, v9, :cond_3

    .line 169
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    .line 170
    :cond_3
    iget-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    if-nez v9, :cond_4

    .line 171
    add-int/lit8 v6, v6, 0x1

    .line 160
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 163
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    .line 164
    iget v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mYear:I

    invoke-virtual {p0, v9}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v1

    goto :goto_2

    .line 173
    :cond_6
    if-nez v7, :cond_7

    if-lez v5, :cond_7

    add-int/lit8 v9, v5, 0x1

    if-ne v3, v9, :cond_7

    .line 174
    iget-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    if-eqz v9, :cond_9

    .line 175
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    .line 182
    :cond_7
    :goto_3
    if-gez v7, :cond_8

    .line 183
    add-int/2addr v7, v1

    .line 184
    add-int/lit8 v3, v3, -0x1

    .line 185
    add-int/lit8 v6, v6, -0x1

    .line 187
    :cond_8
    iput v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    .line 188
    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mDay:I

    .line 135
    return-void

    .line 177
    :cond_9
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    .line 178
    add-int/lit8 v3, v3, -0x1

    .line 179
    add-int/lit8 v6, v6, -0x1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 214
    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v4, 0x10405bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "year1":Ljava/lang/String;
    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v4, 0x10405be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "run1":Ljava/lang/String;
    iget-object v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mRes:Landroid/content/res/Resources;

    const v4, 0x10405c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "month1":Ljava/lang/String;
    iget v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    if-lt v3, v5, :cond_0

    iget v3, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    const/16 v4, 0xc

    if-le v3, v4, :cond_1

    .line 218
    :cond_0
    iput v5, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    .line 220
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/letv/leui/pim/lunar/Lunar;->cyclical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/letv/leui/pim/lunar/Lunar;->animalsYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLeap:Z

    if-eqz v4, :cond_2

    .end local v1    # "run1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/pim/lunar/Lunar;->mLunarMonthName:[Ljava/lang/String;

    iget v5, p0, Lcom/letv/leui/pim/lunar/Lunar;->mMonth:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    iget v4, p0, Lcom/letv/leui/pim/lunar/Lunar;->mDay:I

    invoke-virtual {p0, v4}, Lcom/letv/leui/pim/lunar/Lunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .restart local v1    # "run1":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0
.end method
