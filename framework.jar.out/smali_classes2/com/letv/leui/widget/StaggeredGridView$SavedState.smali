.class Lcom/letv/leui/widget/StaggeredGridView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/StaggeredGridView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/widget/StaggeredGridView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field checkIdState:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field checkState:Landroid/util/SparseBooleanArray;

.field checkedItemCount:I

.field firstId:J

.field inActionMode:Z

.field mapping:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/StaggeredGridView$ColMap;",
            ">;"
        }
    .end annotation
.end field

.field position:I

.field topOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3280
    new-instance v0, Lcom/letv/leui/widget/StaggeredGridView$SavedState$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/StaggeredGridView$SavedState$1;-><init>()V

    sput-object v0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3216
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 3231
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3217
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    .line 3232
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    .line 3233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->position:I

    .line 3234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    .line 3235
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3236
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    .line 3237
    iget-object v6, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    sget-object v7, Lcom/letv/leui/widget/StaggeredGridView$ColMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 3238
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->inActionMode:Z

    .line 3239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    .line 3240
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 3241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3242
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 3243
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 3244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3245
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3246
    .local v2, "key":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3247
    .local v4, "value":I
    iget-object v5, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3230
    .end local v1    # "i":I
    .end local v2    # "key":J
    .end local v4    # "value":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/letv/leui/widget/StaggeredGridView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/StaggeredGridView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 3227
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    .line 3226
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StaggereGridView.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3274
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3275
    const-string/jumbo v1, " firstId="

    .line 3273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3275
    iget-wide v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    .line 3273
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3276
    const-string/jumbo v1, " position="

    .line 3273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3276
    iget v1, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->position:I

    .line 3273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3277
    const-string/jumbo v1, " checkState="

    .line 3273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3277
    iget-object v1, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 3273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3277
    const-string/jumbo v1, "}"

    .line 3273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3254
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3255
    iget-wide v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->firstId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3256
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->position:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3257
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3258
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->topOffsets:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3259
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->mapping:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3260
    iget-boolean v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3261
    iget v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkedItemCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3262
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 3263
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3264
    .local v0, "N":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 3266
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3267
    iget-object v2, p0, Lcom/letv/leui/widget/StaggeredGridView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3265
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3260
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3263
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "N":I
    goto :goto_1

    .line 3253
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method
