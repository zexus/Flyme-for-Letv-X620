.class Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "LeMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState$1;-><init>()V

    .line 273
    sput-object v0, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 254
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "strings":[Ljava/lang/String;
    array-length v1, v2

    .line 258
    .local v1, "stringCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 259
    iget-object v3, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 263
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 270
    iget-object v0, p0, Lcom/letv/leui/preference/LeMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 268
    return-void
.end method
