.class final Lcom/letv/leui/widget/LeSwitch$1;
.super Landroid/util/Property;
.source "LeSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/letv/leui/widget/LeSwitch;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 728
    .local p1, "$anonymous0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/letv/leui/widget/LeSwitch;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/letv/leui/widget/LeSwitch;

    .prologue
    .line 731
    invoke-static {p1}, Lcom/letv/leui/widget/LeSwitch;->-get0(Lcom/letv/leui/widget/LeSwitch;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 730
    check-cast p1, Lcom/letv/leui/widget/LeSwitch;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LeSwitch$1;->get(Lcom/letv/leui/widget/LeSwitch;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final set(Lcom/letv/leui/widget/LeSwitch;Ljava/lang/Float;)V
    .locals 1
    .param p1, "object"    # Lcom/letv/leui/widget/LeSwitch;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 740
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/LeSwitch$1;->setValue(Lcom/letv/leui/widget/LeSwitch;F)V

    .line 739
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 739
    check-cast p1, Lcom/letv/leui/widget/LeSwitch;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LeSwitch$1;->set(Lcom/letv/leui/widget/LeSwitch;Ljava/lang/Float;)V

    return-void
.end method

.method public setValue(Lcom/letv/leui/widget/LeSwitch;F)V
    .locals 0
    .param p1, "object"    # Lcom/letv/leui/widget/LeSwitch;
    .param p2, "value"    # F

    .prologue
    .line 735
    invoke-virtual {p1, p2}, Lcom/letv/leui/widget/LeSwitch;->setThumbPosition(F)V

    .line 734
    return-void
.end method
