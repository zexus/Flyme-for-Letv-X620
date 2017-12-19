.class public interface abstract Landroid/webkit/h5video/IH5VideoProxy;
.super Ljava/lang/Object;
.source "IH5VideoProxy.java"


# static fields
.field public static final PROXY_TYPE_H5:I = 0x1

.field public static final PROXY_TYPE_MTT:I = 0x2

.field public static final PROXY_TYPE_SERVICE:I = 0x3


# virtual methods
.method public abstract canPagePlay()Z
.end method

.method public abstract dispatchPause(Z)V
.end method

.method public abstract dispatchPlay()V
.end method

.method public abstract dispatchSeek(II)V
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract exitFullScreen(Ljava/lang/String;)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getProxyType()I
.end method

.method public abstract getScreenMode()I
.end method

.method public abstract getSniffVideoID()I
.end method

.method public abstract getSniffVideoRefer()Ljava/lang/String;
.end method

.method public abstract isActive()Z
.end method

.method public abstract isInPrefetchPage()Z
.end method

.method public abstract isRenderRelease()Z
.end method

.method public abstract isVideoPlaying()Z
.end method

.method public abstract onAttachVideoView(Landroid/view/View;I)V
.end method

.method public abstract onCompletion()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onError()V
.end method

.method public abstract onPaused()V
.end method

.method public abstract onPlayed()V
.end method

.method public abstract onPrepared(III)V
.end method

.method public abstract onSeekComplete(I)V
.end method

.method public abstract onTimeUpdated(I)V
.end method

.method public abstract requestFullScreen(Ljava/lang/String;)V
.end method

.method public abstract setScreenMode(I)V
.end method
