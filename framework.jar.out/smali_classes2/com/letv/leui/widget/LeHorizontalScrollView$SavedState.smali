.class Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LeHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isLayoutRtl:Z

.field public scrollPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1902
    new-instance v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState$1;-><init>()V

    .line 1901
    sput-object v0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1872
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 1881
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1882
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    .line 1883
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->isLayoutRtl:Z

    .line 1880
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1877
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1876
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HorizontalScrollView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1896
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1897
    const-string/jumbo v1, " scrollPosition="

    .line 1895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1897
    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    .line 1895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1898
    const-string/jumbo v1, " isLayoutRtl="

    .line 1895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1898
    iget-boolean v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->isLayoutRtl:Z

    .line 1895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1898
    const-string/jumbo v1, "}"

    .line 1895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1888
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1889
    iget v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1890
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollView$SavedState;->isLayoutRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1887
    return-void

    .line 1890
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
