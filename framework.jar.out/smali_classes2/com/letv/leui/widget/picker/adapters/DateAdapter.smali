.class public Lcom/letv/leui/widget/picker/adapters/DateAdapter;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.source "DateAdapter.java"


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v0, 0x10900e7

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 23
    iput-object p2, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 27
    const v0, 0x10900e7

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;II)V

    .line 28
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->stringToArrayList([Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private stringToArrayList([Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # [Ljava/lang/String;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 54
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method


# virtual methods
.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Landroid/view/View;
    const v2, 0x10200b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, "textCity":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-object v1
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/DateAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
