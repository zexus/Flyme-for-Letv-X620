.class public interface abstract Lcom/letv/leui/provider/settings/LeUISecure;
.super Ljava/lang/Object;
.source "LeUISecure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/provider/settings/LeUISecure$Default;
    }
.end annotation


# static fields
.field public static final LEUI_BD_OFFLINE_VOICE_PKG_PATH:Ljava/lang/String; = "baidu_offline_voice_pkg_path"

.field public static final LEUI_COLOR_MODE:Ljava/lang/String; = "leui_color_mode"

.field public static final LEUI_COUNTRY_AREA_REGION_SETTINGS:Ljava/lang/String; = "leui_country_area_region_settings"

.field public static final LEUI_COUNTRY_AREA_REGION_SETTINGS_URI:Landroid/net/Uri;

.field public static final LEUI_SIM_COUNTRY:Ljava/lang/String; = "leui_sim_country"

.field public static final LEUI_TIMEALIGN_ENABLE_KEY:Ljava/lang/String; = "leui_key_timealign_enable"

.field public static final LEUI_USER_FINGERPRINT_ENABLED:Ljava/lang/String; = "fingerprint_enabled"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "leui_country_area_region_settings"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/provider/settings/LeUISecure;->LEUI_COUNTRY_AREA_REGION_SETTINGS_URI:Landroid/net/Uri;

    .line 21
    return-void
.end method
