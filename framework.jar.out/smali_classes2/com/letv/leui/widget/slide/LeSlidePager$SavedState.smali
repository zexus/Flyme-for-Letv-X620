.class public Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LeSlidePager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlidePager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/slide/LeSlidePager$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field adapterState:Landroid/os/Parcelable;

.field loader:Ljava/lang/ClassLoader;

.field position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1234
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState$1;-><init>()V

    .line 1233
    sput-object v0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1201
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1207
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1208
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->loader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->loader:Ljava/lang/ClassLoader;

    .line 1211
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    .line 1212
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1206
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1216
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1215
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FragmentPager.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1229
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1230
    const-string/jumbo v1, " position="

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1230
    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1230
    const-string/jumbo v1, "}"

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1221
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1222
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlidePager$SavedState;->adapterState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1220
    return-void
.end method
