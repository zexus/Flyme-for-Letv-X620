.class public abstract Lcom/letv/leui/widget/picker/OnWheelChangedListener;
.super Ljava/lang/Object;
.source "OnWheelChangedListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged(Lcom/letv/leui/widget/picker/WheelView;II)V
.end method

.method public onChangedDiff(Lcom/letv/leui/widget/picker/WheelView;I)V
    .locals 0
    .param p1, "wheel"    # Lcom/letv/leui/widget/picker/WheelView;
    .param p2, "diff"    # I

    .prologue
    .line 23
    return-void
.end method
