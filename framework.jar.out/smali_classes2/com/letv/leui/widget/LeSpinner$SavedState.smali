.class Lcom/letv/leui/widget/LeSpinner$SavedState;
.super Lcom/letv/leui/widget/AbsSpinner$SavedState;
.source "LeSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeSpinner$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/widget/LeSpinner$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field showDropdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 997
    new-instance v0, Lcom/letv/leui/widget/LeSpinner$SavedState$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/LeSpinner$SavedState$1;-><init>()V

    .line 996
    sput-object v0, Lcom/letv/leui/widget/LeSpinner$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 978
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 986
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    .line 987
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/letv/leui/widget/LeSpinner$SavedState;->showDropdown:Z

    .line 985
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/letv/leui/widget/LeSpinner$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 982
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 981
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 992
    invoke-super {p0, p1, p2}, Lcom/letv/leui/widget/AbsSpinner$SavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 993
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeSpinner$SavedState;->showDropdown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 991
    return-void

    .line 993
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
