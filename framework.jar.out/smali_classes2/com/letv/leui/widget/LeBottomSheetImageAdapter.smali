.class public Lcom/letv/leui/widget/LeBottomSheetImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "LeBottomSheetImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;
    }
.end annotation


# static fields
.field private static final DELAY_MULTIPLIER:F = 0.66f

.field private static final DURATION_MULTIPLIER:F = 0.8f

.field public static KEY_FRAME_DURATION:I


# instance fields
.field private animationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private index:I

.field private inflater:Landroid/view/LayoutInflater;

.field private key:[Ljava/lang/String;

.field private showLine:I

.field private str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x21

    sput v0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->KEY_FRAME_DURATION:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p3, "key"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 118
    const/4 v2, -0x1

    iput v2, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->index:I

    .line 42
    iput-object p3, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->key:[Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->data:Ljava/util/List;

    .line 44
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->animationList:Ljava/util/List;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 47
    const v2, 0x10a0044

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 48
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->animationList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 70
    if-nez p2, :cond_3

    .line 71
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x1090093

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;

    invoke-direct {v2, p0, v5}, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;-><init>(Lcom/letv/leui/widget/LeBottomSheetImageAdapter;Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;)V

    .line 73
    .local v2, "temp":Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;
    const v3, 0x10203f3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->imageView:Landroid/widget/ImageView;

    .line 74
    const v3, 0x10203f4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->textView:Landroid/widget/TextView;

    .line 75
    const v3, 0x10203f2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->topTv:Landroid/widget/TextView;

    .line 76
    iget v3, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->showLine:I

    if-le v3, v6, :cond_2

    .line 77
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget v4, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->showLine:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 78
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget v4, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->showLine:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinLines(I)V

    .line 82
    :goto_0
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->textView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 83
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->key:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 91
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->imageView:Landroid/widget/ImageView;

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :cond_0
    :goto_2
    iget v3, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->index:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 97
    iget v3, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->index:I

    if-ne v3, p1, :cond_5

    .line 98
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->topTv:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->topTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    :goto_3
    iget-object v4, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->data:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iget-object v5, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->key:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v3, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->animationList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 108
    .local v0, "animation":Landroid/view/animation/Animation;
    sget v3, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->KEY_FRAME_DURATION:I

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f28f5c3    # 0.66f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 109
    const/4 v3, 0x6

    if-ge p1, v3, :cond_6

    .line 110
    sget v3, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->KEY_FRAME_DURATION:I

    mul-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 115
    :goto_4
    return-object p2

    .line 80
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 86
    .end local v2    # "temp":Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;

    .restart local v2    # "temp":Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;
    goto :goto_1

    .line 92
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v3, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->imageView:Landroid/widget/ImageView;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 101
    :cond_5
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->topTv:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v3, v2, Lcom/letv/leui/widget/LeBottomSheetImageAdapter$GridTemp;->topTv:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 112
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    :cond_6
    sget v3, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->KEY_FRAME_DURATION:I

    mul-int/lit8 v3, v3, 0x9

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_4
.end method

.method public setItemTopText(ILjava/lang/String;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->index:I

    .line 124
    iput-object p2, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->str:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->notifyDataSetChanged()V

    .line 121
    :cond_0
    return-void
.end method

.method public setTextLine(I)V
    .locals 1
    .param p1, "lines"    # I

    .prologue
    .line 132
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iput p1, p0, Lcom/letv/leui/widget/LeBottomSheetImageAdapter;->showLine:I

    .line 131
    return-void
.end method
