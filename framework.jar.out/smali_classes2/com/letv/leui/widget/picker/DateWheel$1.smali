.class Lcom/letv/leui/widget/picker/DateWheel$1;
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
    .line 210
    iput-object p1, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-direct {p0}, Lcom/letv/leui/widget/picker/OnWheelChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
    .locals 11
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 212
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {p1}, Lcom/letv/leui/widget/picker/WheelView;->getCurrentItem()I

    move-result v8

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set8(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 213
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get21(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    sget v9, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set2(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 214
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get21(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    sget v8, Lcom/letv/leui/widget/picker/DateWheel;->MIN_YEAR:I

    add-int v6, v7, v8

    .line 215
    .local v6, "year":I
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 216
    .local v3, "month":I
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get11(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 217
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get12(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 218
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get9(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 219
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get10(Lcom/letv/leui/widget/picker/DateWheel;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 221
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    .local v1, "i":I
    :goto_0
    const/16 v7, 0xc

    if-ge v1, v7, :cond_1

    .line 222
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get19(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    .restart local v1    # "i":I
    :goto_1
    const/16 v7, 0xc

    if-ge v1, v7, :cond_1

    .line 225
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get19(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_1
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get1(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v9

    if-ge v7, v9, :cond_3

    const/4 v7, 0x0

    :goto_2
    invoke-static {v8, v7}, Lcom/letv/leui/widget/picker/DateWheel;->-set7(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 227
    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get1(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v9

    if-ge v7, v9, :cond_4

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    :goto_3
    invoke-static {v8, v7}, Lcom/letv/leui/widget/picker/DateWheel;->-set1(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 228
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set6(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 229
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get18(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get15(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 230
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get18(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 232
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get1(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 233
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get1(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-static {v7, v6, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-wrap1(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 234
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set3(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 235
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get3(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 236
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 237
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 239
    :cond_2
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get22(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 240
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get18(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 257
    .end local v1    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set6(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 258
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get18(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get15(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 259
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get18(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 313
    :goto_5
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-virtual {v7}, Lcom/letv/leui/widget/picker/DateWheel;->onUpdateDate()V

    .line 211
    return-void

    .line 226
    .restart local v1    # "i":I
    :cond_3
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get1(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get8(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v9

    sub-int/2addr v7, v9

    goto/16 :goto_2

    .line 227
    :cond_4
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get1(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    goto/16 :goto_3

    .line 242
    .end local v1    # "i":I
    :cond_5
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_6

    .line 246
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get19(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->-wrap2(Lcom/letv/leui/widget/picker/DateWheel;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 248
    :cond_6
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get1(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set7(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 249
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    add-int/lit8 v3, v7, 0x1

    .line 250
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7, v6, v3}, Lcom/letv/leui/widget/picker/DateWheel;->-wrap0(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 251
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set3(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 252
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get3(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 253
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    .line 254
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get18(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    .line 255
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCyclic(Z)V

    goto/16 :goto_4

    .line 261
    :cond_7
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7, v6, v3}, Lcom/letv/leui/widget/picker/DateWheel;->-wrap0(Lcom/letv/leui/widget/picker/DateWheel;II)V

    .line 262
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set3(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 263
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get3(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 264
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 269
    :cond_8
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get13(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/letv/leui/pim/lunar/Lunar;->leapMonth(I)I

    move-result v2

    .line 270
    .local v2, "leapMonth":I
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-eq v7, v2, :cond_a

    .line 271
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7, v2}, Lcom/letv/leui/widget/picker/DateWheel;->-set5(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 272
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-lez v7, :cond_9

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    const/16 v8, 0xc

    if-le v7, v8, :cond_e

    .line 273
    :cond_9
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_a

    .line 274
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get19(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/letv/leui/widget/picker/DateWheel;->-wrap2(Lcom/letv/leui/widget/picker/DateWheel;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 287
    :cond_a
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set6(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 288
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get18(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get15(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "days_num":I
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-lez v7, :cond_b

    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    const/16 v8, 0xc

    if-le v7, v8, :cond_11

    .line 294
    :cond_b
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get13(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v6, v8}, Lcom/letv/leui/pim/lunar/Lunar;->monthDays(II)I

    move-result v0

    .line 299
    :cond_c
    :goto_6
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v7, v0, :cond_d

    .line 300
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v0, :cond_12

    .line 301
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 302
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-le v7, v8, :cond_d

    .line 303
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set4(Lcom/letv/leui/widget/picker/DateWheel;I)I

    .line 309
    :cond_d
    :goto_7
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    new-instance v8, Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get0(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v10}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/letv/leui/widget/picker/adapters/DateAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Lcom/letv/leui/widget/picker/DateWheel;->-set3(Lcom/letv/leui/widget/picker/DateWheel;Lcom/letv/leui/widget/picker/adapters/DateAdapter;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    .line 310
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get3(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/adapters/DateAdapter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setViewAdapter(Lcom/letv/leui/widget/picker/adapters/WheelViewAdapter;)V

    .line 311
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get6(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/widget/picker/WheelView;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get4(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/letv/leui/widget/picker/WheelView;->setCurrentItem(I)V

    goto/16 :goto_5

    .line 276
    .end local v0    # "days_num":I
    :cond_e
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f

    .line 277
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 278
    :cond_f
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get20(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10405be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "run":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get19(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v9}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    if-ge v1, v7, :cond_10

    .line 281
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get19(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 282
    :cond_10
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v1

    :goto_9
    const/16 v7, 0xc

    if-ge v1, v7, :cond_a

    .line 284
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get17(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get19(Lcom/letv/leui/widget/picker/DateWheel;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 293
    .end local v1    # "i":I
    .end local v4    # "run":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v0    # "days_num":I
    :cond_11
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    if-ne v7, v8, :cond_b

    .line 295
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get16(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get14(Lcom/letv/leui/widget/picker/DateWheel;)I

    move-result v8

    if-ne v7, v8, :cond_c

    .line 296
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get13(Lcom/letv/leui/widget/picker/DateWheel;)Lcom/letv/leui/pim/lunar/Lunar;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/letv/leui/pim/lunar/Lunar;->leapDays(I)I

    move-result v0

    goto/16 :goto_6

    .line 305
    :cond_12
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v0, :cond_d

    .line 306
    iget-object v7, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v7}, Lcom/letv/leui/widget/picker/DateWheel;->-get5(Lcom/letv/leui/widget/picker/DateWheel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/letv/leui/widget/picker/DateWheel$1;->this$0:Lcom/letv/leui/widget/picker/DateWheel;

    invoke-static {v8}, Lcom/letv/leui/widget/picker/DateWheel;->-get20(Lcom/letv/leui/widget/picker/DateWheel;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10405c4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7
.end method
