.class Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "LeDialogPreferenceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeDialogPreferenceEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialogBundle:Landroid/os/Bundle;

.field isDialogShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 505
    new-instance v0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState$1;

    invoke-direct {v0}, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState$1;-><init>()V

    .line 504
    sput-object v0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 483
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 488
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->isDialogShowing:Z

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 487
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 501
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 500
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 495
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 496
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v0, p0, Lcom/letv/leui/preference/LeDialogPreferenceEx$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 494
    return-void

    .line 496
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
