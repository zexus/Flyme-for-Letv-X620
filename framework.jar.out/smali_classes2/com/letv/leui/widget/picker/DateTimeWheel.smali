.class public Lcom/letv/leui/widget/picker/DateTimeWheel;
.super Landroid/widget/LinearLayout;
.source "DateTimeWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final MIN_YEAR:I = 0x7b2

.field private static density:F


# instance fields
.field private am_pm:Lcom/letv/leui/widget/picker/WheelView;

.field private calendar:Ljava/util/Calendar;

.field private curYear:I

.field private dateChangedListener:Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

.field private dateFormat:Ljava/lang/String;

.field private day:Lcom/letv/leui/widget/picker/WheelView;

.field private dayWrapper:Landroid/view/View;

.field private hours:Lcom/letv/leui/widget/picker/WheelView;

.field private hoursWrapper:Landroid/view/View;

.field private isLunar:Z

.field private mAmPmStrings:[Ljava/lang/String;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private mins:Lcom/letv/leui/widget/picker/WheelView;

.field private noYearWheel:Z

.field private vto:Landroid/view/ViewTreeObserver;

.field private year:Lcom/letv/leui/widget/picker/WheelView;

.field private yearIndex:I

.field private yearList:Ljava/util/ArrayList;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/picker/DateTimeWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I

    return v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/picker/DateTimeWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/picker/DateTimeWheel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dayWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/picker/DateTimeWheel;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hoursWrapper:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/picker/DateTimeWheel;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/picker/DateTimeWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/picker/DateTimeWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/picker/DateTimeWheel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/picker/DateTimeWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I

    return p1
.end method

.method static synthetic -wrap0(F)I
    .locals 1
    .param p0, "dp"    # F

    .prologue
    invoke-static {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->dip2px(F)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    .line 48
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 53
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->isLunar:Z

    .line 55
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->noYearWheel:Z

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    sput v11, Lcom/letv/leui/widget/picker/DateTimeWheel;->density:F

    .line 70
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setOrientation(I)V

    .line 71
    const-string/jumbo v11, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 72
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x10900a1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v6, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 73
    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    .line 74
    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 75
    if-eqz p2, :cond_0

    .line 76
    sget-object v11, Lcom/android/internal/R$styleable;->DateTimeWheel:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 77
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->noYearWheel:Z

    .line 78
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->noYearWheel:Z

    if-eqz v11, :cond_2

    .line 82
    const v11, 0x1020416

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 83
    .local v10, "yearWapper":Landroid/view/View;
    const v11, 0x1020418

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dayWrapper:Landroid/view/View;

    .line 84
    const v11, 0x102041a

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hoursWrapper:Landroid/view/View;

    .line 85
    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .end local v10    # "yearWapper":Landroid/view/View;
    :goto_0
    const v11, 0x1020419

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    .line 110
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 111
    new-instance v4, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v11}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 112
    .local v4, "dayAdapter":Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 114
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->noYearWheel:Z

    if-eqz v11, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11}, Lcom/letv/leui/widget/picker/WheelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->vto:Landroid/view/ViewTreeObserver;

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->vto:Landroid/view/ViewTreeObserver;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$2;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 130
    :cond_1
    const v11, 0x102041c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    .line 131
    new-instance v5, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const-string/jumbo v11, "%02d"

    const/4 v12, 0x0

    const/16 v13, 0x17

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v12, v13, v11}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 132
    .local v5, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v5}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 135
    const v11, 0x102041d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    .line 136
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    const-string/jumbo v11, "%02d"

    const/4 v12, 0x0

    const/16 v13, 0x3b

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v12, v13, v11}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 137
    .local v8, "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "language":Ljava/lang/String;
    const-string/jumbo v11, "en"

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 143
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    const-string/jumbo v12, "AM"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 145
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    const-string/jumbo v12, "PM"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 149
    :goto_1
    const v11, 0x102041b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    .line 150
    new-instance v3, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v11}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 151
    .local v3, "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v3}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/16 v12, 0x64

    iput v12, v11, Lcom/letv/leui/widget/picker/WheelView;->scrollLimit:I

    .line 158
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 162
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    .line 163
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateAmPmControl()V

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateHourControl()V

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$3;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$4;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$5;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$6;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 67
    return-void

    .line 87
    .end local v3    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .end local v4    # "dayAdapter":Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;
    .end local v5    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    .end local v7    # "language":Ljava/lang/String;
    .end local v8    # "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->initYear()V

    .line 88
    const v11, 0x1020417

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/letv/leui/widget/picker/DateTimeWheel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    .line 89
    new-instance v9, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v11}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 90
    .local v9, "yearAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 91
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v11, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/letv/leui/widget/picker/WheelView;->setPadding(IIII)V

    .line 93
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 94
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v12, Lcom/letv/leui/widget/picker/DateTimeWheel$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel$1;-><init>(Lcom/letv/leui/widget/picker/DateTimeWheel;)V

    invoke-virtual {v11, v12}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    goto/16 :goto_0

    .line 147
    .end local v9    # "yearAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .restart local v4    # "dayAdapter":Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;
    .restart local v5    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    .restart local v7    # "language":Ljava/lang/String;
    .restart local v8    # "minAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    :cond_3
    new-instance v11, Ljava/text/DateFormatSymbols;

    invoke-direct {v11}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v11}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mAmPmStrings:[Ljava/lang/String;

    goto/16 :goto_1

    .line 163
    .restart local v3    # "am_pm_WheelAdapter":Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    .line 214
    sget v0, Lcom/letv/leui/widget/picker/DateTimeWheel;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initYear()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I

    .line 224
    iget v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->curYear:I

    add-int/lit16 v1, v1, -0x7b2

    iput v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearIndex:I

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearList:Ljava/util/ArrayList;

    .line 226
    const/16 v0, 0x7b2

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v0, v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->yearList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 301
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 5
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 310
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 311
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 314
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_4

    .line 317
    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    .line 318
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 319
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 324
    :goto_0
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateAmPmControl()V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 327
    if-eqz p2, :cond_3

    .line 328
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    .line 308
    :cond_3
    return-void

    .line 321
    :cond_4
    iput-boolean v4, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    .line 322
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, v3}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto :goto_0
.end method

