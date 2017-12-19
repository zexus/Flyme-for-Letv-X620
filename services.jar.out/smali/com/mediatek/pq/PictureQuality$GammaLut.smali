.class public Lcom/mediatek/pq/PictureQuality$GammaLut;
.super Ljava/lang/Object;
.source "PictureQuality.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/pq/PictureQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GammaLut"
.end annotation


# instance fields
.field public hwid:I

.field public lut:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x200

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/mediatek/pq/PictureQuality$GammaLut;->lut:[I

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/pq/PictureQuality$GammaLut;->set(II)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public set(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 132
    if-ltz p1, :cond_0

    const/16 v0, 0x200

    if-ge p1, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mediatek/pq/PictureQuality$GammaLut;->lut:[I

    aput p2, v0, p1

    .line 131
    :cond_0
    return-void
.end method
