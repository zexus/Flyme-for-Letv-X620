.class public Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;
.super Ljava/lang/Object;
.source "LeUISystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/provider/settings/LeUISystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidUtils"
.end annotation


# static fields
.field public static final LEUI_PUBLIC_SETTINGS:Ljava/util/Set;
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
    .locals 2

    .prologue
    .line 515
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    .line 517
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "usage_limit_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_exp_program_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_settings_upgrade_new_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_usbsettings_never_show_forever"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_single_hand_unlockscreen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_wake_device_behavior"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_smart_settings_voice_awakens"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_smart_settings_gesture_up"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_smart_settings_gesture_down"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_smart_settings_gesture_left"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_smart_settings_gesture_right"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_smart_settings_gesture_double_click"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_single_hand_dialing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_single_hand_talktime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "access_statusbar_when_lockscreen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_yellow_page_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_call_auto_record"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_ringtone_crescendo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_super_voice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_call_vibrate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_install_dialog_always_ask"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_allow_adb_install"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "network_provider_package"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "choose_network_provider_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_eye_verity_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_notification_pulse_call"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_notification_pulse_sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_notification_pulse_email"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_key_position_policy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_video_display_enhanced"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_backstage_power"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_key_timealign_twilight_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_ecosystem_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_use_fingerprint_setup_camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "wallpaperonline_shake"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_notificaton_visibility_on_keyguard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_long_press_home_behaviour_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_long_press_back_behaviour_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_long_press_recent_behaviour_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_wei_xin_double_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_incallui_record_setting_guide"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sms_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mail_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "EXTRA_LEUIRINGTONE_RET_URI_NAME"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "mutekey_streams_affected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_s_mute_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_s_soft_mute_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_hifi_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_microphone_checked"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_tty_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "vibate_when_in_silent_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "sync_resource_count"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_type_c_headset_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_usb_headset_connected_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "show_touches"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "holzer_switch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "ultrare_solution_switch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "blue_light_switch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "leui_zenmode_temp_cache"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 509
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
