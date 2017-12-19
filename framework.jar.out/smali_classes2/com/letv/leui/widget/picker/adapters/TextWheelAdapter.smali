.class public Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.source "TextWheelAdapter.java"


# instance fields
.field private strContents:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strArray"    # [Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Z)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strArray"    # [Ljava/lang/String;
    .param p3, "isVertical"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p3}, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->setOritentation(Z)V

    .line 21
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 38
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getMaximumLength()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    iget-object v4, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 53
    return v5

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->getItemsCount()I

    move-result v0

    .line 56
    .local v0, "count":I
    iget-object v4, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 57
    .local v3, "len_start":I
    move v2, v3

    .line 58
    .local v2, "len_max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 59
    iget-object v4, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_1

    iget-object v4, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_2
    return v2
.end method

.method public getStrContents()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    return-object v0
.end method

.method public setStrContents([Ljava/lang/String;)V
    .locals 0
    .param p1, "strContents"    # [Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/letv/leui/widget/picker/adapters/TextWheelAdapter;->strContents:[Ljava/lang/String;

    .line 32
    return-void
.end method
