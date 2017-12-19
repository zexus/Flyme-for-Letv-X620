.class public interface abstract Landroid/webkit/h5video/IH5VideoPlayer;
.super Ljava/lang/Object;
.source "IH5VideoPlayer.java"


# static fields
.field public static final FULL_SCREEN_MODE:I = 0x66

.field public static final PAGE_VIDEO_MODE:I = 0x65

.field public static final UA_CHROMIUM:I = 0xcb

.field public static final UA_DEFAULT:I = 0xc8

.field public static final UA_IPAD:I = 0xca

.field public static final UA_IPHONE:I = 0xc9

.field public static final UA_NONE:I = 0xcc

.field public static final UNKNOWN_VIDEO_MODE:I = 0x64


# virtual methods
.method public abstract getPlayerId()Ljava/lang/String;
.end method

.method public abstract getScreenMode()I
.end method

.method public abstract getVideoView()Landroid/view/View;
.end method

.method public abstract handlePluginTag(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
.end method

.method public abstract isVideoPlaying()Z
.end method

.method public abstract pause(Z)V
.end method

.method public abstract play(Landroid/webkit/h5video/H5VideoInfo;)V
.end method

.method public abstract preload(Ljava/lang/String;I)V
.end method

.method public abstract reqSwitchScreen(I)V
.end method

.method public abstract seek(I)V
.end method

.method public abstract unmountProxy()V
.end method