.method private setCurrentMin(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentMin"    # Ljava/lang/Integer;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 334
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 335
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    .line 332
    return-void
.end method

.method private updateAmPmControl()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 339
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 347
    .local v0, "index":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 349
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 355
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "%02d"

    const/16 v4, 0x17

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 357
    .local v1, "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 362
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 353
    return-void

    .line 359
    .end local v1    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    :cond_0
    new-instance v1, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "%02d"

    const/16 v4, 0xb

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 360
    .restart local v1    # "hourAdapter":Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

    .line 255
    return-void
.end method

.method public getAmPmWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    .line 273
    .local v0, "currentHour":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 275
    :cond_0
    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 276
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 278
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDayWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getHoursWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getIsLunar()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->isLunar:Z

    return v0
.end method

.method public getMinsWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYearWheelView()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onUpdateDate()V
    .locals 7

    .prologue
    .line 384
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 385
    .local v2, "year":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 386
    .local v3, "month":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 387
    .local v4, "day":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 388
    .local v5, "hourOfDay":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 389
    .local v6, "minute":I
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/letv/leui/widget/picker/DateTimeWheel$OnDateChangedListener;->onDateChanged(Lcom/letv/leui/widget/picker/DateTimeWheel;IIIII)V

    .line 383
    return-void

    .line 392
    :cond_0
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCalendar(Ljava/util/Calendar;Z)V

    .line 395
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;Z)V
    .locals 4
    .param p1, "cal"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 401
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setFirstItemUnCyclic(I)V

    .line 402
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v2, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/Calendar;)V

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 403
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v0

    .line 406
    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->calendar:Ljava/util/Calendar;

    .line 407
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    .line 408
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentHour(Ljava/lang/Integer;)V

    .line 409
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/picker/DateTimeWheel;->setCurrentMin(Ljava/lang/Integer;)V

    .line 410
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateAmPmControl()V

    .line 411
    iput-boolean p2, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->isLunar:Z

    .line 412
    instance-of v1, v0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_0

    .line 413
    check-cast v0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->setIsLunar(Z)V

    .line 399
    :cond_0
    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->year:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 452
    :cond_4
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 426
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    return-void

    .line 428
    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->dateFormat:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v1}, Lcom/letv/leui/widget/picker/WheelView;->getViewAdapter()Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;

    move-result-object v0

    .line 430
    .local v0, "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    instance-of v1, v0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    if-eqz v1, :cond_2

    .line 431
    check-cast v0, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;

    .end local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/adapters/DayArrayAdapter;->setDateFormat(Ljava/lang/String;)V

    .line 425
    return-void

    .line 433
    .restart local v0    # "adapter":Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;
    :cond_2
    return-void
.end method

.method public setIs24Hours(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    if-ne v0, p1, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mIs24HourView:Ljava/lang/Boolean;

    .line 264
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateHourControl()V

    .line 265
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->updateAmPmControl()V

    .line 266
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->onUpdateDate()V

    .line 259
    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->day:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 418
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->hours:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 419
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->mins:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    .line 420
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateTimeWheel;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateTimeWheel;->am_pm:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setTextSize(I)V

    goto :goto_0
.end method
