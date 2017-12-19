.class Lcom/letv/leui/preference/LeListPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "LeListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeListPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/preference/LeListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isBottomSheetShowing:Z

.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 542
    new-instance v0, Lcom/letv/leui/preference/LeListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/letv/leui/preference/LeListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/letv/leui/preference/LeListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 521
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 526
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/preference/LeListPreference$SavedState;->value:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference$SavedState;->isBottomSheetShowing:Z

    .line 525
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 538
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 533
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 534
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-boolean v0, p0, Lcom/letv/leui/preference/LeListPreference$SavedState;->isBottomSheetShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
