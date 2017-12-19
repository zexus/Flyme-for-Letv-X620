.class public interface abstract Lcom/android/server/power/xtend/LucidPropertiesAPI;
.super Ljava/lang/Object;
.source "LucidPropertiesAPI.java"


# virtual methods
.method public abstract GetGameXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract GetNavXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract GetPowerXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract GetSocialXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract GetWebXtendConfig(Lcom/android/server/power/xtend/ModulePropertiesInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract SetGameXtendToAutomaticMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetGameXtendToManualMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetGameXtendToOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetNavXtendToAutomaticMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetNavXtendToManualMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetNavXtendToOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetPowerXtendToAutomaticMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetPowerXtendToManualMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetPowerXtendToOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetSocialXtendToAutomaticMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetSocialXtendToManualMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetSocialXtendToOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetWebXtendToAutomaticMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetWebXtendToManualMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/InvalidParameterException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract SetWebXtendToOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract isInternalTestAppInstalled()Z
.end method
