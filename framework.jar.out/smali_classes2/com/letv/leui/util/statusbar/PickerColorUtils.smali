.class public Lcom/letv/leui/util/statusbar/PickerColorUtils;
.super Ljava/lang/Object;
.source "PickerColorUtils.java"

# interfaces
.implements Lcom/letv/leui/util/statusbar/StatusBarUpdater;


# static fields
.field private static CAPTURE_HEIGHT:I = 0x0

.field private static CAPTURE_WIDTH:I = 0x0

.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveStatusBar"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 22
    sput v0, Lcom/letv/leui/util/statusbar/PickerColorUtils;->CAPTURE_WIDTH:I

    .line 23
    sput v0, Lcom/letv/leui/util/statusbar/PickerColorUtils;->CAPTURE_HEIGHT:I

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMainColorInBitmap(Landroid/graphics/Bitmap;)I
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 60
    return v2

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    return v2

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 67
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 69
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    .line 70
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 71
    invoke-direct {p0, v1}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->getMaxCount([I)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "color":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getMaxCount([I)Ljava/lang/String;
    .locals 18
    .param p1, "pixels"    # [I

    .prologue
    .line 77
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v6, v15, :cond_0

    .line 79
    aget v15, p1, v6

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "c$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "c":Ljava/lang/String;
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 84
    .local v8, "l":Ljava/lang/Integer;
    if-nez v8, :cond_1

    .line 85
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 88
    :goto_2
    invoke-interface {v10, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    .line 90
    .end local v2    # "c":Ljava/lang/String;
    .end local v8    # "l":Ljava/lang/Integer;
    :cond_2
    const/4 v11, 0x0

    .line 91
    .local v11, "max":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 92
    .local v12, "num":J
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v11    # "max":Ljava/lang/String;
    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 93
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 94
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 95
    .local v14, "temp":Ljava/lang/Integer;
    if-eqz v11, :cond_4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v16, v12

    if-lez v15, :cond_3

    .line 96
    :cond_4
    move-object v11, v7

    .line 97
    .local v11, "max":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v12, v15

    goto :goto_3

    .line 108
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "max":Ljava/lang/String;
    .end local v14    # "temp":Ljava/lang/Integer;
    :cond_5
    return-object v11
.end method


# virtual methods
.method public PickerColor(Landroid/view/View;I)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pickerMode"    # I

    .prologue
    const/16 v6, 0x59

    .line 33
    sget v3, Lcom/letv/leui/util/statusbar/PickerColorUtils;->CAPTURE_WIDTH:I

    sget v4, Lcom/letv/leui/util/statusbar/PickerColorUtils;->CAPTURE_HEIGHT:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    .local v1, "canvas":Landroid/graphics/Canvas;
    if-nez p2, :cond_1

    .line 37
    const/4 v3, 0x0

    neg-int v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 43
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gtz v3, :cond_2

    .line 44
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 39
    :cond_1
    const v3, -0x3b796000    # -1077.0f

    neg-int v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 47
    invoke-direct {p0, v0}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->getMainColorInBitmap(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 48
    .local v2, "pickColor":I
    return v2
.end method

.method public SetStatusBarColor(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pickerMode"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->PickerColor(Landroid/view/View;I)I

    move-result v0

    .line 54
    .local v0, "pickColor":I
    invoke-virtual {p0, v0}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->update(I)V

    .line 52
    return-void
.end method

.method public printView(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 118
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 119
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->printView(Ljava/lang/Object;)V

    .line 117
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    const-string/jumbo v2, "ImmersiveStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "---->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "top = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "bottom = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public update(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 112
    return-void
.end method
