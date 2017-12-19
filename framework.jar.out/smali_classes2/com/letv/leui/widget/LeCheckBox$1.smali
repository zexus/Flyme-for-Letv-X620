.class final Lcom/letv/leui/widget/LeCheckBox$1;
.super Landroid/util/Property;
.source "LeCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/letv/leui/widget/LeCheckBox;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 558
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/letv/leui/widget/LeCheckBox;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/letv/leui/widget/LeCheckBox;

    .prologue
    .line 561
    invoke-static {p1}, Lcom/letv/leui/widget/LeCheckBox;->-get0(Lcom/letv/leui/widget/LeCheckBox;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 560
    check-cast p1, Lcom/letv/leui/widget/LeCheckBox;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeCheckBox$1;->get(Lcom/letv/leui/widget/LeCheckBox;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final set(Lcom/letv/leui/widget/LeCheckBox;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/letv/leui/widget/LeCheckBox;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 569
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeCheckBox$1;->setValue(Lcom/letv/leui/widget/LeCheckBox;F)V

    .line 568
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 568
    check-cast p1, Lcom/letv/leui/widget/LeCheckBox;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LeCheckBox$1;->set(Lcom/letv/leui/widget/LeCheckBox;Ljava/lang/Float;)V

    return-void
.end method

.method public setValue(Lcom/letv/leui/widget/LeCheckBox;F)V
    .locals 0
    .param p1, "object"    # Lcom/letv/leui/widget/LeCheckBox;
    .param p2, "value"    # F

    .prologue
    .line 565
    invoke-virtual {p1, p2}, Lcom/letv/leui/widget/LeCheckBox;->setArrowInterpolatedTime(F)V

    .line 564
    return-void
.end method
