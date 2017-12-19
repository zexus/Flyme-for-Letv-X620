.class public Lcom/letv/leui/widget/picker/adapters/AdapterWheel;
.super Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;
.source "AdapterWheel.java"


# instance fields
.field private adapter:Lcom/letv/leui/widget/picker/WheelAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/picker/WheelAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/letv/leui/widget/picker/WheelAdapter;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/picker/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/letv/leui/widget/picker/adapters/AdapterWheel;->adapter:Lcom/letv/leui/widget/picker/WheelAdapter;

    .line 19
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/letv/leui/widget/picker/WheelAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AdapterWheel;->adapter:Lcom/letv/leui/widget/picker/WheelAdapter;

    return-object v0
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AdapterWheel;->adapter:Lcom/letv/leui/widget/picker/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/letv/leui/widget/picker/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/letv/leui/widget/picker/adapters/AdapterWheel;->adapter:Lcom/letv/leui/widget/picker/WheelAdapter;

    invoke-interface {v0}, Lcom/letv/leui/widget/picker/WheelAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method
