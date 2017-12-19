.class Lcom/letv/leui/preference/LePassWordPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "LePassWordPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LePassWordPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;
    }
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/preference/LePassWordPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field checked:Z

.field pwd:Ljava/lang/String;

.field final synthetic this$0:Lcom/letv/leui/preference/LePassWordPreference;


# direct methods
.method public constructor <init>(Lcom/letv/leui/preference/LePassWordPreference;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "this$0"    # Lcom/letv/leui/preference/LePassWordPreference;
    .param p2, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 119
    iput-object p1, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->this$0:Lcom/letv/leui/preference/LePassWordPreference;

    .line 120
    invoke-direct {p0, p2}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 136
    new-instance v1, Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;-><init>(Lcom/letv/leui/preference/LePassWordPreference$SavedState;)V

    iput-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->checked:Z

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->pwd:Ljava/lang/String;

    .line 119
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/letv/leui/preference/LePassWordPreference;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "this$0"    # Lcom/letv/leui/preference/LePassWordPreference;
    .param p2, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->this$0:Lcom/letv/leui/preference/LePassWordPreference;

    .line 126
    invoke-direct {p0, p2}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 136
    new-instance v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;-><init>(Lcom/letv/leui/preference/LePassWordPreference$SavedState;)V

    iput-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 125
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget-boolean v0, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->pwd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
