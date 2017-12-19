.class public interface abstract Lcom/letv/agnes/service/beans/ISEMSListener;
.super Ljava/lang/Object;
.source "ISEMSListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/agnes/service/beans/ISEMSListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract handleFail(Lcom/letv/agnes/service/beans/IFailedEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract handleSuccess(Lcom/letv/agnes/service/beans/ISuccessEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
