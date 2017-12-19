.class public interface abstract Lcom/letv/domain/DomainHelper$ResponseListener;
.super Ljava/lang/Object;
.source "DomainHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/domain/DomainHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResponseListener"
.end annotation


# virtual methods
.method public abstract onErrorResponse(ILjava/lang/String;)V
.end method

.method public abstract onResponse(ILorg/json/JSONObject;)V
.end method
