.class Lcom/android/internal/policy/PhoneWindow$DecorView$5;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;->createLeFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field final synthetic val$mode:Landroid/widget/Editor$LeTextActionModelImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/widget/Editor$LeTextActionModelImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p2, "val$mode"    # Landroid/widget/Editor$LeTextActionModelImpl;

    .prologue
    .line 3618
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$5;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$5;->val$mode:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 3621
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$5;->val$mode:Landroid/widget/Editor$LeTextActionModelImpl;

    invoke-virtual {v0}, Landroid/widget/Editor$LeTextActionModelImpl;->updateViewLocationInWindow()V

    .line 3622
    const/4 v0, 0x1

    return v0
.end method
