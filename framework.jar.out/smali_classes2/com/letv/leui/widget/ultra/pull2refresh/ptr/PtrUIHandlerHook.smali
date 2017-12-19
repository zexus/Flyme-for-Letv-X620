.class public abstract Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;
.super Ljava/lang/Object;
.source "PtrUIHandlerHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final STATUS_IN_HOOK:B = 0x1t

.field private static final STATUS_PREPARE:B = 0x0t

.field private static final STATUS_RESUMED:B = 0x2t


# instance fields
.field private mResumeAction:Ljava/lang/Runnable;

.field private mStatus:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    .line 8
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    .line 37
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mResumeAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mResumeAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 45
    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    .line 41
    return-void
.end method

.method public setResumeAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mResumeAction:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method public takeOver()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->takeOver(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method public takeOver(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "resumeAction"    # Ljava/lang/Runnable;

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mResumeAction:Ljava/lang/Runnable;

    .line 24
    :cond_0
    iget-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    packed-switch v0, :pswitch_data_0

    .line 20
    :goto_0
    :pswitch_0
    return-void

    .line 26
    :pswitch_1
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->mStatus:B

    .line 27
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->run()V

    goto :goto_0

    .line 32
    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandlerHook;->resume()V

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
