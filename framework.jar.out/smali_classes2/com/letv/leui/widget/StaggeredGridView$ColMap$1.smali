.class final Lcom/letv/leui/widget/StaggeredGridView$ColMap$1;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView$ColMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/letv/leui/widget/StaggeredGridView$ColMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/widget/StaggeredGridView$ColMap;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 3195
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$ColMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/letv/leui/widget/StaggeredGridView$ColMap;-><init>(Landroid/os/Parcel;Lcom/letv/leui/widget/StaggeredGridView$ColMap;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 3194
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$ColMap$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/widget/StaggeredGridView$ColMap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/leui/widget/StaggeredGridView$ColMap;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 3199
    new-array v0, p1, [Lcom/letv/leui/widget/StaggeredGridView$ColMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 3198
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$ColMap$1;->newArray(I)[Lcom/letv/leui/widget/StaggeredGridView$ColMap;

    move-result-object v0

    return-object v0
.end method
