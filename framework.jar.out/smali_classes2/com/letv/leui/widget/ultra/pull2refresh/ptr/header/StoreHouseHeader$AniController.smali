.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;
.super Ljava/lang/Object;
.source "StoreHouseHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AniController"
.end annotation


# instance fields
.field private mCountPerSeg:I

.field private mInterval:I

.field private mRunning:Z

.field private mSegCount:I

.field private mTick:I

.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;


# direct methods
.method static synthetic -wrap0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->start()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;)V
    .locals 0

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->stop()V

    return-void
.end method

.method private constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)V
    .locals 1
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    .prologue
    const/4 v0, 0x0

    .line 281
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mTick:I

    .line 284
    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    .line 285
    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mSegCount:I

    .line 286
    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mInterval:I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mRunning:Z

    .line 281
    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)V

    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mRunning:Z

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mTick:I

    .line 293
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->-get1(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)I

    move-result v0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    iget-object v1, v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mInterval:I

    .line 294
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->-get3(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mInterval:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    .line 295
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    iget-object v0, v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mSegCount:I

    .line 296
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->run()V

    .line 289
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mRunning:Z

    .line 328
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    invoke-virtual {v0, p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 302
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mTick:I

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    rem-int v3, v4, v5

    .line 303
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mSegCount:I

    if-ge v0, v4, :cond_1

    .line 305
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mCountPerSeg:I

    mul-int/2addr v4, v0

    add-int v1, v4, v3

    .line 306
    .local v1, "index":I
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mTick:I

    if-le v1, v4, :cond_0

    .line 303
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    iget-object v4, v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v1, v4

    .line 311
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    iget-object v4, v4, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;

    .line 313
    .local v2, "item":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;
    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setFillAfter(Z)V

    .line 314
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setFillEnabled(Z)V

    .line 315
    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setFillBefore(Z)V

    .line 316
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->-get2(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setDuration(J)V

    .line 317
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->-get0(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)F

    move-result v4

    iget-object v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    invoke-static {v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->-get4(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->start(FF)V

    goto :goto_1

    .line 320
    .end local v1    # "index":I
    .end local v2    # "item":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;
    :cond_1
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mTick:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mTick:I

    .line 321
    iget-boolean v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mRunning:Z

    if-eqz v4, :cond_2

    .line 322
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->mInterval:I

    int-to-long v6, v5

    invoke-virtual {v4, p0, v6, v7}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    :cond_2
    return-void
.end method
