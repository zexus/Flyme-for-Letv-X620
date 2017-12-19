.class public interface abstract Lcom/letv/agnes/service/beans/IReportService;
.super Ljava/lang/Object;
.source "IReportService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/agnes/service/beans/IReportService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/letv/agnes/service/beans/ISEMSListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeLog(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportApp(ILcom/letv/agnes/service/beans/IApp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportError(ILcom/letv/agnes/service/beans/ISEMSError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportEvent(ILcom/letv/agnes/service/beans/IEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportLog(ILcom/letv/agnes/service/beans/ILogFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportMusicPlay(ILcom/letv/agnes/service/beans/IMusicPlay;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportResend(ILcom/letv/agnes/service/beans/IResend;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportVideoPlay(ILcom/letv/agnes/service/beans/IVideoPlay;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportWidget(ILcom/letv/agnes/service/beans/IWidget;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
