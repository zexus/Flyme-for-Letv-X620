.class public interface abstract Lcom/letv/leui/widget/AdapterView$OnItemSelectedListener;
.super Ljava/lang/Object;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onItemSelected(Lcom/letv/leui/widget/AdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onNothingSelected(Lcom/letv/leui/widget/AdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation
.end method
