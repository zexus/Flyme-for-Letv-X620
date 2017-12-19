.class Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$1;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->invalidateSelf()V

    .line 101
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 106
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable$1;->this$0:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/MaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method
