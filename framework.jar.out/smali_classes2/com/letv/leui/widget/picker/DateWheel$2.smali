.class Lcom/letv/leui/widget/picker/DateWheel$2;
.super Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.source "DateWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/picker/DateWheel;->initAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/DateWheel;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/DateWheel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/picker/DateWheel;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 7
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 320
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {p1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v4

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->-set7(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 321
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->-set1(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 323
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get21(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    sget v4, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int v2, v3, v4

    .line 324
    .local v2, "year":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 325
    .local v1, "i":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get11(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 326
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get12(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get9(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 328
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v5}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->-set1(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get12(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get9(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 332
    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3, v2, v1}, Lcom/letv/leui/widget/picker/DateWheel;->-wrap0(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 333
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 338
    :goto_0
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v4, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v5}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v6}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->-set3(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 339
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get3(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 340
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 366
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v3}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    .line 319
    return-void

    .line 331
    :cond_2
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v1, v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v2, v4}, Lcom/letv/leui/widget/picker/DateWheel;->-wrap1(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 336
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto :goto_0

    .line 343
    :cond_3
    const/4 v0, 0x0

    .line 344
    .local v0, "days_num":I
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_7

    .line 345
    :cond_4
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get13(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    .line 354
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 355
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_a

    .line 356
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 357
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_6

    .line 358
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->-set4(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 362
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v4, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v5, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v5}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v6}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lcom/letv/leui/widget/picker/DateWheel;->-set3(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 363
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get3(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 364
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 347
    :cond_7
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 348
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get13(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto/16 :goto_2

    .line 349
    :cond_8
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 350
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get13(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto/16 :goto_2

    .line 351
    :cond_9
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 352
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get13(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    goto/16 :goto_2

    .line 359
    :cond_a
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v0, :cond_6

    .line 360
    iget-object v3, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v3}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/picker/DateWheel$2;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v4}, Lcom/letv/leui/widget/picker/DateWheel;->-get20(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10405c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method
