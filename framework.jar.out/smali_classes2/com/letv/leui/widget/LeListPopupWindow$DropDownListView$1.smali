.class final Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$1;
.super Landroid/util/IntProperty;
.source "LeListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 634
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 641
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$1;->get(Landroid/graphics/drawable/Drawable;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "object"    # Landroid/graphics/drawable/Drawable;
    .param p2, "value"    # I

    .prologue
    .line 637
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 636
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # I

    .prologue
    .line 636
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LeListPopupWindow$DropDownListView$1;->setValue(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
