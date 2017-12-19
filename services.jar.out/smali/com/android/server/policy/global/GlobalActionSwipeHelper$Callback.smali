.class public interface abstract Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;
.super Ljava/lang/Object;
.source "GlobalActionSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract canSwipeToBottom()Z
.end method

.method public abstract getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
.end method

.method public abstract hintCancelRect(FF)Z
.end method

.method public abstract hintSwipeRect(FF)Z
.end method

.method public abstract onSwapToBottom()V
.end method
