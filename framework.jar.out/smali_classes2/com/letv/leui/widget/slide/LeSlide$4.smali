.class final Lcom/letv/leui/widget/slide/LeSlide$4;
.super Ljava/lang/Object;
.source "LeSlide.java"

# interfaces
.implements Lcom/letv/leui/widget/slide/LeSlideInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/slide/LeSlide;->attach(Landroid/app/Activity;Lcom/letv/leui/widget/slide/LeSlideConfig;)Lcom/letv/leui/widget/slide/LeSlideInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0
    .param p1, "val$panel"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlide$4;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSliding()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$4;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isSliding()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$4;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->lock()V

    .line 190
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$4;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->onBackPressed()V

    .line 200
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$4;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setInitializeState()V

    .line 205
    :cond_0
    return-void
.end method

.method public setEnableSlideToOpen(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 214
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$4;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setEnableSlideToOpen(Z)V

    .line 212
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlide$4;->val$panel:Lcom/letv/leui/widget/slide/LeSlideLayout;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->unlock()V

    .line 195
    return-void
.end method
