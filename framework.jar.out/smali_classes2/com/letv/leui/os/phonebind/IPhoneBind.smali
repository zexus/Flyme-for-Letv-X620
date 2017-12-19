.class public interface abstract Lcom/letv/leui/os/phonebind/IPhoneBind;
.super Ljava/lang/Object;
.source "IPhoneBind.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/os/phonebind/IPhoneBind$Stub;
    }
.end annotation


# virtual methods
.method public abstract getLeTVSNValue(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
