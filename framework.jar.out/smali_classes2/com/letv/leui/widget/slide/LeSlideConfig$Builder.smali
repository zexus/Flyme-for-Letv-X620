.class public Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
.super Ljava/lang/Object;
.source "LeSlideConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/slide/LeSlideConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Lcom/letv/leui/widget/slide/LeSlideConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/letv/leui/widget/slide/LeSlideConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/letv/leui/widget/slide/LeSlideConfig;-><init>(Lcom/letv/leui/widget/slide/LeSlideConfig;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    .line 175
    return-void
.end method


# virtual methods
.method public build()Lcom/letv/leui/widget/slide/LeSlideConfig;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    return-object v0
.end method

.method public distanceThreshold(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "threshold"    # F

    .prologue
    .line 220
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set2(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    .line 221
    return-object p0
.end method

.method public edge(Z)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 225
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set3(Lcom/letv/leui/widget/slide/LeSlideConfig;Z)Z

    .line 226
    return-object p0
.end method

.method public edgeSize(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "edgeSize"    # F

    .prologue
    .line 230
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set4(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    .line 231
    return-object p0
.end method

.method public listener(Lcom/letv/leui/widget/slide/LeSlideListener;)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlideListener;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set5(Lcom/letv/leui/widget/slide/LeSlideConfig;Lcom/letv/leui/widget/slide/LeSlideListener;)Lcom/letv/leui/widget/slide/LeSlideListener;

    .line 249
    return-object p0
.end method

.method public parallaxOffset(I)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set6(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I

    .line 239
    return-object p0
.end method

.method public primaryColor(I)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set0(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I

    .line 181
    return-object p0
.end method

.method public secondaryColor(I)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set1(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I

    .line 186
    return-object p0
.end method

.method public sensitivity(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 195
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set7(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    .line 196
    return-object p0
.end method

.method public slideDuration(I)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set8(Lcom/letv/leui/widget/slide/LeSlideConfig;I)I

    .line 244
    return-object p0
.end method

.method public touchSize(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 190
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set9(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    .line 191
    return-object p0
.end method

.method public velocityThreshold(F)Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;
    .locals 1
    .param p1, "threshold"    # F

    .prologue
    .line 215
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->config:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-static {v0, p1}, Lcom/letv/leui/widget/slide/LeSlideConfig;->-set10(Lcom/letv/leui/widget/slide/LeSlideConfig;F)F

    .line 216
    return-object p0
.end method
