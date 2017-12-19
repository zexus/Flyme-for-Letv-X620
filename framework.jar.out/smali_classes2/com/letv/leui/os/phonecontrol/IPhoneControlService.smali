.class public interface abstract Lcom/letv/leui/os/phonecontrol/IPhoneControlService;
.super Ljava/lang/Object;
.source "IPhoneControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/os/phonecontrol/IPhoneControlService$Stub;
    }
.end annotation


# virtual methods
.method public abstract retrievePhoneLockData()Lcom/letv/leui/os/phonecontrol/PhoneLockData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopAlarm()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unLockPhone(Ljava/lang/String;)Lcom/letv/leui/os/phonecontrol/PhoneControlData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
