.class Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;
.super Ljava/lang/Object;
.source "LePassWordPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LePassWordPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/letv/leui/preference/LePassWordPreference$SavedState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/preference/LePassWordPreference$SavedState;


# direct methods
.method constructor <init>(Lcom/letv/leui/preference/LePassWordPreference$SavedState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;->this$1:Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 138
    new-instance v0, Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    iget-object v1, p0, Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;->this$1:Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    iget-object v1, v1, Lcom/letv/leui/preference/LePassWordPreference$SavedState;->this$0:Lcom/letv/leui/preference/LePassWordPreference;

    invoke-direct {v0, v1, p1}, Lcom/letv/leui/preference/LePassWordPreference$SavedState;-><init>(Lcom/letv/leui/preference/LePassWordPreference;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/letv/leui/preference/LePassWordPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 142
    new-array v0, p1, [Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/letv/leui/preference/LePassWordPreference$SavedState$1;->newArray(I)[Lcom/letv/leui/preference/LePassWordPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
