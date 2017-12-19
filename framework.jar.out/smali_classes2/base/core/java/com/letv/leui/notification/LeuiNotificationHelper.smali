.class public Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
.super Landroid/os/Handler;
.source "LeuiNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$1;,
        Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;,
        Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$3;,
        Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;,
        Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;,
        Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$6;,
        Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$7;
    }
.end annotation


# static fields
.field private static DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z = false

.field private static final ENABLE_NOTIFICATION_TURNING_ON:Z = true

.field private static final ENABLE_THIRD_PART_APP_STATISTICAL:Z = true

.field private static final LETV_CLONE:Ljava/lang/String; = ".LetvClone"

.field private static final MESSAGE_SEND_BROADCAST:I = 0x1

.field private static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final SAVE_TO_FILE_DELAY:J = 0x7d0L

.field private static mBootCompleted:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mDisableProximityRunnable:Ljava/lang/Runnable;

.field private mNotificationByStatistical:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationHeadsUpNeedSave:Z

.field private mNotificationOnKeyguardNeedSave:Z

.field private mNotificationSubscriptNeedSave:Z

.field private mNotificationSubscriptSettingsNeedSave:Z

.field private mPM:Landroid/os/PowerManager;

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field mProximitySensorEnabled:Z

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

.field private mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

.field private mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

.field private mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpScreenRunnable:Ljava/lang/Runnable;

.field private mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

.field private mXmlStringHelper:Lbase/core/java/com/letv/leui/notification/XmlStringHelper;

