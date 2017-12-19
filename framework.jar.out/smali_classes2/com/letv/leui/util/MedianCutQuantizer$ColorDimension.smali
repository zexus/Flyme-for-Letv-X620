.class final enum Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;
.super Ljava/lang/Enum;
.source "MedianCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/MedianCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ColorDimension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

.field public static final enum BLUE:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

.field public static final enum GREEN:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

.field public static final enum RED:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;


# instance fields
.field public final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    new-instance v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    const-string/jumbo v1, "RED"

    new-instance v2, Lcom/letv/leui/util/MedianCutQuantizer$redComparator;

    invoke-direct {v2}, Lcom/letv/leui/util/MedianCutQuantizer$redComparator;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->RED:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    .line 355
    new-instance v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    const-string/jumbo v1, "GREEN"

    new-instance v2, Lcom/letv/leui/util/MedianCutQuantizer$grnComparator;

    invoke-direct {v2}, Lcom/letv/leui/util/MedianCutQuantizer$grnComparator;-><init>()V

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->GREEN:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    .line 356
    new-instance v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    const-string/jumbo v1, "BLUE"

    new-instance v2, Lcom/letv/leui/util/MedianCutQuantizer$bluComparator;

    invoke-direct {v2}, Lcom/letv/leui/util/MedianCutQuantizer$bluComparator;-><init>()V

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;-><init>(Ljava/lang/String;ILjava/util/Comparator;)V

    sput-object v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->BLUE:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    .line 353
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    sget-object v1, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->RED:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    aput-object v1, v0, v3

    sget-object v1, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->GREEN:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->BLUE:Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    aput-object v1, v0, v5

    sput-object v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->$VALUES:[Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p3, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/letv/leui/util/MedianCutQuantizer$ColorNode;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 361
    iput-object p3, p0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->comparator:Ljava/util/Comparator;

    .line 360
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 353
    const-class v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    return-object v0
.end method

.method public static values()[Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;->$VALUES:[Lcom/letv/leui/util/MedianCutQuantizer$ColorDimension;

    return-object v0
.end method
