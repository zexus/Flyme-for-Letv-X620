.class Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;
.super Lcom/mediatek/sensorhub/SensorHubService$Holder;
.source "SensorHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/SensorHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingHolder"
.end annotation


# instance fields
.field public cgesture:I

.field public gesture:I

.field public mCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "gesture"    # I
    .param p2, "cgesture"    # I
    .param p3, "count"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mediatek/sensorhub/SensorHubService$Holder;-><init>()V

    .line 83
    iput p1, p0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->gesture:I

    .line 84
    iput p2, p0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->cgesture:I

    .line 85
    iput p3, p0, Lcom/mediatek/sensorhub/SensorHubService$MappingHolder;->mCount:I

    .line 81
    return-void
.end method
