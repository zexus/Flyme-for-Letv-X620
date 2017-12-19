.class public Lcom/letv/leui/pim/lunar/SolarHoliDay;
.super Ljava/lang/Object;
.source "SolarHoliDay.java"


# static fields
.field public static DAYS_OF_ONE_WEEKS:I

.field public static DAYS_OF_THREE_WEEKS:I

.field public static DAYS_OF_TWO_WEEKS:I

.field public static FIRST_DAY_OF_MONTH:I

.field public static JUNE:I

.field public static MAY:I

.field public static SUNDAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 11
    sput v0, Lcom/letv/leui/pim/lunar/SolarHoliDay;->SUNDAY:I

    .line 12
    sput v0, Lcom/letv/leui/pim/lunar/SolarHoliDay;->FIRST_DAY_OF_MONTH:I

    .line 13
    const/4 v0, 0x4

    sput v0, Lcom/letv/leui/pim/lunar/SolarHoliDay;->MAY:I

    .line 14
    const/4 v0, 0x5

    sput v0, Lcom/letv/leui/pim/lunar/SolarHoliDay;->JUNE:I

    .line 15
    const/16 v0, 0xe

    sput v0, Lcom/letv/leui/pim/lunar/SolarHoliDay;->DAYS_OF_TWO_WEEKS:I

    .line 16
    const/4 v0, 0x7

    sput v0, Lcom/letv/leui/pim/lunar/SolarHoliDay;->DAYS_OF_ONE_WEEKS:I

    .line 17
    const/16 v0, 0x15

    sput v0, Lcom/letv/leui/pim/lunar/SolarHoliDay;->DAYS_OF_THREE_WEEKS:I

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSolarHoliDay(III)Ljava/lang/String;
    .locals 15
    .param p0, "year"    # I
    .param p1, "currentMonth"    # I
    .param p2, "currentDayForMonth"    # I

    .prologue
    .line 19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 20
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    add-int/lit8 v13, p1, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 21
    const-string/jumbo v11, "%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "num_date":Ljava/lang/String;
    const v10, 0x1070063

    .line 22
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 24
    .local v6, "solarHolidayArray":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 25
    .local v1, "calendar":Ljava/util/Calendar;
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->FIRST_DAY_OF_MONTH:I

    move/from16 v0, p1

    invoke-virtual {v1, p0, v0, v10}, Ljava/util/Calendar;->set(III)V

    .line 26
    const/4 v10, 0x7

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 27
    .local v9, "weekDay":I
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->MAY:I

    move/from16 v0, p1

    if-ne v0, v10, :cond_1

    .line 28
    const/4 v5, -0x1

    .line 29
    .local v5, "secondSunday":I
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->SUNDAY:I

    if-ne v9, v10, :cond_0

    .line 30
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->FIRST_DAY_OF_MONTH:I

    sget v11, Lcom/letv/leui/pim/lunar/SolarHoliDay;->DAYS_OF_ONE_WEEKS:I

    add-int v5, v10, v11

    .line 34
    :goto_0
    move/from16 v0, p2

    if-ne v5, v0, :cond_1

    .line 35
    const v10, 0x10405ba

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 32
    :cond_0
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->DAYS_OF_TWO_WEEKS:I

    sub-int/2addr v10, v9

    add-int/lit8 v5, v10, 0x2

    goto :goto_0

    .line 38
    .end local v5    # "secondSunday":I
    :cond_1
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->JUNE:I

    move/from16 v0, p1

    if-ne v0, v10, :cond_3

    .line 39
    const/4 v8, -0x1

    .line 40
    .local v8, "thirdSunday":I
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->SUNDAY:I

    if-ne v9, v10, :cond_2

    .line 41
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->FIRST_DAY_OF_MONTH:I

    sget v11, Lcom/letv/leui/pim/lunar/SolarHoliDay;->DAYS_OF_TWO_WEEKS:I

    add-int v8, v10, v11

    .line 45
    :goto_1
    move/from16 v0, p2

    if-ne v8, v0, :cond_3

    .line 46
    const v10, 0x10405bb

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 43
    :cond_2
    sget v10, Lcom/letv/leui/pim/lunar/SolarHoliDay;->DAYS_OF_THREE_WEEKS:I

    sub-int/2addr v10, v9

    add-int/lit8 v8, v10, 0x2

    goto :goto_1

    .line 49
    .end local v8    # "thirdSunday":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v10, v6

    if-ge v2, v10, :cond_5

    .line 50
    aget-object v10, v6, v2

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "solarHolidayDateStr":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 52
    const/4 v10, 0x1

    aget-object v10, v7, v10

    return-object v10

    .line 49
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55
    .end local v7    # "solarHolidayDateStr":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, ""

    return-object v10
.end method
