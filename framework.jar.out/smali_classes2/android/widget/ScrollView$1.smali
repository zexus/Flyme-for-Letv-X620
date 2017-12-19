.class Landroid/widget/ScrollView$1;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ScrollView;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ScrollView;

    .prologue
    .line 2129
    iput-object p1, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Landroid/widget/ScrollView$1;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 2130
    return-void
.end method
