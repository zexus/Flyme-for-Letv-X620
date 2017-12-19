.class public Lcom/letv/leui/widget/LeLayoutSuppressingQuickContactBadge;
.super Lcom/letv/leui/widget/LeQuickContactBadge;
.source "LeLayoutSuppressingQuickContactBadge.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/widget/LeQuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public requestLayout()V
    .locals 0

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeLayoutSuppressingQuickContactBadge;->forceLayout()V

    .line 19
    return-void
.end method
