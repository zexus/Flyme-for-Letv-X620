.class public Lcom/letv/leui/widget/picker/DateWheel;
.super Landroid/widget/LinearLayout;
.source "DateWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;,
        Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;
    }
.end annotation


# static fields
.field public static MAX_YEAR:I

.field public static MIN_YEAR:I


# instance fields
.field private context:Landroid/content/Context;

.field private curDay:I

.field private curMonth:I

.field private curYear:I

.field current:Z

.field private dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

.field private dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

.field private dayIndex:I

.field private dayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dayView:Lcom/letv/leui/widget/picker/WheelView;

.field private days:[Ljava/lang/String;

.field private days_en:[Ljava/lang/String;

.field private days_zh:[Ljava/lang/String;

.field private initDay:I

.field private initMonth:I

.field private initYear:I

.field private isEnglish:Z

.field private isLunar:Z

.field private isReturnLunar:Z

.field private isTimed:Z

.field private lunar:Lcom/letv/leui/pim/lunar/Lunar;

.field private lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

.field private mCalendar:Ljava/util/Calendar;

.field private mLeapMonth:I

.field private mTimedDate:Ljava/util/Calendar;

.field private monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

.field private monthIndex:I

.field private monthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private monthView:Lcom/letv/leui/widget/picker/WheelView;

.field private months:[Ljava/lang/String;

.field pattern:Ljava/lang/String;

.field private res:Landroid/content/res/Resources;

.field private yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

.field private yearIndex:I

.field private yearList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yearView:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method static synthetic -get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    return v0
.end method

.method static synthetic -get10(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    return v0
.end method

.method static synthetic -get11(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    return v0
.end method

.method static synthetic -get12(Lcom/letv/leui/widget/picker/DateWheel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    return v0
.end method

.method static synthetic -get13(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    return-object v0
.end method

.method static synthetic -get14(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    return v0
.end method

.method static synthetic -get15(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object v0
.end method

.method static synthetic -get16(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    return v0
.end method

.method static synthetic -get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get18(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic -get19(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    return v0
.end method

.method static synthetic -get20(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get21(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    return v0
.end method

.method static synthetic -get22(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    return v0
.end method

.method static synthetic -get8(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    return v0
.end method

.method static synthetic -get9(Lcom/letv/leui/widget/picker/DateWheel;)I
    .locals 1

    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    return v0
.end method

.method static synthetic -set0(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    return p1
.end method

.method static synthetic -set1(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    return p1
.end method

.method static synthetic -set2(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    return p1
.end method

.method static synthetic -set3(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object p1
.end method

.method static synthetic -set4(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    return p1
.end method

.method static synthetic -set5(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    return p1
.end method

.method static synthetic -set6(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;
    .locals 0

    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    return-object p1
.end method

.method static synthetic -set7(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    return p1
.end method

.method static synthetic -set8(Lcom/letv/leui/widget/picker/DateWheel;I)I
    .locals 0

    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/letv/leui/widget/picker/DateWheel;II)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/picker/DateWheel;II)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyInitDayView(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/letv/leui/widget/picker/DateWheel;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0
    .param p1, "arrayList"    # Ljava/util/ArrayList;
    .param p2, "str"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x76c

    sput v0, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .line 48
    const/16 v0, 0x7f5

    sput v0, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 42
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 56
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    .line 57
    const-string/jumbo v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 103
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 42
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 56
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    .line 57
    const-string/jumbo v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 108
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 42
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 56
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->current:Z

    .line 57
    const-string/jumbo v0, "/"

    iput-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 113
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initViews()V

    .line 111
    return-void
.end method

.method private getDayIndex(III)I
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v1, 0x0

    .line 681
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 682
    :cond_0
    return v1

    .line 685
    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v0, :cond_3

    .line 686
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p3, v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 689
    :cond_2
    add-int/lit8 v0, p3, -0x1

    return v0

    .line 693
    :cond_3
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 695
    :cond_4
    const/16 v0, 0x1f

    if-gt p3, v0, :cond_8

    .line 696
    add-int/lit8 v0, p3, -0x1

    return v0

    .line 693
    :cond_5
    const/4 v0, 0x5

    if-eq p2, v0, :cond_4

    const/4 v0, 0x7

    if-eq p2, v0, :cond_4

    const/16 v0, 0x8

    if-eq p2, v0, :cond_4

    const/16 v0, 0xa

    if-eq p2, v0, :cond_4

    const/16 v0, 0xc

    if-eq p2, v0, :cond_4

    .line 699
    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    .line 700
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 702
    const/16 v0, 0x1d

    if-gt p3, v0, :cond_8

    .line 703
    add-int/lit8 v0, p3, -0x1

    return v0

    .line 706
    :cond_6
    const/16 v0, 0x1c

    if-gt p3, v0, :cond_8

    .line 707
    add-int/lit8 v0, p3, -0x1

    return v0

    .line 711
    :cond_7
    const/16 v0, 0x1e

    if-gt p3, v0, :cond_8

    .line 712
    add-int/lit8 v0, p3, -0x1

    return v0

    .line 715
    :cond_8
    return v1
.end method

.method private initAction()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$1;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 317
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$2;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 370
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    new-instance v1, Lcom/letv/leui/widget/picker/DateWheel$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/picker/DateWheel$3;-><init>(Lcom/letv/leui/widget/picker/DateWheel;)V

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->addChangingListener(Lcom/letv/leui/widget/picker/OnWheelChangedListener;)V

    .line 209
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/16 v7, 0x1f

    const/4 v5, 0x1

    const/4 v6, 0x5

    .line 180
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 181
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x10900a2

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 182
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    .line 183
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    .line 186
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "language":Ljava/lang/String;
    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    .line 193
    :goto_0
    const v3, 0x1020417

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    .line 194
    const v3, 0x102041e

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    .line 195
    const v3, 0x1020419

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/picker/DateWheel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/letv/leui/widget/picker/WheelView;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    .line 196
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x1070050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x1070053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    .line 199
    new-array v3, v7, [Ljava/lang/String;

    iput-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    .line 200
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, v7, :cond_1

    .line 201
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    .end local v0    # "i":I
    :cond_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    goto :goto_0

    .line 202
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 203
    invoke-direct {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initAction()V

    .line 204
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 205
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 206
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setVisibleItems(I)V

    .line 178
    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 3
    .param p0, "year"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 392
    rem-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p0, 0x64

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    rem-int/lit16 v2, p0, 0x190

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isLeapYear(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 387
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, "year":I
    rem-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_1

    rem-int/lit8 v3, v0, 0x64

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    rem-int/lit16 v3, v0, 0x190

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private modifyDayView(II)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/16 v6, 0x1e

    const/16 v5, 0xc

    const/16 v3, 0x1d

    const/16 v2, 0x1c

    .line 813
    iget-boolean v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v4, :cond_7

    .line 814
    const/4 v0, 0x0

    .line 815
    .local v0, "days_num":I
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-le v2, v5, :cond_3

    .line 816
    :cond_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    .line 825
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 826
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_6

    .line 827
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 828
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_2

    .line 829
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 833
    :cond_2
    :goto_1
    new-instance v2, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 834
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 835
    return-void

    .line 818
    :cond_3
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ne v2, v3, :cond_4

    .line 819
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v2, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto :goto_0

    .line 820
    :cond_4
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v2, v3, :cond_5

    .line 821
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto :goto_0

    .line 822
    :cond_5
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-le v2, v3, :cond_1

    .line 823
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v2, p1, v3}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto :goto_0

    .line 830
    :cond_6
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 831
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v4, 0x10405c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 838
    .end local v0    # "days_num":I
    :cond_7
    const/4 v0, 0x0

    .line 839
    .restart local v0    # "days_num":I
    const/4 v4, 0x1

    if-eq p2, v4, :cond_8

    const/4 v4, 0x3

    if-ne p2, v4, :cond_a

    .line 841
    :cond_8
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_b

    .line 842
    const/16 v0, 0x1f

    .line 843
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 871
    :goto_2
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 872
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 874
    :cond_9
    iget-boolean v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v2, :cond_14

    .line 875
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_15

    .line 876
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_en:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 839
    .end local v1    # "i":I
    :cond_a
    const/4 v4, 0x5

    if-eq p2, v4, :cond_8

    const/4 v4, 0x7

    if-eq p2, v4, :cond_8

    const/16 v4, 0x8

    if-eq p2, v4, :cond_8

    const/16 v4, 0xa

    if-eq p2, v4, :cond_8

    if-eq p2, v5, :cond_8

    .line 846
    const/4 v4, 0x2

    if-ne p2, v4, :cond_11

    .line 847
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 849
    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v3, :cond_d

    .line 850
    const/16 v0, 0x1d

    .line 851
    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v4, v3, :cond_c

    :goto_4
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 852
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_2

    .line 845
    :cond_b
    return-void

    .line 851
    :cond_c
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_4

    .line 854
    :cond_d
    return-void

    .line 856
    :cond_e
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_10

    .line 857
    const/16 v0, 0x1c

    .line 858
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v3, v2, :cond_f

    const/16 v2, 0x1b

    :goto_5
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 859
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_2

    .line 858
    :cond_f
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_5

    .line 861
    :cond_10
    return-void

    .line 864
    :cond_11
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v6, :cond_13

    .line 865
    const/16 v0, 0x1e

    .line 866
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-le v2, v6, :cond_12

    move v2, v3

    :goto_6
    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 867
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto/16 :goto_2

    .line 866
    :cond_12
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_6

    .line 869
    :cond_13
    return-void

    .line 878
    :cond_14
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 879
    iget-object v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 811
    :cond_15
    return-void
.end method

.method private modifyInitDayView(II)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "days_num":I
    add-int/lit8 v1, p2, 0x1

    .line 886
    .local v1, "i":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 887
    :cond_0
    const/16 v0, 0x1f

    .line 897
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 898
    iget-boolean v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v3, :cond_4

    .line 899
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 900
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 886
    .end local v2    # "j":I
    :cond_1
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    .line 888
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 889
    invoke-static {p1}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 890
    const/16 v0, 0x1d

    goto :goto_0

    .line 892
    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    .line 895
    :cond_3
    const/16 v0, 0x1e

    goto :goto_0

    .line 903
    :cond_4
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 904
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 907
    :cond_5
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    if-gt v3, v0, :cond_6

    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    if-ge v3, v4, :cond_7

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iput v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 908
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 883
    return-void

    .line 907
    :cond_7
    iget v3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    sub-int/2addr v3, v4

    goto :goto_3
.end method

.method private stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 2
    .param p2, "str"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 790
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 792
    :cond_0
    if-eqz p2, :cond_1

    .line 793
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 794
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addOnDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;)V
    .locals 0
    .param p1, "onDateChangedListener"    # Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    .line 121
    return-void
.end method

.method public getDay()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getDayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsLunar()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    return v0
.end method

.method public getIsTimed()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    return v0
.end method

.method public getMonth()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getMonthList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getYear()Lcom/letv/leui/widget/picker/WheelView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    return-object v0
.end method

.method public getYearList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initData()V
    .locals 12

    .prologue
    .line 402
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v8, v9, :cond_0

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-ge v8, v9, :cond_1

    .line 403
    :cond_0
    return-void

    .line 404
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    .line 405
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    .line 406
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    .line 407
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    .line 409
    .local v3, "isSameDate":Z
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    .line 410
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    .line 411
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    .line 413
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_2

    .line 414
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    sput v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .line 422
    :cond_2
    sget v2, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .local v2, "i":I
    :goto_0
    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt v2, v8, :cond_4

    .line 423
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v8, :cond_3

    .line 424
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v11, 0x10405bf

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_3
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 432
    :cond_4
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-nez v8, :cond_14

    .line 433
    if-eqz v3, :cond_5

    .line 434
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 435
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 436
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 442
    :goto_2
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 443
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_9

    .line 444
    if-eqz v3, :cond_6

    .line 445
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 463
    :goto_3
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    if-nez v8, :cond_b

    .line 464
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_a

    .line 465
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    :goto_4
    const/16 v8, 0xc

    if-ge v2, v8, :cond_c

    .line 466
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 438
    :cond_5
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 439
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 440
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    goto :goto_2

    .line 447
    :cond_6
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    if-nez v8, :cond_8

    .line 448
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 449
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    if-nez v8, :cond_7

    .line 450
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_3

    .line 452
    :cond_7
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_3

    .line 454
    :cond_8
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 455
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_3

    .line 459
    :cond_9
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 460
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_3

    .line 468
    :cond_a
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    :goto_5
    const/16 v8, 0xc

    if-ge v2, v8, :cond_c

    .line 469
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 472
    :cond_b
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 473
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 476
    :cond_c
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int v7, v8, v9

    .line 477
    .local v7, "year":I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    add-int/lit8 v4, v8, 0x1

    .line 478
    .local v4, "month":I
    const/4 v1, 0x0

    .line 479
    .local v1, "days_num":I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_e

    .line 480
    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->isLeapYear(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 481
    const/16 v1, 0x1d

    .line 489
    :goto_6
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_12

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_12

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    if-ne v8, v9, :cond_12

    .line 490
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_11

    .line 491
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v8, -0x1

    :goto_7
    if-ge v2, v1, :cond_1d

    .line 492
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v9, v2, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 483
    :cond_d
    const/16 v1, 0x1c

    goto :goto_6

    .line 484
    :cond_e
    const/4 v8, 0x1

    if-eq v4, v8, :cond_f

    const/4 v8, 0x3

    if-ne v4, v8, :cond_10

    .line 485
    :cond_f
    const/16 v1, 0x1f

    goto :goto_6

    .line 484
    :cond_10
    const/4 v8, 0x5

    if-eq v4, v8, :cond_f

    const/4 v8, 0x7

    if-eq v4, v8, :cond_f

    const/16 v8, 0x8

    if-eq v4, v8, :cond_f

    const/16 v8, 0xa

    if-eq v4, v8, :cond_f

    const/16 v8, 0xc

    if-eq v4, v8, :cond_f

    .line 487
    const/16 v1, 0x1e

    goto :goto_6

    .line 494
    :cond_11
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->initDay:I

    add-int/lit8 v2, v8, -0x1

    :goto_8
    if-ge v2, v1, :cond_1d

    .line 495
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 498
    :cond_12
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isEnglish:Z

    if-eqz v8, :cond_13

    .line 499
    const/4 v2, 0x1

    :goto_9
    if-gt v2, v1, :cond_1d

    .line 500
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 502
    :cond_13
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1d

    .line 503
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days_zh:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 509
    .end local v1    # "days_num":I
    .end local v4    # "month":I
    .end local v7    # "year":I
    :cond_14
    invoke-static {}, Lcom/letv/leui/pim/lunar/Lunar;->getInstance()Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    .line 512
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->setDate(Ljava/util/Calendar;)V

    .line 517
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 518
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-lt v8, v9, :cond_15

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-le v8, v9, :cond_17

    .line 519
    :cond_15
    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 520
    const/4 v8, 0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 527
    :goto_b
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    .line 528
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmLeapMonth()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 529
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_16

    .line 530
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 531
    :cond_16
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v8, :cond_19

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v9, 0xc

    if-gt v8, v9, :cond_19

    .line 532
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x10405be

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, "run":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    iget v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, "str":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_c
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v2, v8, :cond_18

    .line 535
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 522
    .end local v5    # "run":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_17
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 523
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmMonth()I

    move-result v8

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 524
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmDay()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    goto :goto_b

    .line 536
    .restart local v5    # "run":Ljava/lang/String;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_18
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    :goto_d
    const/16 v8, 0xc

    if-ge v2, v8, :cond_1a

    .line 538
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 541
    .end local v5    # "run":Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_19
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 543
    :cond_1a
    const/4 v0, 0x0

    .line 544
    .local v0, "dayofMonth":I
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-eq v8, v9, :cond_1f

    .line 545
    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    sget v10, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-ge v8, v10, :cond_1e

    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    :goto_e
    iget v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v9, v8, v10}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    .line 549
    :goto_f
    const/16 v8, 0x1e

    if-ne v8, v0, :cond_20

    .line 550
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    .line 553
    :cond_1b
    :goto_10
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 554
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v8, :cond_1c

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v9, 0xc

    if-le v8, v9, :cond_21

    .line 555
    :cond_1c
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 559
    .end local v0    # "dayofMonth":I
    :cond_1d
    :goto_11
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 560
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 561
    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 562
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 563
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 564
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayAdapter:Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 565
    iget-boolean v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-eqz v8, :cond_24

    .line 566
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 567
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_22

    .line 568
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 571
    :goto_12
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initYear:I

    if-ne v8, v9, :cond_23

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->initMonth:I

    if-ne v8, v9, :cond_23

    .line 572
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 584
    :goto_13
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 585
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 586
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 400
    return-void

    .line 545
    .restart local v0    # "dayofMonth":I
    :cond_1e
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v8

    goto/16 :goto_e

    .line 547
    :cond_1f
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v9}, Lcom/letv/leui/pim/lunar/Lunar;->getmYear()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto/16 :goto_f

    .line 551
    :cond_20
    const/16 v8, 0x1d

    if-ne v8, v0, :cond_1b

    .line 552
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v9, 0x1070054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->days:[Ljava/lang/String;

    goto/16 :goto_10

    .line 554
    :cond_21
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v9, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v8, v9, :cond_1d

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v8}, Lcom/letv/leui/pim/lunar/Lunar;->getmLeap()Z

    move-result v8

    if-eqz v8, :cond_1c

    goto/16 :goto_11

    .line 570
    .end local v0    # "dayofMonth":I
    :cond_22
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_12

    .line 574
    :cond_23
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_13

    .line 576
    :cond_24
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 577
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 578
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_13
.end method

.method public isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 6
    .param p1, "a"    # Ljava/util/Calendar;
    .param p2, "b"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 396
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 397
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 396
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 397
    goto :goto_0

    :cond_1
    move v0, v1

    .line 396
    goto :goto_0
.end method

.method public onUpdateDate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v6, 0x1e

    const/16 v5, 0xc

    .line 720
    const/4 v0, 0x0

    .local v0, "day":I
    const/4 v2, 0x0

    .local v2, "month":I
    const/4 v4, 0x0

    .line 721
    .local v4, "year":I
    iget-boolean v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    if-eqz v7, :cond_3

    .line 722
    :cond_0
    iget v4, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 723
    iget v2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 724
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 750
    :goto_0
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    if-eqz v5, :cond_d

    .line 751
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v0, v5, :cond_1

    .line 752
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 754
    :cond_1
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 755
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 757
    :cond_2
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearList:Ljava/util/ArrayList;

    sget v6, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 758
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayList:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 757
    invoke-interface {v8, p0, v5, v6, v7}, Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;->onDateChange(Lcom/letv/leui/widget/picker/DateWheel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void

    .line 727
    :cond_3
    const/4 v1, 0x0

    .line 728
    .local v1, "isLeapMonth":Z
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    invoke-virtual {v7, v8}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v7

    iput v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 729
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lt v7, v9, :cond_4

    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v7, v5, :cond_4

    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ne v7, v8, :cond_4

    .line 730
    const/4 v1, 0x1

    .line 731
    :cond_4
    const/4 v7, 0x3

    new-array v3, v7, [I

    .line 732
    .local v3, "solarInfo":[I
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lt v7, v9, :cond_a

    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-gt v7, v5, :cond_a

    .line 733
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v7, v8, :cond_7

    .line 734
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v8, v8, 0x1

    if-le v8, v5, :cond_5

    .line 735
    :goto_1
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v8, v8, 0x1

    if-le v8, v6, :cond_6

    .line 734
    :goto_2
    invoke-static {v7, v5, v6, v1}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v3

    .line 745
    :goto_3
    const/4 v5, 0x0

    aget v4, v3, v5

    .line 746
    aget v5, v3, v9

    add-int/lit8 v2, v5, -0x1

    .line 747
    const/4 v5, 0x2

    aget v0, v3, v5

    goto/16 :goto_0

    .line 735
    :cond_5
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 737
    :cond_7
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    if-le v8, v5, :cond_8

    .line 738
    :goto_4
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v8, v8, 0x1

    if-le v8, v6, :cond_9

    .line 737
    :goto_5
    invoke-static {v7, v5, v6, v1}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v3

    goto :goto_3

    :cond_8
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    goto :goto_4

    .line 738
    :cond_9
    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 741
    :cond_a
    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v8, v8, 0x1

    if-le v8, v5, :cond_b

    .line 742
    :goto_6
    iget v8, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v8, v8, 0x1

    if-le v8, v6, :cond_c

    .line 741
    :goto_7
    invoke-static {v7, v5, v6, v1}, Lcom/letv/leui/widget/picker/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v3

    goto :goto_3

    :cond_b
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 742
    :cond_c
    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 762
    .end local v1    # "isLeapMonth":Z
    .end local v3    # "solarInfo":[I
    :cond_d
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    if-eqz v5, :cond_e

    .line 763
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;

    invoke-interface {v5, p0, v4, v2, v0}, Lcom/letv/leui/widget/picker/DateWheel$OnDateChangedListener;->onDateChanged(Lcom/letv/leui/widget/picker/DateWheel;III)V

    .line 718
    return-void

    .line 765
    :cond_e
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;Z)V

    .line 125
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;Z)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZ)V

    .line 129
    return-void
.end method

.method public setCalendar(Ljava/util/Calendar;ZZ)V
    .locals 2
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z
    .param p3, "istimed"    # Z

    .prologue
    .line 151
    if-eqz p3, :cond_2

    .line 152
    iget-object v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1, v1}, Lcom/letv/leui/widget/picker/DateWheel;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    .line 153
    .local v0, "isSameDate":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-ne p2, v1, :cond_1

    iget-boolean v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    if-ne p3, v1, :cond_1

    .line 154
    :cond_0
    return-void

    .line 153
    :cond_1
    if-nez p2, :cond_0

    .line 155
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    .line 161
    .end local v0    # "isSameDate":Z
    :goto_0
    iput-boolean p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    .line 162
    iput-boolean p3, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 163
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 148
    return-void

    .line 158
    :cond_2
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mTimedDate:Ljava/util/Calendar;

    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public setCalendar(Ljava/util/Calendar;ZZZ)V
    .locals 0
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "islunar"    # Z
    .param p3, "istimed"    # Z
    .param p4, "isReturnLunar"    # Z

    .prologue
    .line 144
    iput-boolean p4, p0, Lcom/letv/leui/widget/picker/DateWheel;->isReturnLunar:Z

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/DateWheel;->setCalendar(Ljava/util/Calendar;ZZ)V

    .line 143
    return-void
.end method

.method public setCenterItemTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/picker/WheelView;->setCenterTextColor(I)V

    .line 802
    :cond_2
    return-void
.end method

.method public setIsTimed(Z)V
    .locals 1
    .param p1, "istimed"    # Z

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v0, :cond_0

    .line 168
    return-void

    .line 170
    :cond_0
    iput-boolean p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->isTimed:Z

    .line 171
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 166
    return-void
.end method

.method public setMaxYear(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 79
    sput p1, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    .line 80
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 78
    return-void
.end method

.method public setMinYear(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 74
    sput p1, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    .line 75
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->initData()V

    .line 73
    return-void
.end method

.method public setOnLunarDateChangedListener(Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunarDateChangedListener:Lcom/letv/leui/widget/picker/DateWheel$OnLunarDateChangedListener;

    .line 774
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->pattern:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/picker/DateWheel;->updateDate(IIIZ)V

    .line 670
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "b"    # Z

    .prologue
    .line 605
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 606
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 607
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 608
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 610
    :cond_0
    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MAX_YEAR:I

    if-gt p1, v5, :cond_1

    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    if-ge p1, v5, :cond_2

    .line 611
    :cond_1
    return-void

    .line 620
    :cond_2
    iget-boolean v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->isLunar:Z

    if-eqz v5, :cond_a

    .line 621
    invoke-static {p1, p2, p3}, Lcom/letv/leui/widget/picker/LunarCalendar;->solarToLunar(III)[I

    move-result-object v2

    .line 622
    .local v2, "lunarInfo":[I
    const/4 v5, 0x0

    aget p1, v2, v5

    .line 623
    const/4 v5, 0x1

    aget p2, v2, v5

    .line 624
    const/4 v5, 0x2

    aget p3, v2, v5

    .line 625
    const/4 v5, 0x4

    aget v5, v2, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    aget v5, v2, v5

    if-ge p2, v5, :cond_4

    const/4 v5, 0x3

    aget v5, v2, v5

    if-nez v5, :cond_4

    .line 626
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 628
    :cond_4
    if-eqz p4, :cond_6

    .line 629
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->lunar:Lcom/letv/leui/pim/lunar/Lunar;

    invoke-virtual {v5, p1}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v1

    .line 630
    .local v1, "leapMonth":I
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-eq v5, v1, :cond_6

    .line 631
    iput v1, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    .line 632
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-lez v5, :cond_5

    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    const/16 v6, 0xc

    if-le v5, v6, :cond_7

    .line 633
    :cond_5
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_6

    .line 634
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/letv/leui/widget/picker/DateWheel;->stringToArrayList(Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 650
    .end local v1    # "leapMonth":I
    :cond_6
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 651
    iput p2, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    .line 652
    add-int/lit8 p2, p2, 0x1

    .line 657
    .end local v2    # "lunarInfo":[I
    :goto_0
    iput p1, p0, Lcom/letv/leui/widget/picker/DateWheel;->curYear:I

    .line 658
    iput p3, p0, Lcom/letv/leui/widget/picker/DateWheel;->curDay:I

    .line 659
    sget v5, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    sub-int v5, p1, v5

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    .line 660
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->yearIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 661
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 662
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/picker/DateWheel;->modifyDayView(II)V

    .line 663
    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/DateWheel;->getDayIndex(III)I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    .line 664
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayView:Lcom/letv/leui/widget/picker/WheelView;

    iget v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->dayIndex:I

    invoke-virtual {v5, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 666
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    .line 603
    return-void

    .line 637
    .restart local v1    # "leapMonth":I
    .restart local v2    # "lunarInfo":[I
    :cond_7
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 638
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 639
    :cond_8
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->res:Landroid/content/res/Resources;

    const v6, 0x10405be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "run":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    iget v7, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    if-ge v0, v5, :cond_9

    .line 642
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 643
    :cond_9
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    iget v0, p0, Lcom/letv/leui/widget/picker/DateWheel;->mLeapMonth:I

    :goto_2
    const/16 v5, 0xc

    if-ge v0, v5, :cond_6

    .line 645
    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel;->months:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 654
    .end local v0    # "i":I
    .end local v1    # "leapMonth":I
    .end local v2    # "lunarInfo":[I
    .end local v3    # "run":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :cond_a
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->curMonth:I

    .line 655
    add-int/lit8 v5, p2, -0x1

    iput v5, p0, Lcom/letv/leui/widget/picker/DateWheel;->monthIndex:I

    goto/16 :goto_0
.end method
