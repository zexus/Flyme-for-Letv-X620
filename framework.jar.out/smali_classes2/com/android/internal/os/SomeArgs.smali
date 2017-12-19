.class public final Lcom/android/internal/os/SomeArgs;
.super Ljava/lang/Object;
.source "SomeArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/SomeArgs$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/os/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field static final WAIT_FINISHED:I = 0x2

.field static final WAIT_NONE:I = 0x0

.field static final WAIT_WAITING:I = 0x1

.field private static sPool:Lcom/android/internal/os/SomeArgs;

.field private static sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public arg3:Ljava/lang/Object;

.field public arg4:Ljava/lang/Object;

.field public arg5:Ljava/lang/Object;

.field public arg6:Ljava/lang/Object;

.field public arg7:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field public argi4:I

.field public argi5:I

.field public argi6:I

.field public args1:Ljava/lang/String;

.field public args2:Ljava/lang/String;

.field public args3:Ljava/lang/String;

.field public args4:Ljava/lang/String;

.field public args5:Ljava/lang/String;

.field public args6:Ljava/lang/String;

.field private mInPool:Z

.field private mNext:Lcom/android/internal/os/SomeArgs;

.field mWaitState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    .line 280
    new-instance v0, Lcom/android/internal/os/SomeArgs$1;

    invoke-direct {v0}, Lcom/android/internal/os/SomeArgs$1;-><init>()V

    .line 279
    sput-object v0, Lcom/android/internal/os/SomeArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/internal/os/SomeArgs;->readFromParcel(Landroid/os/Parcel;)V

    .line 289
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 115
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 116
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 117
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 119
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 121
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 122
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 123
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 124
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 125
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 126
    iput v1, p0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 127
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args1:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args2:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args3:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args4:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args5:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args6:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public static obtain()Lcom/android/internal/os/SomeArgs;
    .locals 3

    .prologue
    .line 71
    sget-object v2, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_0
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    if-lez v1, :cond_0

    .line 73
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 74
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    sget-object v1, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    sput-object v1, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 75
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 77
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 78
    return-object v0

    .line 80
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/internal/os/SomeArgs;

    invoke-direct {v1}, Lcom/android/internal/os/SomeArgs;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public complete()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not waiting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 90
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 85
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args1:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args2:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args3:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args4:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args5:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->args6:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 265
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 268
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 271
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 274
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 243
    :cond_6
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget v0, p0, Lcom/android/internal/os/SomeArgs;->mWaitState:I

    if-eqz v0, :cond_1

    .line 100
    return-void

    .line 102
    :cond_1
    sget-object v1, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/SomeArgs;->clear()V

    .line 104
    sget v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 105
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 107
    sput-object p0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 108
    sget v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 95
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 145
    iget v2, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v2, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v2, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v2, p0, Lcom/android/internal/os/SomeArgs;->argi4:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v2, p0, Lcom/android/internal/os/SomeArgs;->argi5:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v2, p0, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->args1:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->args2:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->args3:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->args4:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->args5:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->args6:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 160
    .local v1, "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 171
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 172
    .restart local v1    # "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 183
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 184
    .restart local v1    # "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_2
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 195
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 196
    .restart local v1    # "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .line 205
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_3
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 207
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 208
    .restart local v1    # "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .line 217
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_4
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 219
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 220
    .restart local v1    # "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .line 229
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_5
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 231
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 232
    .restart local v1    # "p":Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .line 142
    .end local v1    # "p":Landroid/os/Parcelable;
    :goto_6
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 164
    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    .line 163
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 176
    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    .line 175
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 186
    :catch_2
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 188
    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    .line 187
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 198
    :catch_3
    move-exception v0

    .line 199
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 200
    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    .line 199
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 210
    :catch_4
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 212
    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    .line 211
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 222
    :catch_5
    move-exception v0

    .line 223
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 224
    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    .line 223
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 234
    :catch_6
    move-exception v0

    .line 235
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    .line 236
    const-string/jumbo v3, "Can\'t marshal non-Parcelable objects across processes."

    .line 235
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6
.end method
