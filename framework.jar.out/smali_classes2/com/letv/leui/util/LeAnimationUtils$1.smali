.class final Lcom/letv/leui/util/LeAnimationUtils$1;
.super Ljava/lang/Object;
.source "LeAnimationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/LeAnimationUtils;->play(Landroid/widget/ImageView;ILcom/letv/leui/util/LeAnimationUtils$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;)V
    .locals 0
    .param p1, "val$listener"    # Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/letv/leui/util/LeAnimationUtils$1;->val$listener:Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/letv/leui/util/LeAnimationUtils$1;->val$listener:Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/letv/leui/util/LeAnimationUtils$1;->val$listener:Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;

    invoke-interface {v0}, Lcom/letv/leui/util/LeAnimationUtils$AnimationListener;->onFinish()V

    .line 48
    :cond_0
    return-void
.end method
