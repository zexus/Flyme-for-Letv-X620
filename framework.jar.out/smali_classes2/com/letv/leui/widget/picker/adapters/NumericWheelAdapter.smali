.class public Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.source "NumericWheelAdapter.java"


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private format:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "isVertical"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 72
    iput p2, p0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->minValue:I

    .line 73
    iput p3, p0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->maxValue:I

    .line 74
    iput-object p4, p0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    .line 75
    invoke-super {p0, p5}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->setOritentation(Z)V

    .line 70
    return-void
.end method


# virtual methods
.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 80
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 81
    iget v1, p0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->minValue:I

    add-int v0, v1, p1

    .line 82
    .local v0, "value":I
    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 85
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    .end local v0    # "value":I
    :cond_1
    return-object v2
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/letv/leui/widget/picker/adapters/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
