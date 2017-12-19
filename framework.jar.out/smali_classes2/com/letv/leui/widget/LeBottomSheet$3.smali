.class Lcom/letv/leui/widget/LeBottomSheet$3;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomSheet;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$3;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "textRepresentation"    # Ljava/lang/String;

    .prologue
    .line 507
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 508
    check-cast v0, Landroid/widget/ImageView;

    .line 509
    .local v0, "iv":Landroid/widget/ImageView;
    instance-of v1, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 510
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 511
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 512
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 516
    .end local v0    # "iv":Landroid/widget/ImageView;
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method