.field private notificationHeadsUpEnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private notificationOnKeyguardEnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSubscriptLinkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSubscriptMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSubscriptPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSubscriptSettingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private systemPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get7(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get8(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationHeadsUpNeedSave:Z

    return p1
.end method

.method static synthetic -set1(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationOnKeyguardNeedSave:Z

    return p1
.end method

.method static synthetic -set2(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptNeedSave:Z

    return p1
.end method

.method static synthetic -set3(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptSettingsNeedSave:Z

    return p1
.end method

.method static synthetic -wrap0(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "isClone"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->broadcastSubscriptChange(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap10(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationSubscriptMapToFile()V

    return-void
.end method

.method static synthetic -wrap11(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationSubscriptSettingMapToFile()V

    return-void
.end method

.method static synthetic -wrap12(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->wakeUpScreen()V

    return-void
.end method

.method static synthetic -wrap2(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->disableProximityLockLocked()V

    return-void
.end method

.method static synthetic -wrap3(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)V
    .locals 0
    .param p1, "coverBySomething"    # Z

    .prologue
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationHeadsUpEnableMapFromFile()V

    return-void
.end method

.method static synthetic -wrap5(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationOnKeyguardEnableMapFromFile()V

    return-void
.end method

.method static synthetic -wrap6(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationSubscriptMapFromFile()V

    return-void
.end method

.method static synthetic -wrap7(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationSubscriptSettingMapFromFile()V

    return-void
.end method

.method static synthetic -wrap8(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationHeadsUpMapToFile()V

    return-void
.end method

.method static synthetic -wrap9(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationOnKeyguardMapToFile()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z

    .line 241
    sput-boolean v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "Looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "priorityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    .line 104
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$1;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$1;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 174
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mDisableProximityRunnable:Ljava/lang/Runnable;

    .line 183
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$3;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$3;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    .line 226
    const-class v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    .line 235
    new-instance v0, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {v0}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    .line 236
    new-instance v0, Lbase/core/java/com/letv/leui/notification/XmlStringHelper;

    invoke-direct {v0}, Lbase/core/java/com/letv/leui/notification/XmlStringHelper;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlStringHelper:Lbase/core/java/com/letv/leui/notification/XmlStringHelper;

    .line 242
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptNeedSave:Z

    .line 243
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptSettingsNeedSave:Z

    .line 244
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationOnKeyguardNeedSave:Z

    .line 245
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationHeadsUpNeedSave:Z

    .line 256
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

    .line 264
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

    .line 272
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$6;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$6;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

    .line 280
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$7;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$7;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

    .line 290
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    .line 291
    iput-object p3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    .line 292
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 302
    const-string/jumbo v1, "notification.disable_turn_on_screen_for_zenmod"

    .line 301
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z

    .line 288
    return-void
.end method

.method private broadcastSubscriptChange(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "isClone"    # Z

    .prologue
    const/4 v4, 0x1

    .line 461
    sget-boolean v2, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    if-nez v2, :cond_0

    .line 462
    const-string/jumbo v2, "1"

    const-string/jumbo v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    .line 464
    :cond_0
    sget-boolean v2, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    if-nez v2, :cond_1

    .line 465
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "broadcastSubscriptChange(),reject sendBroadcast before  completed. action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 468
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    if-eqz p4, :cond_2

    .line 472
    const-string/jumbo v2, ".LetvClone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 474
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iput v4, v1, Landroid/os/Message;->what:I

    .line 476
    invoke-virtual {p0, v1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->sendMessage(Landroid/os/Message;)Z

    .line 460
    return-void
.end method

.method private disableProximityLockLocked()V
    .locals 6

    .prologue
    .line 144
    iget-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_1

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 148
    .local v2, "identity":J
    :try_start_0
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :goto_0
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    .line 143
    .end local v2    # "identity":J
    :cond_1
    return-void

    .line 149
    .restart local v2    # "identity":J
    :catchall_0
    move-exception v1

    .line 150
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw v1

    .line 155
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 122
    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    if-nez v2, :cond_0

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    .line 124
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 128
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 129
    iget-object v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    .line 128
    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mDisableProximityRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v2, v4, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .end local v0    # "identity":J
    :cond_0
    return-void

    .line 130
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    throw v2
.end method

.method private getDefaultNotificationPriorityMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1100007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNotificationSubscriptLinkMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlStringHelper:Lbase/core/java/com/letv/leui/notification/XmlStringHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1100009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlStringHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNotificationSubscriptMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1100008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getLinkPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 636
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private getNotificationHeadsUpEnableSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 318
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "notificationHeadsUpSettings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNotificationOnKeyguardEnableSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 314
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "notificationOnKeyguardSettings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNotificationSubscriptSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 306
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "notificationSubscript.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNotificationSubscriptSettingSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 310
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "notificationSubscriptSettings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 204
    const/4 v2, 0x0

    .line 205
    .local v2, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    const-string/jumbo v3, "com.android.vending"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    const-string/jumbo v3, "com.google."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 207
    if-eqz v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v2

    .line 212
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 213
    const/4 v4, 0x0

    .line 212
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 214
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 215
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onPackageDataCleared(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 641
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 642
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 643
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPackageDataCleared(), pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 646
    .local v3, "packageStartKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 647
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 648
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 649
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 650
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 652
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    invoke-virtual {p0, v2, v8}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->setNotificationSubscript(Ljava/lang/String;I)Z

    goto :goto_0

    .line 659
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPackageDataCleared(),pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v3    # "packageStartKey":Ljava/lang/String;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 662
    :cond_3
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPackageDataCleared(),data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private proximityChangedLocked(Z)V
    .locals 1
    .param p1, "coverBySomething"    # Z

    .prologue
    .line 164
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    if-eqz p1, :cond_1

    .line 168
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    :cond_1
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->disableProximityLockLocked()V

    .line 171
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mDisableProximityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method private readNotificationHeadsUpEnableMapFromFile()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationHeadsUpEnableSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    .line 370
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    .line 372
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 373
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getDefaultNotificationPriorityMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    .line 374
    :cond_1
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    .line 368
    :cond_2
    return-void
.end method

.method private readNotificationOnKeyguardEnableMapFromFile()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationOnKeyguardEnableSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    .line 360
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    .line 362
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 363
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getDefaultNotificationPriorityMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    .line 364
    :cond_1
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    .line 358
    :cond_2
    return-void
.end method

.method private readNotificationSubscriptMapFromFile()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    .line 339
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getDefaultNotificationSubscriptMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    .line 341
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    .line 343
    :cond_1
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->resolveNotificationSubscriptPkgFromMap(Ljava/util/HashMap;)V

    .line 337
    return-void
.end method

.method private readNotificationSubscriptSettingMapFromFile()V
    .locals 6

    .prologue
    .line 379
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getDefaultNotificationSubscriptLinkMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    .line 380
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 381
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    .line 383
    :cond_0
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSettingSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    .line 384
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 385
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    .line 387
    :cond_1
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "readNotificationSubscriptSettingMapFromFile()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 390
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 393
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    .local v1, "linkPkg":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 395
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "link key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to linkPkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 378
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "linkPkg":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private resolveNotificationSubscriptPkgFromMap(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 403
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 404
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 405
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 407
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 408
    .local v2, "val":I
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 402
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_0
    return-void
.end method

.method private saveNotificationHeadsUpMapToFile()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationHeadsUpEnableSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 333
    return-void
.end method

.method private saveNotificationOnKeyguardMapToFile()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationOnKeyguardEnableSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 329
    return-void
.end method

.method private saveNotificationSubscriptMapToFile()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 321
    return-void
.end method

.method private saveNotificationSubscriptSettingMapToFile()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSettingSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 325
    return-void
.end method

.method private shutdown()V
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptNeedSave:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 419
    :cond_0
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptSettingsNeedSave:Z

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 423
    :cond_1
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationOnKeyguardNeedSave:Z

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 427
    :cond_2
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationHeadsUpNeedSave:Z

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 413
    :cond_3
    return-void
.end method

.method private wakeUpScreen()V
    .locals 4

    .prologue
    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 198
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 199
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 193
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dumpNotificationSubscript(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 698
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBootCompleted:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 700
    const-string/jumbo v5, "print notificationSubscriptMap data start ~"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 702
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 703
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 704
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 705
    .local v2, "val":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_0
    const-string/jumbo v5, "notificationSubscriptMap data end"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSaveFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 712
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 713
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 714
    const-string/jumbo v5, "print notificationSubscriptPkgMap data start ~"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 716
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 717
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 718
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 719
    .local v3, "val":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " userID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 709
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "notificationSubscriptMap is empty."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 721
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v5, "notificationSubscriptPkgMap data end"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 727
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 728
    const-string/jumbo v5, "print notificationSubscriptLinkMap data start ~"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 730
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 731
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 732
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 733
    .restart local v3    # "val":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to PKG:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 723
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "notificationSubscriptPkgMap is empty."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 735
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const-string/jumbo v5, "notificationSubscriptLinkMap data end"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 741
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 742
    const-string/jumbo v5, "print mNotificationByStatistical data start ~"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 744
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 745
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 746
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 747
    .local v4, "val":Ljava/util/HashMap;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .end local v4    # "val":Ljava/util/HashMap;
    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 737
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "notificationSubscriptLinkMap is empty."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 749
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    const-string/jumbo v5, "mNotificationByStatistical data end"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 755
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 756
    const-string/jumbo v5, "print notificationSubscriptSettingMap data start ~"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 758
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 759
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 760
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 761
    .restart local v2    # "val":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 751
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_8
    const-string/jumbo v5, "mNotificationByStatistical is empty."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 763
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    const-string/jumbo v5, "notificationSubscriptSettingMap data end"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSettingSaveFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 768
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 769
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 770
    const-string/jumbo v5, "print notificationOnKeyguardEnableMap data start ~"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 772
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 773
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 774
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 775
    .restart local v2    # "val":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 765
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_a
    const-string/jumbo v5, "notificationSubscriptSettingMap is empty."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 777
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    const-string/jumbo v5, "notificationOnKeyguardEnableMap data end"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationOnKeyguardEnableSaveFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 782
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 783
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_e

    .line 784
    const-string/jumbo v5, "print notificationHeadsUpEnableMap data start ~"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 786
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 787
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 788
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 789
    .restart local v2    # "val":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 779
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_c
    const-string/jumbo v5, "notificationOnKeyguardEnableMap is empty."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 791
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    const-string/jumbo v5, "notificationHeadsUpEnableMap data end"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_d
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationHeadsUpEnableSaveFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 796
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 797
    const-string/jumbo v5, "print systemPriorityMap data start ~"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 799
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 800
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 801
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 802
    .restart local v2    # "val":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\t key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 793
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_e
    const-string/jumbo v5, "notificationHeadsUpEnableMap is empty."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 804
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f
    const-string/jumbo v5, "systemPriorityMap data end"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 697
    return-void

    .line 806
    :cond_10
    const-string/jumbo v5, "systemPriorityMap is empty."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public getNotificationHeadsUpEnable(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 622
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 624
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 626
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 624
    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 624
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 628
    .local v0, "value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .line 627
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Integer;
    :cond_2
    move v2, v3

    .line 628
    goto :goto_1
.end method

.method public getNotificationHeadsUpEnableMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNotificationOnKeyguardEnable(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 585
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 587
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 589
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 587
    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 587
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 591
    .local v0, "value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .line 590
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Integer;
    :cond_2
    move v2, v3

    .line 591
    goto :goto_1
.end method

.method public getNotificationOnKeyguardEnableMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNotificationSubscript(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 500
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 501
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1

    .line 500
    :cond_0
    const/4 v0, 0x0

    .local v0, "value":Ljava/lang/Integer;
    goto :goto_0

    .line 501
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getNotificationSubscriptEnable(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 548
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 550
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 552
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 550
    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 550
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 554
    .local v0, "value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .line 553
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Integer;
    :cond_2
    move v2, v3

    .line 554
    goto :goto_1
.end method

.method public getNotificationSubscriptEnableMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNotificationSubscriptMap()Ljava/util/Map;
    .locals 9

    .prologue
    .line 505
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 506
    .local v4, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 507
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 508
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 510
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 511
    .local v6, "val":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 512
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 513
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 514
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 515
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 516
    .local v5, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 521
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "val":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    return-object v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 249
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 251
    :pswitch_0
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "result":Z
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->shutdown()V

    .line 670
    const/4 v0, 0x1

    .line 675
    :cond_0
    :goto_0
    return v0

    .line 671
    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    invoke-direct {p0, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->onPackageDataCleared(Landroid/content/Intent;)V

    .line 673
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/16 v6, 0x15

    const/4 v4, 0x0

    .line 679
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 681
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v6, :cond_0

    .line 683
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    :goto_0
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 689
    .local v8, "pkgFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string/jumbo v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v6, :cond_1

    .line 692
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 678
    :goto_1
    return-void

    .line 685
    .end local v8    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 694
    .restart local v8    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v6, p1

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public setNotificationHeadsUpEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 599
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;

    invoke-direct {v0, p0, p1, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 598
    return-void
.end method

.method public setNotificationOnKeyguardEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 562
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$11;

    invoke-direct {v0, p0, p1, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$11;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 561
    return-void
.end method

.method public setNotificationSubscript(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 480
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;

    invoke-direct {v0, p0, p1, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public setNotificationSubscriptEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 525
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;

    invoke-direct {v0, p0, p1, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method public updateNotificationScreenTurningOn(Landroid/app/Notification;ZI)V
    .locals 4
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "screenOn"    # Z
    .param p3, "mInterruptionFilter"    # I

    .prologue
    const/4 v3, 0x0

    .line 79
    sget-boolean v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 81
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "leui.enableNotificationTurningON"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    .line 84
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    const-string/jumbo v1, "NotificationManagerService.mProximityWakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 86
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    .line 88
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    .line 86
    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 89
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 90
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 91
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensor:Landroid/hardware/Sensor;

    .line 94
    :cond_2
    if-nez p2, :cond_3

    .line 95
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->enableProximityLockLocked()V

    .line 78
    :goto_0
    return-void

    .line 97
    :cond_3
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->wakeUpScreen()V

    goto :goto_0
.end method

.method public updateNotificationScreenTurningOn(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "screenOn"    # Z
    .param p3, "mInterruptionFilter"    # I

    .prologue
    const/4 v3, 0x0

    .line 56
    sget-boolean v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 58
    :cond_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    .line 61
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    const-string/jumbo v1, "NotificationManagerService.mProximityWakeLock"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 63
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    .line 65
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    .line 63
    const v2, 0x3000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 67
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 68
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensor:Landroid/hardware/Sensor;

    .line 71
    :cond_2
    if-nez p2, :cond_3

    .line 72
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->enableProximityLockLocked()V

    .line 55
    :goto_0
    return-void

    .line 74
    :cond_3
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->wakeUpScreen()V

    goto :goto_0
.end method

.method public updateNotificationSubscriptByStatistical(ZLandroid/service/notification/StatusBarNotification;Z)V
    .locals 9
    .param p1, "isPost"    # Z
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isShadow"    # Z

    .prologue
    .line 436
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_0

    const-string/jumbo v6, ".LetvClone"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 438
    return-void

    .line 436
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, ""

    goto :goto_0

    .line 439
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 440
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 441
    .local v2, "needInsert":Z
    if-nez v1, :cond_2

    .line 442
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 443
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 445
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 446
    .local v4, "oldSize":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 448
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :goto_1
    if-eqz v2, :cond_3

    .line 452
    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 455
    .local v3, "newSize":I
    if-eq v4, v3, :cond_4

    .line 456
    const-string/jumbo v6, "android.os.action.ACTION_NOTIFICATION_SUBSCRIPT_CHANGED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3, p3}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->broadcastSubscriptChange(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 433
    :cond_4
    return-void

    .line 450
    .end local v3    # "newSize":I
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
