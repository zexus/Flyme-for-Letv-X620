.class Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;
.super Ljava/lang/Object;
.source "ImsSwitchController.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IRadioPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ImsSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RadioPowerInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/ImsSwitchController;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyRadioPowerChange(ZI)V
    .locals 4
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .prologue
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyRadioPowerChange, power:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap4(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap1(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v0

    .line 160
    .local v0, "isVoLTEEnable":Z
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap2(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z

    move-result v1

    .line 162
    .local v1, "isVoWiFiEnable":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyRadioPowerChange, isVoLTEEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    const-string/jumbo v3, " isVoWiFiEnable:"

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap4(Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_2

    .line 167
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v3, 0x1

    invoke-static {v2, v3, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap7(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    .line 153
    .end local v0    # "isVoLTEEnable":Z
    .end local v1    # "isVoWiFiEnable":Z
    :cond_1
    :goto_0
    return-void

    .line 175
    .restart local v0    # "isVoLTEEnable":Z
    .restart local v1    # "isVoWiFiEnable":Z
    :cond_2
    if-nez v1, :cond_1

    .line 176
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;->this$0:Lcom/mediatek/internal/telephony/ImsSwitchController;

    const/4 v3, 0x0

    invoke-static {v2, v3, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->-wrap7(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V

    goto :goto_0
.end method
