.class Lcom/android/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/volley/toolbox/ImageLoader;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 464
    iget-object v4, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v4}, Lcom/android/volley/toolbox/ImageLoader;->-get0(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "bir$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;

    .line 465
    .local v0, "bir":Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->-get0(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "container$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 469
    .local v2, "container":Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    invoke-static {v2}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->-get0(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 472
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 473
    invoke-static {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->-get1(Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->-set0(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 474
    invoke-static {v2}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->-get0(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0

    .line 476
    :cond_2
    invoke-static {v2}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->-get0(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/android/volley/VolleyError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 480
    .end local v0    # "bir":Lcom/android/volley/toolbox/ImageLoader$BatchedImageRequest;
    .end local v2    # "container":Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    .end local v3    # "container$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v4}, Lcom/android/volley/toolbox/ImageLoader;->-get0(Lcom/android/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 481
    iget-object v4, p0, Lcom/android/volley/toolbox/ImageLoader$4;->this$0:Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {v4, v6}, Lcom/android/volley/toolbox/ImageLoader;->-set0(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 463
    return-void
.end method
