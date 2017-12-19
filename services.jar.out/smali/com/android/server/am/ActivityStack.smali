.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ActivityState;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$myThread;
    }
.end annotation


# static fields
.field private static synthetic -com_android_server_am_ActivityStack$ActivityStateSwitchesValues:[I = null

.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final BOOST_ENABLE_TIMEOUT:I = 0x7d0

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_FROM_CLEARTASK:I = 0x3

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SCREENSHOTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final VALIDATE_TOKENS:Z


# instance fields
.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mAnimationOptions:Landroid/os/Bundle;

.field mAnimationPrev:Lcom/android/server/am/ActivityRecord;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field mDidResume:Z

.field mDisplayId:I

.field private final mEnhancedBoost:Z

.field private mForcedFullscreen:Z

.field mFullscreen:Z

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mOverrideConfig:Landroid/content/res/Configuration;

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field mStackListener:Lcom/android/server/am/ActivityStackListener;

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field private mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private static synthetic -getcom_android_server_am_ActivityStack$ActivityStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/am/ActivityStack;->-com_android_server_am_ActivityStack$ActivityStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityStack;->-com_android_server_am_ActivityStack$ActivityStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/am/ActivityStack$ActivityState;->values()[Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/server/am/ActivityStack;->-com_android_server_am_ActivityStack$ActivityStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)V
    .locals 6
    .param p1, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 193
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 200
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 207
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 212
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 219
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 227
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    .line 240
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    .line 241
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    .line 258
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    .line 269
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    .line 273
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 275
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.mtk_perf_response_time"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 274
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mEnhancedBoost:Z

    .line 393
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 394
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 395
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 396
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 397
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 398
    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 399
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 400
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 401
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 392
    return-void
.end method

.method private adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z
    .locals 7
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2920
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 2921
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " adjustFocusToNextVisibleStack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2922
    .local v0, "myReason":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2923
    return v6

    .line 2920
    .end local v0    # "myReason":Ljava/lang/String;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    .line 2925
    .restart local v0    # "myReason":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2926
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_2

    .line 2927
    return v6

    .line 2929
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2930
    const/4 v3, 0x1

    return v3
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2889
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_2

    .line 2890
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2891
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " adjustFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2892
    .local v0, "myReason":Ljava/lang/String;
    if-eq v1, p1, :cond_1

    .line 2893
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2894
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-ne v2, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2898
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v4, :cond_0

    .line 2899
    invoke-direct {p0, v6, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    move-result v4

    .line 2898
    if-eqz v4, :cond_0

    .line 2900
    return-void

    .line 2904
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 2905
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v5

    .line 2904
    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2907
    return-void

    .line 2912
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 2913
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    .line 2914
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2888
    .end local v0    # "myReason":Ljava/lang/String;
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method private completePauseLocked(Z)V
    .locals 14
    .param p1, "resumeNext"    # Z

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1109
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1110
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Complete pause: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    if-eqz v1, :cond_3

    .line 1113
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v7, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1114
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_8

    .line 1115
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Executing finish of activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v7, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1158
    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    invoke-virtual {v1, v11}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1159
    iput-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1162
    :cond_3
    if-eqz p1, :cond_4

    .line 1163
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 1164
    .local v6, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v7

    if-nez v7, :cond_14

    .line 1165
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6, v1, v10}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1180
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    :goto_1
    if-eqz v1, :cond_7

    .line 1183
    const-string/jumbo v7, "ActivityManager"

    const-string/jumbo v8, "Delay resumeKeyDispatchingLocked() to avoid deadlock."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    new-instance v7, Lcom/android/server/am/ActivityStack$myThread;

    invoke-direct {v7, p0, v1}, Lcom/android/server/am/ActivityStack$myThread;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack$myThread;->start()V

    .line 1187
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_6

    iget-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v7, v8, v12

    if-lez v7, :cond_6

    .line 1188
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v7

    .line 1187
    if-eqz v7, :cond_6

    .line 1189
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v8

    .line 1190
    iget-wide v10, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1189
    sub-long v2, v8, v10

    .line 1191
    .local v2, "diff":J
    cmp-long v7, v2, v12

    if-lez v7, :cond_6

    .line 1192
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1193
    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1195
    :try_start_0
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1196
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1195
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1197
    .local v4, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_5

    .line 1198
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v0

    .line 1203
    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v2    # "diff":J
    .end local v4    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_6
    iput-wide v12, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1207
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 1108
    return-void

    .line 1117
    .restart local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_8
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_12

    .line 1118
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Enqueueing pending stop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1120
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v7, :cond_a

    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_b

    :cond_a
    const-string/jumbo v7, "ActivityManager"

    .line 1121
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Complete pause, no longer waiting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1120
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_b
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v7, :cond_d

    .line 1129
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_c

    const-string/jumbo v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Destroying after pause: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_c
    const-string/jumbo v7, "pause-config"

    invoke-virtual {p0, v1, v11, v7}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto/16 :goto_0

    .line 1131
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1134
    :cond_e
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_f

    .line 1136
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v11, :cond_11

    .line 1141
    :cond_f
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_10

    const-string/jumbo v7, "ActivityManager"

    const-string/jumbo v8, "To many pending stops, forcing idle"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_10
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1144
    sget-boolean v7, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v7, :cond_2

    .line 1145
    const-string/jumbo v7, "ActivityManager"

    const-string/jumbo v8, "ACT-IDLE_NOW_MSG from completePauseLocked for mStoppingActivities.size() > 3"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1148
    :cond_11
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    .line 1152
    :cond_12
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v7, :cond_13

    const-string/jumbo v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "App died during pause, not stopping: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_13
    const/4 v1, 0x0

    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_0

    .line 1167
    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_14
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 1168
    invoke-virtual {v6, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1169
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_15

    if-eqz v1, :cond_4

    if-eq v5, v1, :cond_4

    .line 1175
    :cond_15
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6, v10, v10}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 1193
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_0
    move-exception v7

    monitor-exit v0

    throw v7
.end method

.method private completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 8
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const-wide/16 v6, 0x40

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1217
    const-string/jumbo v1, "amCompleteResume"

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1219
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1220
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1221
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1223
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1225
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1230
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_1

    .line 1232
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 1236
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1238
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1240
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1241
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1246
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    .line 1247
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1252
    :goto_0
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 1254
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_2

    .line 1256
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1260
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1215
    return-void

    .line 1249
    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_0
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2217
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2218
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 2219
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2220
    .local v2, "numTasks":I
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2221
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 2222
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, v5, :cond_0

    .line 2223
    return-object v3

    .line 2220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2227
    .end local v0    # "i":I
    .end local v2    # "numTasks":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1320
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1321
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 1322
    .local v1, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    .line 1323
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1325
    :cond_0
    if-eqz v3, :cond_2

    .line 1326
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1327
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 1328
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, p0, :cond_1

    invoke-direct {v2}, Lcom/android/server/am/ActivityStack;->isStackVisibleLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1329
    return-object v2

    .line 1326
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1333
    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    return-object v5
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 2232
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2233
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 2234
    .local v2, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_0

    .line 2235
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2241
    .end local v2    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2242
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2243
    .local v1, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    .line 2246
    .local v0, "fromHome":Z
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASK_RETURNTO:Z

    if-eqz v9, :cond_1

    .line 2247
    const-string/jumbo v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "insertTaskAtTop() task "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " fromHome="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2248
    const-string/jumbo v11, " isHomeStack="

    .line 2247
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v11

    .line 2247
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2248
    const-string/jumbo v11, " topTask="

    .line 2247
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2248
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 2247
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    if-eqz v1, :cond_1

    .line 2250
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 2251
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lastStack="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "lastTop="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    if-eqz v6, :cond_1

    .line 2253
    const-string/jumbo v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lastTopType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    .end local v6    # "top":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-nez v9, :cond_4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v9

    if-eq v9, p1, :cond_4

    .line 2260
    :cond_2
    if-eqz v0, :cond_3

    .line 2261
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_8

    move v7, v8

    .line 2260
    :cond_3
    :goto_0
    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2270
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2272
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2274
    .local v4, "taskNdx":I
    if-eqz p2, :cond_a

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_a

    const/4 v3, 0x1

    .line 2276
    .local v3, "notShownWhenLocked":Z
    :goto_2
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v3, :cond_7

    .line 2278
    :cond_5
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_6

    .line 2279
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 2280
    .local v5, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v7, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2281
    invoke-virtual {v5, v12}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_5

    .line 2285
    .end local v5    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 2287
    :cond_7
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2288
    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 2230
    return-void

    .line 2263
    .end local v3    # "notShownWhenLocked":Z
    .end local v4    # "taskNdx":I
    .restart local v0    # "fromHome":Z
    .restart local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_8
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskType:I

    goto :goto_0

    .line 2267
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_9
    invoke-virtual {p1, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1

    .line 2275
    .restart local v4    # "taskNdx":I
    :cond_a
    if-nez p2, :cond_b

    invoke-virtual {p1, v12}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_b

    const/4 v3, 0x1

    .restart local v3    # "notShownWhenLocked":Z
    goto :goto_2

    .end local v3    # "notShownWhenLocked":Z
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "notShownWhenLocked":Z
    goto :goto_2
.end method

.method private isStackVisibleLocked()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1339
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1340
    return v9

    .line 1343
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1344
    return v10

    .line 1352
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    add-int/lit8 v2, v8, 0x1

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 1353
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 1357
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v8, v4, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v8, :cond_3

    .line 1352
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1360
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 1361
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_1
    if-ltz v6, :cond_2

    .line 1362
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 1363
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1364
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_6

    .line 1365
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1373
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_5

    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v8, :cond_4

    .line 1374
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_5

    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    .line 1373
    if-eqz v8, :cond_5

    .line 1375
    :cond_4
    return v9

    .line 1364
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1361
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1381
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_7
    return v10
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4194
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4195
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    .line 4197
    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    .line 4198
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 4199
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 4200
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    aput-object v1, v2, v3

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 4197
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4193
    return-void

    .line 4195
    :cond_0
    const/4 v1, 0x0

    .local v1, "strData":Ljava/lang/String;
    goto :goto_0
.end method

.method private perfBoostResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4893
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-nez v0, :cond_0

    .line 4894
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceWrapper;

    invoke-direct {v0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 4897
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_2

    .line 4898
    const-string/jumbo v0, "amPerfBoost"

    const-wide/16 v2, 0x40

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 4899
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERFSRV:Z

    if-eqz v0, :cond_1

    .line 4900
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "boostEnableTimeoutMs(1) cross app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    const/4 v1, 0x1

    .line 4904
    const/16 v2, 0x7d0

    .line 4903
    invoke-interface {v0, v1, v2}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->boostEnableTimeoutMs(II)V

    .line 4892
    :goto_0
    return-void

    .line 4906
    :cond_2
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "PerfService is not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 4374
    const/4 v2, 0x0

    .line 4375
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 4376
    .local v3, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_0

    .line 4377
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4378
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4380
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v3    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ActivityManager"

    .line 4381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Relaunching: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " with results="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " newIntents="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4382
    const-string/jumbo v4, " andResume="

    .line 4381
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4380
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v0, :cond_2

    .line 4385
    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACT-Relaunching: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4386
    const-string/jumbo v4, " with results="

    .line 4385
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4386
    const-string/jumbo v4, " newIntents="

    .line 4385
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4387
    const-string/jumbo v4, " andResume="

    .line 4385
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    :cond_2
    if-eqz p3, :cond_6

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 4390
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v9

    .line 4391
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v1, v6

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v4, v1, v6

    .line 4389
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4393
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4395
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 4398
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_4

    :cond_3
    const-string/jumbo v1, "ActivityManager"

    .line 4399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Moving to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_7

    const-string/jumbo v0, "RESUMED"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " Relaunching "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4398
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4401
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 4402
    if-eqz p3, :cond_8

    :goto_2
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4403
    new-instance v7, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v7, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move v4, p2

    .line 4401
    invoke-interface/range {v0 .. v7}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4411
    :cond_5
    :goto_3
    if-eqz p3, :cond_a

    .line 4412
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4413
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4414
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4420
    :goto_4
    return v9

    .line 4390
    :cond_6
    const/16 v0, 0x7544

    goto/16 :goto_0

    .line 4399
    :cond_7
    :try_start_1
    const-string/jumbo v0, "PAUSED"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_8
    move v5, v9

    .line 4402
    goto :goto_2

    .line 4407
    :catch_0
    move-exception v8

    .line 4408
    .local v8, "e":Landroid/os/RemoteException;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_5

    :cond_9
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "Relaunch failed"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 4416
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4417
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_4
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3525
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 3526
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3527
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 3528
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ActivityManager"

    .line 3529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from stack callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3528
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 3533
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3534
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Lcom/android/server/am/ActivityStack;)V

    .line 3537
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3538
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ActivityManager"

    .line 3539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Moving to DESTROYED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (removed from history)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3538
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3540
    :cond_2
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3541
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Clearing app during remove for activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    :cond_3
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3543
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 3547
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3548
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3549
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ActivityManager"

    .line 3550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActivityFromHistoryLocked: last activity removed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3549
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 3552
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v1

    .line 3551
    if-eqz v1, :cond_5

    .line 3553
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    .line 3555
    :cond_5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 3557
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3558
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 3524
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 5
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3861
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3862
    .local v0, "i":I
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ActivityManager"

    .line 3863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3862
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    :cond_0
    :goto_0
    if-lez v0, :cond_3

    .line 3865
    add-int/lit8 v0, v0, -0x1

    .line 3866
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3867
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    :cond_1
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 3869
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ActivityManager"

    const-string/jumbo v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3871
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 3860
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3518
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3519
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3520
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3521
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 3516
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 24
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .prologue
    .line 2684
    const/4 v15, -0x1

    .line 2685
    .local v15, "replyChainEnd":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    .line 2686
    .local v23, "taskId":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2688
    .local v22, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2689
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2690
    .local v14, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v16

    .line 2693
    .local v16, "rootActivityNdx":I
    add-int/lit8 v13, v14, -0x1

    .local v13, "i":I
    :goto_0
    move/from16 v0, v16

    if-le v13, v0, :cond_0

    .line 2694
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActivityRecord;

    .line 2695
    .local v19, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .line 2802
    .end local v19    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return p5

    .line 2698
    .restart local v19    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2699
    .local v12, "flags":I
    and-int/lit8 v2, v12, 0x2

    if-eqz v2, :cond_3

    const/4 v11, 0x1

    .line 2700
    .local v11, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v12, 0x40

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    .line 2702
    .local v10, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    .line 2709
    if-gez v15, :cond_2

    .line 2710
    move v15, v13

    .line 2693
    :cond_2
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 2699
    .end local v10    # "allowTaskReparenting":Z
    .end local v11    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "finishOnTaskLaunch":Z
    goto :goto_1

    .line 2700
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "allowTaskReparenting":Z
    goto :goto_2

    .line 2712
    :cond_5
    if-eqz p3, :cond_2

    if-eqz v10, :cond_2

    .line 2714
    if-eqz v22, :cond_2

    .line 2715
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2712
    if-eqz v2, :cond_2

    .line 2726
    if-nez p4, :cond_6

    if-eqz v11, :cond_a

    .line 2727
    :cond_6
    if-ltz v15, :cond_8

    move/from16 v18, v15

    .line 2728
    .local v18, "start":I
    :goto_4
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "ActivityManager"

    .line 2729
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finishing task at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2728
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_7
    move/from16 v17, v18

    .local v17, "srcPos":I
    :goto_5
    move/from16 v0, v17

    if-lt v0, v13, :cond_12

    .line 2731
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2732
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_9

    .line 2730
    :goto_6
    add-int/lit8 v17, v17, -0x1

    goto :goto_5

    .line 2727
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "srcPos":I
    .end local v18    # "start":I
    :cond_8
    move/from16 v18, v13

    .restart local v18    # "start":I
    goto :goto_4

    .line 2736
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v17    # "srcPos":I
    :cond_9
    const-string/jumbo v6, "move-affinity"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 2735
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_6

    .line 2739
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "srcPos":I
    .end local v18    # "start":I
    :cond_a
    if-gez p5, :cond_b

    .line 2740
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p5

    .line 2745
    :cond_b
    if-ltz v15, :cond_10

    move/from16 v18, v15

    .line 2746
    .restart local v18    # "start":I
    :goto_7
    sget-boolean v2, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v2, :cond_c

    const-string/jumbo v2, "ActivityManager"

    .line 2747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Reparenting from task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2748
    const-string/jumbo v5, " to task="

    .line 2747
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2748
    const-string/jumbo v5, ":"

    .line 2747
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2746
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :cond_c
    move/from16 v9, p5

    .line 2751
    .local v9, "addTaskPosition":I
    move/from16 v17, v13

    .restart local v17    # "srcPos":I
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_11

    .line 2754
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2755
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2758
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 2759
    add-int/lit8 v9, v9, 0x1

    .line 2760
    add-int/lit8 v18, v18, -0x1

    .line 2761
    add-int/lit8 v17, v17, -0x1

    .line 2765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v2, :cond_d

    .line 2766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Lcom/android/server/am/ActivityStack;)V

    .line 2770
    :cond_d
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "ActivityManager"

    .line 2771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing and adding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to stack at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2772
    const-string/jumbo v5, " callers="

    .line 2771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2772
    const/4 v5, 0x3

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    .line 2771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2770
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :cond_e
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pulling activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2774
    const-string/jumbo v5, " from "

    .line 2773
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2774
    const-string/jumbo v5, " in to resetting task "

    .line 2773
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v23

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    .line 2751
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_8

    .line 2745
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "addTaskPosition":I
    .end local v17    # "srcPos":I
    .end local v18    # "start":I
    :cond_10
    move/from16 v18, v13

    .restart local v18    # "start":I
    goto/16 :goto_7

    .line 2777
    .restart local v9    # "addTaskPosition":I
    .restart local v17    # "srcPos":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2786
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    .line 2787
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 2788
    .local v21, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 2789
    .local v20, "targetNdx":I
    if-lez v20, :cond_12

    .line 2790
    add-int/lit8 v2, v20, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2791
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2792
    const-string/jumbo v6, "replace"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2793
    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 2792
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2799
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "addTaskPosition":I
    .end local v20    # "targetNdx":I
    .end local v21    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_12
    const/4 v15, -0x1

    goto/16 :goto_3
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 45
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1724
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKSCREEN:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->logLockScreen(Ljava/lang/String;)V

    .line 1726
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v3, :cond_3

    .line 1731
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v37, v0

    .line 1732
    .local v37, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v37, :cond_4

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_4

    .line 1736
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 1728
    .end local v37    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 1733
    .restart local v37    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    .line 1742
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .line 1746
    .local v32, "next":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    move/from16 v44, v0

    .line 1747
    .local v44, "userLeaving":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1749
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v39, v0

    .line 1750
    :goto_0
    if-nez v32, :cond_c

    .line 1752
    const-string/jumbo v40, "noMoreActivities"

    .line 1753
    .local v40, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v3, :cond_6

    .line 1756
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;

    move-result-object v42

    .line 1757
    .local v42, "stack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v3, "noMoreActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v3

    return v3

    .line 1749
    .end local v40    # "reason":Ljava/lang/String;
    .end local v42    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5
    const/16 v39, 0x0

    .local v39, "prevTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    .line 1762
    .end local v39    # "prevTask":Lcom/android/server/am/TaskRecord;
    .restart local v40    # "reason":Ljava/lang/String;
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1767
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1768
    const-string/jumbo v3, "ActivityManager"

    const-string/jumbo v4, "Skip to resume home activity!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v3, 0x0

    return v3

    .line 1773
    :cond_7
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_8

    const-string/jumbo v3, "ActivityManager"

    .line 1774
    const-string/jumbo v4, "resumeTopActivityLocked: No more activities go home"

    .line 1773
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_8
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1777
    :cond_9
    if-eqz v39, :cond_a

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1778
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v41

    .line 1779
    .local v41, "returnTaskType":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v4, "noMoreActivities"

    move/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v3

    .line 1779
    :goto_2
    return v3

    .line 1778
    .end local v41    # "returnTaskType":I
    :cond_a
    const/16 v41, 0x1

    .restart local v41    # "returnTaskType":I
    goto :goto_1

    .line 1779
    :cond_b
    const/4 v3, 0x0

    goto :goto_2

    .line 1783
    .end local v40    # "reason":Ljava/lang/String;
    .end local v41    # "returnTaskType":I
    :cond_c
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    if-ne v3, v0, :cond_f

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_f

    .line 1787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    .line 1786
    if-eqz v3, :cond_f

    .line 1790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1792
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1793
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_d

    const-string/jumbo v3, "ActivityManager"

    .line 1794
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeTopActivityLocked: Top activity resumed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1793
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_d
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1796
    :cond_e
    const/4 v3, 0x0

    return v3

    .line 1799
    :cond_f
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v34, v0

    .line 1800
    .local v34, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v39, :cond_11

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_11

    .line 1801
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    .line 1800
    if-eqz v3, :cond_11

    .line 1801
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 1800
    if-eqz v3, :cond_11

    .line 1801
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1800
    if-eqz v3, :cond_11

    .line 1802
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1803
    :cond_10
    move-object/from16 v0, v39

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_14

    .line 1804
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 1824
    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    if-ne v3, v0, :cond_1a

    .line 1826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    .line 1824
    if-eqz v3, :cond_1a

    .line 1829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1831
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1832
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_12

    const-string/jumbo v3, "ActivityManager"

    .line 1833
    const-string/jumbo v4, "resumeTopActivityLocked: Going to sleep and all paused"

    .line 1832
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_12
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1835
    :cond_13
    const/4 v3, 0x0

    return v3

    .line 1805
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    move-object/from16 v0, v39

    if-eq v0, v3, :cond_15

    .line 1808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v43, v3, 0x1

    .line 1809
    .local v43, "taskNdx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_3

    .line 1810
    .end local v43    # "taskNdx":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1811
    const/4 v3, 0x0

    return v3

    .line 1812
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1813
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_17

    const-string/jumbo v3, "ActivityManager"

    .line 1814
    const-string/jumbo v4, "resumeTopActivityLocked: Launching home next"

    .line 1813
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_17
    if-eqz v39, :cond_18

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1816
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v41

    .line 1817
    .restart local v41    # "returnTaskType":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v4, "prevFinished"

    move/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v3

    .line 1817
    :goto_5
    return v3

    .line 1816
    .end local v41    # "returnTaskType":I
    :cond_18
    const/16 v41, 0x1

    .restart local v41    # "returnTaskType":I
    goto :goto_4

    .line 1817
    :cond_19
    const/4 v3, 0x0

    goto :goto_5

    .line 1841
    .end local v41    # "returnTaskType":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1c

    .line 1842
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skipping resume of top activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1843
    const-string/jumbo v5, ": user "

    .line 1842
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1843
    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 1842
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1843
    const-string/jumbo v5, " is stopped"

    .line 1842
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1845
    :cond_1b
    const/4 v3, 0x0

    return v3

    .line 1850
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1851
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1852
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1853
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1855
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Resuming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1860
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_1f

    :cond_1e
    const-string/jumbo v3, "ActivityManager"

    .line 1861
    const-string/jumbo v4, "resumeTopActivityLocked: Skip resume: some activity pausing."

    .line 1860
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_1f
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1863
    :cond_20
    const/4 v3, 0x0

    return v3

    .line 1895
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 1898
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->perfBoostResume()V

    .line 1903
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_28

    const/16 v25, 0x1

    .line 1904
    .local v25, "dontWaitForPause":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    move/from16 v0, v44

    move/from16 v1, v25

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    move-result v38

    .line 1905
    .local v38, "pausing":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_23

    .line 1906
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_22

    const-string/jumbo v3, "ActivityManager"

    .line 1907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeTopActivityLocked: Pausing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1906
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_22
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v3

    or-int v38, v38, v3

    .line 1910
    :cond_23
    if-eqz v38, :cond_29

    .line 1911
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_24

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_25

    :cond_24
    const-string/jumbo v3, "ActivityManager"

    .line 1912
    const-string/jumbo v4, "resumeTopActivityLocked: Skip resume: need to start pausing"

    .line 1911
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    :cond_25
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_26

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_26

    .line 1918
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1920
    :cond_26
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 1921
    :cond_27
    const/4 v3, 0x1

    return v3

    .line 1903
    .end local v25    # "dontWaitForPause":Z
    .end local v38    # "pausing":Z
    :cond_28
    const/16 v25, 0x0

    .restart local v25    # "dontWaitForPause":Z
    goto :goto_6

    .line 1926
    .restart local v38    # "pausing":Z
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivityLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1927
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkIfBlockResumeTop(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1928
    const-string/jumbo v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACT-Because running the window animation, can\'t resumeTopActivityLocked  mAnimationPrev = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1929
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    .line 1928
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1929
    const-string/jumbo v6, " prev = "

    .line 1928
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    .line 1931
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    .line 1932
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDidResume:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    :cond_2a
    monitor-exit v4

    .line 1941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2b

    .line 1942
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_38

    .line 1950
    :cond_2b
    :goto_7
    if-eqz p1, :cond_2d

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_2d

    .line 1951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1952
    if-eqz v32, :cond_2c

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_3a

    .line 1965
    :cond_2c
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_3b

    .line 1966
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1967
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "ActivityManager"

    .line 1968
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not waiting for visible to hide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", waitingVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1969
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1968
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1970
    const-string/jumbo v5, ", nowVisible="

    .line 1968
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1970
    move-object/from16 v0, v32

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 1968
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1967
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_2d
    :goto_8
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1985
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    const/4 v6, 0x0

    .line 1984
    invoke-interface {v3, v4, v6, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1995
    :goto_9
    const/16 v23, 0x1

    .line 1996
    .local v23, "anim":Z
    if-eqz p1, :cond_43

    .line 1997
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_3e

    .line 1998
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_2e

    const-string/jumbo v3, "ActivityManager"

    .line 1999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prepare close transition: prev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1998
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2001
    const/16 v23, 0x0

    .line 2002
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2008
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2038
    :goto_b
    const/4 v8, 0x0

    .line 2039
    .local v8, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v23, :cond_46

    .line 2040
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    move-result-object v36

    .line 2041
    .local v36, "opts":Landroid/app/ActivityOptions;
    if-eqz v36, :cond_2f

    .line 2042
    invoke-virtual/range {v36 .. v36}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 2044
    .end local v8    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_2f
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 2049
    .end local v36    # "opts":Landroid/app/ActivityOptions;
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v30

    .line 2050
    .local v30, "lastStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5b

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_5b

    .line 2051
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_30

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Resume running: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2057
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2060
    if-nez v30, :cond_47

    const/16 v29, 0x0

    .line 2061
    :goto_d
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v31, v0

    .line 2063
    .local v31, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2065
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_31

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Moving to RESUMED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (in existing)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_31
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v32

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2067
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2068
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 2069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2071
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2076
    const/16 v35, 0x1

    .line 2077
    .local v35, "notUpdated":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 2080
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_48

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2078
    :goto_e
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v24

    .line 2081
    .local v24, "config":Landroid/content/res/Configuration;
    if-eqz v24, :cond_32

    .line 2082
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2084
    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v3

    if-eqz v3, :cond_49

    const/16 v35, 0x0

    .line 2087
    .end local v24    # "config":Landroid/content/res/Configuration;
    :cond_33
    :goto_f
    if-eqz v35, :cond_4c

    .line 2093
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v33

    .line 2094
    .local v33, "nextNext":Lcom/android/server/am/ActivityRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v3, :cond_34

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_35

    :cond_34
    const-string/jumbo v3, "ActivityManager"

    .line 2095
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity config changed during resume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2096
    const-string/jumbo v5, ", new next: "

    .line 2095
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2094
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :cond_35
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_36

    .line 2099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2101
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 2102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2103
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2104
    :cond_37
    const/4 v3, 0x1

    return v3

    .line 1926
    .end local v23    # "anim":Z
    .end local v30    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v35    # "notUpdated":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1943
    :cond_38
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_39

    const-string/jumbo v3, "ActivityManager"

    .line 1944
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no-history finish of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " on new resume"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1943
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 1946
    const-string/jumbo v7, "resume-no-history"

    .line 1945
    const/4 v5, 0x0

    .line 1946
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    .line 1945
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1947
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_7

    .line 1953
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "ActivityManager"

    .line 1955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Resuming top, waiting visible to hide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1954
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1972
    :cond_3b
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_2d

    const-string/jumbo v3, "ActivityManager"

    .line 1973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Previous already visible but still waiting to hide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1974
    const-string/jumbo v5, ", waitingVisible="

    .line 1973
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1975
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 1973
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1976
    const-string/jumbo v5, ", nowVisible="

    .line 1973
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1976
    move-object/from16 v0, v32

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 1973
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1972
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1987
    :catch_0
    move-exception v27

    .line 1988
    .local v27, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1989
    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1988
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1989
    const-string/jumbo v5, ": "

    .line 1988
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2004
    .end local v27    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v23    # "anim":Z
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_3d

    .line 2005
    const/4 v3, 0x7

    .line 2006
    :goto_10
    const/4 v5, 0x0

    .line 2004
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_a

    .line 2006
    :cond_3d
    const/16 v3, 0x9

    goto :goto_10

    .line 2011
    :cond_3e
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_3f

    const-string/jumbo v3, "ActivityManager"

    .line 2012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prepare open transition: prev="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2011
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2014
    const/16 v23, 0x0

    .line 2015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_b

    .line 2017
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_41

    .line 2018
    const/4 v3, 0x6

    .line 2021
    :goto_11
    const/4 v5, 0x0

    .line 2017
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_b

    .line 2019
    :cond_41
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_42

    .line 2020
    const/16 v3, 0x10

    goto :goto_11

    .line 2021
    :cond_42
    const/16 v3, 0x8

    goto :goto_11

    .line 2029
    :cond_43
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_44

    const-string/jumbo v3, "ActivityManager"

    const-string/jumbo v4, "Prepare open transition: no previous"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2031
    const/16 v23, 0x0

    .line 2032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_b

    .line 2034
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_b

    .line 2046
    .restart local v8    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_46
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_c

    .line 2060
    .end local v8    # "resumeAnimOptions":Landroid/os/Bundle;
    .restart local v30    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_47
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v29, v0

    .local v29, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_d

    .line 2080
    .end local v29    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v35    # "notUpdated":Z
    :cond_48
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 2084
    .restart local v24    # "config":Landroid/content/res/Configuration;
    :cond_49
    const/16 v35, 0x1

    goto/16 :goto_f

    .line 2106
    .end local v24    # "config":Landroid/content/res/Configuration;
    .restart local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_4a
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_4b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2107
    :cond_4b
    const/4 v3, 0x0

    return v3

    .line 2112
    .end local v33    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_4c
    :try_start_2
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 2113
    .local v22, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v22, :cond_4e

    .line 2114
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 2115
    .local v21, "N":I
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_4e

    if-lez v21, :cond_4e

    .line 2116
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v3, :cond_4d

    const-string/jumbo v3, "ActivityManager"

    .line 2117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Delivering results to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2116
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :cond_4d
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v22

    invoke-interface {v3, v4, v0}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2122
    .end local v21    # "N":I
    :cond_4e
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_4f

    .line 2123
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 2126
    :cond_4f
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2127
    invoke-static/range {v32 .. v32}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 2126
    const/16 v4, 0x7537

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2130
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_50

    .line 2131
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACT-AM_RESUME_ACTIVITY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_50
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2136
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2137
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2138
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2141
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->reasonIntent:Landroid/content/Intent;

    if-eqz v3, :cond_54

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->reasonIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v7

    .line 2142
    .local v7, "reasonFlags":I
    :goto_12
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_51

    .line 2143
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduleResume next.reasonIntent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " next="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_51
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    .line 2147
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v6

    .line 2146
    invoke-interface/range {v3 .. v8}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZILandroid/os/Bundle;)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2151
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_52

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeTopActivityLocked: Resumed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2179
    :cond_52
    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2180
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2190
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2212
    .end local v7    # "reasonFlags":I
    .end local v22    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v35    # "notUpdated":Z
    :goto_13
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2213
    :cond_53
    const/4 v3, 0x1

    return v3

    .line 2141
    .restart local v22    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .restart local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v35    # "notUpdated":Z
    :cond_54
    const/4 v7, 0x0

    .restart local v7    # "reasonFlags":I
    goto/16 :goto_12

    .line 2152
    .end local v7    # "reasonFlags":I
    .end local v22    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_1
    move-exception v26

    .line 2154
    .local v26, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_55

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Resume failed; resetting state to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2155
    const-string/jumbo v5, ": "

    .line 2154
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_55
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2157
    if-eqz v30, :cond_56

    .line 2158
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2160
    :cond_56
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_59

    .line 2162
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2171
    :cond_57
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2172
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_58

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2173
    :cond_58
    const/4 v3, 0x1

    return v3

    .line 2163
    :cond_59
    if-eqz v30, :cond_57

    .line 2164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    .line 2163
    if-eqz v3, :cond_57

    .line 2165
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2166
    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 2167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v13

    .line 2168
    move-object/from16 v0, v32

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v32

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move/from16 v16, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move/from16 v17, v0

    .line 2169
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 2165
    invoke-virtual/range {v9 .. v20}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_14

    .line 2181
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v7    # "reasonFlags":I
    .restart local v22    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_2
    move-exception v26

    .line 2184
    .restart local v26    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2185
    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2186
    const-string/jumbo v13, "resume-exception"

    .line 2185
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2186
    const/4 v14, 0x1

    move-object/from16 v9, p0

    .line 2185
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2187
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_5a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->validateTopActivitiesLocked()V

    .line 2188
    :cond_5a
    const/4 v3, 0x1

    return v3

    .line 2194
    .end local v7    # "reasonFlags":I
    .end local v22    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v31    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v35    # "notUpdated":Z
    :cond_5b
    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_5e

    .line 2195
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2208
    :cond_5c
    :goto_15
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeTopActivityLocked: Restarting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_5d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_13

    .line 2198
    :cond_5e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2199
    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 2200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2201
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2200
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v13

    .line 2202
    move-object/from16 v0, v32

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2203
    move-object/from16 v0, v32

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move/from16 v16, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move/from16 v17, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    move/from16 v18, v0

    .line 2204
    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 2198
    invoke-virtual/range {v9 .. v20}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 2206
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v3, :cond_5c

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Restarting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1986
    .end local v23    # "anim":Z
    .end local v30    # "lastStack":Lcom/android/server/am/ActivityStack;
    :catch_3
    move-exception v28

    .local v28, "e1":Landroid/os/RemoteException;
    goto/16 :goto_9
.end method

.method private setVisible(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    .line 1264
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1265
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1266
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 1267
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "containerNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1268
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1269
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    .line 1267
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1263
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method private skipStartActivityInEnsureVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cur"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x1

    .line 1388
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1389
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 1390
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->checkIfBlockResumeTop(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    .line 1392
    :goto_0
    if-eqz v0, :cond_2

    .line 1393
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ActivityManager"

    const-string/jumbo v2, "Skip by halt activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_0
    return v4

    .line 1388
    :cond_1
    const/4 v0, 0x0

    .local v0, "realHaltActivity":Z
    goto :goto_0

    .line 1398
    .end local v0    # "realHaltActivity":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    iget v2, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1399
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Skip by not existing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_3
    return v4

    .line 1404
    :cond_4
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1405
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ActivityManager"

    const-string/jumbo v2, "Skip by alarm boot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_5
    return v4

    .line 1410
    :cond_6
    const/4 v1, 0x0

    return v1
.end method

.method private startLaunchTraces(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    .line 740
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 741
    const-string/jumbo v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 744
    const-string/jumbo v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 739
    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 748
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 749
    const-string/jumbo v0, "drawing"

    const-wide/16 v2, 0x40

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 750
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    .line 747
    :cond_0
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3792
    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3793
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 3794
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3796
    :cond_0
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "activityDestroyedLocked: r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3799
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_2

    .line 3800
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3801
    invoke-direct {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3804
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3789
    return-void

    .line 3805
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    .line 3806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3805
    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1017
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ActivityManager"

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Activity paused: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1017
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v1, :cond_1

    .line 1022
    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACT-paused: token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1026
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_5

    .line 1027
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1028
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v0, :cond_7

    .line 1029
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_2

    const-string/jumbo v2, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Moving to PAUSED: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1030
    if-eqz p2, :cond_6

    const-string/jumbo v1, " (due to timeout)"

    .line 1029
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 1050
    :cond_3
    :goto_1
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->ENABLE_THERMAL:Z

    if-eqz v1, :cond_4

    .line 1051
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mThermalManager:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Paused:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->notifyAppState(Ljava/lang/String;Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;)Z

    .line 1052
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_THERMAL:Z

    if-eqz v1, :cond_4

    .line 1053
    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notify Thermal Manager that Package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is paused"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1052
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getFocusAppPid()I

    move-result v3

    .line 1057
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    .line 1058
    sget-object v5, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Paused:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .line 1056
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V

    .line 1016
    :cond_5
    return-void

    .line 1030
    :cond_6
    const-string/jumbo v1, " (pause complete)"

    goto :goto_0

    .line 1033
    :cond_7
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    .line 1034
    iget v1, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v1, v2, v6

    .line 1035
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_a

    .line 1036
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1035
    :goto_2
    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 1033
    const/16 v1, 0x753c

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1037
    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_9

    .line 1038
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "ActivityManager"

    .line 1039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Executing finish of failed to pause activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1038
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_8
    invoke-virtual {p0, v0, v6, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 1044
    :cond_9
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v1, :cond_3

    .line 1045
    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACT-AM_FAILED_TO_PAUSE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " PausingActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1036
    :cond_a
    const-string/jumbo v1, "(none)"

    goto :goto_2
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v8, 0x68

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1066
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getFocusAppPid()I

    move-result v2

    .line 1067
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Stopped:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .line 1066
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V

    .line 1069
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    .line 1070
    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1072
    return-void

    .line 1074
    :cond_0
    if-eqz p3, :cond_1

    .line 1075
    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 1076
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1078
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saving icicle of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_2
    if-eqz p2, :cond_3

    .line 1082
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1083
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1084
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1085
    invoke-virtual {p1, v7, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1087
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v0, :cond_6

    .line 1088
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving to STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (stop complete)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1090
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1091
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1092
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_5

    .line 1093
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1095
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_7

    .line 1096
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 1064
    :cond_6
    :goto_0
    return-void

    .line 1098
    :cond_7
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_8

    .line 1099
    const-string/jumbo v0, "stop-config"

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 1100
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0

    .line 1102
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4833
    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4834
    if-eqz p2, :cond_1

    .line 4835
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4840
    :goto_0
    if-nez p3, :cond_0

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_0

    .line 4842
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4832
    :cond_0
    :goto_1
    return-void

    .line 4837
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4838
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0

    .line 4843
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 779
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 780
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 781
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 782
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 781
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 779
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 785
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    .line 786
    const-string/jumbo v3, "ActivityManager"

    const-string/jumbo v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 777
    :cond_2
    return-void
.end method

.method final backgroundResourcesReleased()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3835
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3836
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3837
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3838
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3839
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3840
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3842
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3834
    return-void
.end method

.method cancelInitializingActivities()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1666
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1667
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .line 1668
    .local v0, "aboveTop":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_4

    .line 1669
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1670
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 1671
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1672
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 1673
    if-ne v3, v5, :cond_0

    .line 1674
    const/4 v0, 0x0

    .line 1670
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1679
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    if-eqz v6, :cond_0

    .line 1680
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "ActivityManager"

    .line 1681
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found orphaned starting window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1680
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_2
    iput-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    .line 1683
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1668
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1665
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_4
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 795
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    .line 797
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sleep needs to pause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_0
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ActivityManager"

    .line 799
    const-string/jumbo v4, "Sleep => pause with userLeaving=false"

    .line 798
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->reasonIntent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 803
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->reasonIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 804
    .local v2, "reasonFlags":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isWentToSleep()Z

    move-result v3

    if-eqz v3, :cond_2

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_2

    .line 805
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clear reson flags for activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 806
    const-string/jumbo v5, " because device going to sleep"

    .line 805
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->reasonIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 808
    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->reasonIntent:Landroid/content/Intent;

    and-int/lit16 v0, v0, -0x1001

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 812
    .end local v0    # "flags":I
    :cond_2
    invoke-virtual {p0, v6, v7, v6, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 813
    return v7

    .line 803
    .end local v2    # "reasonFlags":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "reasonFlags":I
    goto :goto_0

    .line 815
    .end local v2    # "reasonFlags":I
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_6

    .line 817
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sleep still waiting to pause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_5
    return v7

    .line 821
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 823
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    .line 824
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "ActivityManager"

    .line 826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sleep still waiting to stop visible behind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 825
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_7
    return v7

    .line 830
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    return v6
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3470
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 3471
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3473
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 3474
    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3476
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->clearFocusedActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3478
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 3479
    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3481
    if-eqz p3, :cond_4

    .line 3482
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Moving to DESTROYED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (cleaning up)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    :cond_2
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3484
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Clearing app during cleanUp for activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_3
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3491
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3492
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3495
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_7

    .line 3496
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apr$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3497
    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 3498
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_5

    .line 3499
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v7}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 3502
    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_6
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3505
    .end local v1    # "apr$iterator":Ljava/util/Iterator;
    :cond_7
    if-eqz p2, :cond_8

    .line 3506
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3510
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3511
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_9

    .line 3512
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, v7}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 3469
    :cond_9
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 3566
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 3567
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3568
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3569
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 3570
    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 3572
    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 3564
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const-wide/16 v2, 0x0

    .line 769
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    .line 767
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 773
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .prologue
    .line 1617
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 1618
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 1619
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1620
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1621
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1622
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_0

    .line 1623
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 1620
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1617
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1616
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 4446
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_2

    .line 4447
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4448
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_1

    .line 4449
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4450
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 4451
    const-string/jumbo v4, "close-sys"

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4448
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 4446
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 4445
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_2
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1612
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1613
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1610
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .prologue
    .line 4822
    new-instance v0, Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4824
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 4825
    return-object v0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 9
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3583
    const/4 v3, 0x0

    .line 3584
    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    .line 3585
    .local v2, "activityRemoved":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_6

    .line 3586
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3587
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_5

    .line 3588
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3589
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    .line 3587
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3592
    :cond_1
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_2

    .line 3593
    const/4 v3, 0x1

    .line 3595
    :cond_2
    if-eqz p1, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_0

    .line 3598
    :cond_3
    if-eqz v3, :cond_0

    .line 3601
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3602
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Destroying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3603
    const-string/jumbo v8, " resumed="

    .line 3602
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3603
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3602
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3604
    const-string/jumbo v8, " pausing="

    .line 3602
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3604
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3602
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3604
    const-string/jumbo v8, " for reason "

    .line 3602
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3606
    const/4 v2, 0x1

    goto :goto_2

    .line 3585
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 3611
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_6
    if-eqz v2, :cond_7

    .line 3612
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3582
    :cond_7
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3678
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v6, "ActivityManager"

    .line 3679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing activity from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ": token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3680
    const-string/jumbo v7, ", app="

    .line 3679
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3680
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3679
    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3678
    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    :cond_1
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 3682
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 3683
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/4 v6, 0x4

    aput-object p3, v5, v6

    .line 3681
    const/16 v6, 0x7542

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3685
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v5, :cond_2

    .line 3686
    const-string/jumbo v6, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACT-Removing activity from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ": token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3687
    const-string/jumbo v7, ", app="

    .line 3686
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3687
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3686
    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    :cond_2
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->ENABLE_THERMAL:Z

    if-eqz v5, :cond_3

    .line 3692
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mThermalManager:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;->Destroyed:Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;

    invoke-virtual {v5, v6, v7}, Lcom/mediatek/common/thermal/MtkThermalSwitchManager;->notifyAppState(Ljava/lang/String;Lcom/mediatek/common/thermal/MtkThermalSwitchManager$AppState;)Z

    .line 3693
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_THERMAL:Z

    if-eqz v5, :cond_3

    .line 3694
    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notify Thermal Manager that package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " will be destroyed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3693
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getFocusAppPid()I

    move-result v7

    .line 3700
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/server/am/IActivityStateNotifier$ActivityState;->Destroyed:Lcom/android/server/am/IActivityStateNotifier$ActivityState;

    .line 3699
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->notifyActivityState(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/IActivityStateNotifier$ActivityState;)V

    .line 3703
    const/4 v3, 0x0

    .line 3705
    .local v3, "removedFromHistory":Z
    invoke-virtual {p0, p1, v10, v10}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3707
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_e

    const/4 v1, 0x1

    .line 3709
    .local v1, "hadApp":Z
    :goto_2
    if-eqz v1, :cond_11

    .line 3710
    if-eqz p2, :cond_5

    .line 3711
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3712
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, v6, :cond_4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 3713
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 3714
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 3715
    const/16 v6, 0x19

    .line 3714
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 3717
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3720
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3722
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3723
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3727
    :cond_5
    const/4 v4, 0x0

    .line 3730
    .local v4, "skipDestroy":Z
    :try_start_0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Destroying: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    :cond_6
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 3732
    iget v8, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3731
    invoke-interface {v5, v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3745
    :cond_7
    :goto_3
    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 3754
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_8

    if-eqz v4, :cond_f

    .line 3761
    :cond_8
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "ActivityManager"

    .line 3762
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Moving to DESTROYED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (destroy skipped)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3761
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    :cond_9
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3764
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Clearing app during destroy for activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    :cond_a
    iput-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3780
    .end local v4    # "skipDestroy":Z
    :goto_4
    iput v10, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3782
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 3783
    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " being finished, but not in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    :cond_b
    return v3

    .line 3680
    .end local v1    # "hadApp":Z
    .end local v3    # "removedFromHistory":Z
    :cond_c
    const-string/jumbo v5, "(null)"

    goto/16 :goto_0

    .line 3687
    :cond_d
    const-string/jumbo v5, "(null)"

    goto/16 :goto_1

    .line 3707
    .restart local v3    # "removedFromHistory":Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "hadApp":Z
    goto/16 :goto_2

    .line 3733
    .restart local v4    # "skipDestroy":Z
    :catch_0
    move-exception v0

    .line 3738
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_7

    .line 3739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " exceptionInScheduleDestroy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3740
    const/4 v3, 0x1

    .line 3741
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 3755
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_10

    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Moving to DESTROYING: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3756
    const-string/jumbo v7, " (destroy requested)"

    .line 3755
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_10
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3758
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3759
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 3769
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :cond_11
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_12

    .line 3770
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " hadNoApp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3771
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 3773
    :cond_12
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_13

    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Moving to DESTROYED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (no app)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    :cond_13
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3775
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v5, :cond_14

    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Clearing app during destroy for activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    :cond_14
    iput-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_4
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/String;

    .prologue
    .line 4681
    const/4 v12, 0x0

    .line 4682
    .local v12, "printed":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .end local v12    # "printed":Z
    .end local p7    # "header":Ljava/lang/String;
    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_2

    .line 4683
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 4685
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "    "

    const-string/jumbo v4, "Hist"

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    .line 4687
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    Task id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4685
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 4684
    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v12, v0

    .line 4688
    .local v12, "printed":Z
    if-eqz v12, :cond_0

    .line 4689
    const/16 p7, 0x0

    .line 4682
    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 4685
    .end local v12    # "printed":Z
    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    .line 4692
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 15
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 1419
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1420
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_0

    .line 1421
    return-void

    .line 1423
    :cond_0
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "ActivityManager"

    .line 1424
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ensureActivitiesVisible behind "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1425
    const-string/jumbo v14, " configChanges=0x"

    .line 1424
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1425
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    .line 1424
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1423
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_1
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v12, v11, :cond_3

    .line 1428
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1429
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_2

    .line 1431
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1432
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1434
    :cond_2
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x6a

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1439
    :cond_3
    const/4 v1, 0x1

    .line 1440
    .local v1, "aboveTop":Z
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isStackVisibleLocked()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v4, 0x0

    .line 1441
    .local v4, "behindFullscreen":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_6

    const/4 v7, 0x1

    .line 1443
    .local v7, "noStackActivityResumed":Z
    :goto_1
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v10, v12, -0x1

    .local v10, "taskNdx":I
    :goto_2
    if-ltz v10, :cond_25

    .line 1444
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 1445
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1446
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "activityNdx":I
    :goto_3
    if-ltz v3, :cond_24

    .line 1447
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1448
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_7

    .line 1446
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1440
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v4    # "behindFullscreen":Z
    .end local v7    # "noStackActivityResumed":Z
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskNdx":I
    :cond_5
    const/4 v4, 0x1

    .restart local v4    # "behindFullscreen":Z
    goto :goto_0

    .line 1441
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "noStackActivityResumed":Z
    goto :goto_1

    .line 1451
    .restart local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "activityNdx":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskNdx":I
    :cond_7
    if-eqz v1, :cond_8

    if-ne v8, v11, :cond_4

    .line 1454
    :cond_8
    const/4 v1, 0x0

    .line 1457
    if-eqz v4, :cond_9

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v12, :cond_1d

    .line 1458
    :cond_9
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_a

    const-string/jumbo v12, "ActivityManager"

    .line 1459
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Make visible? "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " finishing="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1460
    const-string/jumbo v14, " state="

    .line 1459
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1460
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1459
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1458
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_a
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_b

    .line 1465
    const/4 v12, 0x0

    invoke-virtual {p0, v8, v12}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1468
    :cond_b
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_c

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v12, :cond_15

    .line 1470
    :cond_c
    invoke-direct {p0, v11, v8}, Lcom/android/server/am/ActivityStack;->skipStartActivityInEnsureVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 1473
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_d

    const-string/jumbo v12, "ActivityManager"

    .line 1474
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Start and freeze screen for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1473
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_d
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_e

    .line 1476
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move/from16 v0, p2

    invoke-virtual {v8, v12, v0}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1478
    :cond_e
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_f

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v12, :cond_11

    .line 1479
    :cond_f
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_10

    const-string/jumbo v12, "ActivityManager"

    .line 1480
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Starting and making visible: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1479
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_10
    const/4 v12, 0x1

    invoke-direct {p0, v8, v12}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1483
    :cond_11
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_12

    .line 1484
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1485
    const/4 v13, 0x0

    .line 1484
    invoke-virtual {v12, v8, v7, v13}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1486
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v3, v12, :cond_14

    .line 1488
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .line 1541
    :cond_12
    :goto_5
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int p2, p2, v12

    .line 1543
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v12, :cond_1b

    .line 1545
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_13

    const-string/jumbo v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Fullscreen: at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_13
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 1490
    :cond_14
    const/4 v7, 0x0

    goto :goto_5

    .line 1496
    :cond_15
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_18

    .line 1499
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_16

    const-string/jumbo v12, "ActivityManager"

    .line 1500
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Skipping: already visible at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1499
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_16
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1503
    :try_start_0
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v12, :cond_17

    .line 1504
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 1505
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 1504
    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1509
    :cond_17
    :goto_6
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v13, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v12, v13, :cond_12

    .line 1510
    const/4 v7, 0x0

    goto :goto_5

    .line 1515
    :cond_18
    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1516
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v13, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v12, v13, :cond_12

    move-object/from16 v0, p1

    if-eq v8, v0, :cond_12

    .line 1519
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_19

    const-string/jumbo v12, "ActivityManager"

    .line 1520
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Making visible and scheduling visibility: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1519
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_19
    :try_start_1
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_1a

    .line 1523
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1524
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    :cond_1a
    const/4 v12, 0x1

    invoke-direct {p0, v8, v12}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1527
    const/4 v12, 0x0

    iput-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1528
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1529
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1530
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 1531
    :catch_0
    move-exception v6

    .line 1534
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Exception thrown making visibile: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1535
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 1534
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1547
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v12

    if-nez v12, :cond_4

    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v12, :cond_4

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1548
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_1c

    const-string/jumbo v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Showing home: at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_1c
    const/4 v4, 0x1

    goto/16 :goto_4

    .line 1552
    :cond_1d
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_1e

    const-string/jumbo v12, "ActivityManager"

    .line 1553
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Make invisible? "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " finishing="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1554
    const-string/jumbo v14, " state="

    .line 1553
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1554
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1553
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1554
    const-string/jumbo v14, " behindFullscreen="

    .line 1553
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1552
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_1e
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_23

    .line 1558
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_1f

    const-string/jumbo v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Making invisible: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_1f
    const/4 v12, 0x0

    :try_start_2
    invoke-direct {p0, v8, v12}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1561
    invoke-static {}, Lcom/android/server/am/ActivityStack;->-getcom_android_server_am_ActivityStack$ActivityStateSwitchesValues()[I

    move-result-object v12

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_4

    .line 1577
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-ne v12, v8, :cond_21

    .line 1578
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 1590
    :catch_1
    move-exception v6

    .line 1593
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Exception thrown making hidden: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1594
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 1593
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1564
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_4

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_4

    .line 1565
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_20

    const-string/jumbo v12, "ActivityManager"

    .line 1566
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Scheduling invisibility: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1565
    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_20
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_4

    .line 1580
    :cond_21
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_22

    .line 1581
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    :cond_22
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 1597
    :cond_23
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v12, :cond_4

    const-string/jumbo v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Already invisible: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1443
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 1603
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_25
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_26

    .line 1604
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    .line 1603
    if-eqz v12, :cond_26

    .line 1606
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1418
    :cond_26
    return-void

    .line 1507
    .restart local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "activityNdx":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    :catch_2
    move-exception v5

    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_6

    .line 1561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I

    .prologue
    .line 4212
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v9, :cond_2

    .line 4213
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_0

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_1

    :cond_0
    const-string/jumbo v9, "ActivityManager"

    .line 4214
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Skipping config check (will change): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4213
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4215
    :cond_1
    const/4 v9, 0x1

    return v9

    .line 4218
    :cond_2
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_3

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_4

    :cond_3
    const-string/jumbo v9, "ActivityManager"

    .line 4219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Ensuring correct configuration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4218
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4223
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 4224
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_6

    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    if-nez v9, :cond_a

    .line 4225
    :cond_5
    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v9, :cond_a

    .line 4241
    :cond_6
    :goto_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 4242
    .local v2, "newConfig":Landroid/content/res/Configuration;
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v9, v2, :cond_7

    .line 4243
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    if-ne v9, v10, :cond_7

    .line 4244
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v9, :cond_e

    .line 4251
    :cond_7
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_11

    .line 4252
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_8

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_9

    :cond_8
    const-string/jumbo v9, "ActivityManager"

    .line 4253
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Configuration doesn\'t matter in finishing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4252
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    :cond_9
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 4255
    const/4 v9, 0x1

    return v9

    .line 4226
    .end local v2    # "newConfig":Landroid/content/res/Configuration;
    :cond_a
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    .line 4228
    .local v6, "prevFullscreen":Z
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v11, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    if-eqz v9, :cond_c

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v11, v9}, Lcom/android/server/wm/WindowManagerService;->forceStackToFullscreen(IZ)Landroid/content/res/Configuration;

    move-result-object v3

    .line 4229
    .local v3, "newOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->updateOverrideConfiguration(Landroid/content/res/Configuration;)Z

    .line 4230
    if-nez v6, :cond_d

    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    :goto_2
    iput-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    .line 4231
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_b

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_6

    :cond_b
    const-string/jumbo v9, "ActivityManager"

    .line 4232
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Updated stack config to support task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4233
    const-string/jumbo v11, " resizeable="

    .line 4232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4233
    iget-boolean v11, v8, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    .line 4232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4234
    const-string/jumbo v11, " mForcedFullscreen="

    .line 4232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4234
    iget-boolean v11, p0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    .line 4232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4235
    const-string/jumbo v11, " prevFullscreen="

    .line 4232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4236
    const-string/jumbo v11, " mFullscreen="

    .line 4232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4236
    iget-boolean v11, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    .line 4232
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4231
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4228
    .end local v3    # "newOverrideConfig":Landroid/content/res/Configuration;
    :cond_c
    const/4 v9, 0x1

    goto :goto_1

    .line 4230
    .restart local v3    # "newOverrideConfig":Landroid/content/res/Configuration;
    :cond_d
    const/4 v9, 0x0

    goto :goto_2

    .line 4245
    .end local v3    # "newOverrideConfig":Landroid/content/res/Configuration;
    .end local v6    # "prevFullscreen":Z
    .restart local v2    # "newConfig":Landroid/content/res/Configuration;
    :cond_e
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_f

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_10

    :cond_f
    const-string/jumbo v9, "ActivityManager"

    .line 4246
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Configuration unchanged in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4245
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4247
    :cond_10
    const/4 v9, 0x1

    return v9

    .line 4260
    :cond_11
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4261
    .local v4, "oldConfig":Landroid/content/res/Configuration;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    .line 4262
    .local v5, "oldStackOverride":Landroid/content/res/Configuration;
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4263
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iput-object v9, p1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    .line 4269
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7

    .line 4270
    .local v7, "stackChanges":I
    if-nez v7, :cond_15

    .line 4273
    iget v9, v5, Landroid/content/res/Configuration;->orientation:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-eq v9, v10, :cond_12

    .line 4274
    or-int/lit16 v7, v7, 0x80

    .line 4276
    :cond_12
    iget v9, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v9, v10, :cond_13

    .line 4277
    iget v9, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v9, v10, :cond_14

    .line 4278
    :cond_13
    or-int/lit16 v7, v7, 0x400

    .line 4280
    :cond_14
    iget v9, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v9, v10, :cond_15

    .line 4281
    or-int/lit16 v7, v7, 0x800

    .line 4284
    :cond_15
    invoke-virtual {v4, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v9

    or-int v0, v9, v7

    .line 4285
    .local v0, "changes":I
    if-nez v0, :cond_16

    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v9, :cond_1a

    .line 4293
    :cond_16
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_17

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v9, :cond_1d

    .line 4294
    :cond_17
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_18

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_19

    :cond_18
    const-string/jumbo v9, "ActivityManager"

    .line 4295
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Configuration doesn\'t matter not running "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4294
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    :cond_19
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 4297
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4298
    const/4 v9, 0x1

    return v9

    .line 4286
    :cond_1a
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_1b

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_1c

    :cond_1b
    const-string/jumbo v9, "ActivityManager"

    .line 4287
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Configuration no differences in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4286
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    :cond_1c
    const/4 v9, 0x1

    return v9

    .line 4302
    :cond_1d
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_1e

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_1f

    :cond_1e
    const-string/jumbo v9, "ActivityManager"

    .line 4303
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Checking to restart "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": changed=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4304
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 4303
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4304
    const-string/jumbo v11, ", handles=0x"

    .line 4303
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4305
    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 4303
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 4305
    const-string/jumbo v11, ", newConfig="

    .line 4303
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4302
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4307
    :cond_1f
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    not-int v9, v9

    and-int/2addr v9, v0

    if-nez v9, :cond_20

    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v9, :cond_2d

    .line 4309
    :cond_20
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v9, v0

    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4310
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v9, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4311
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4312
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_21

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v9, :cond_24

    .line 4313
    :cond_21
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_22

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_23

    :cond_22
    const-string/jumbo v9, "ActivityManager"

    .line 4314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Config is destroying non-running "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4313
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    :cond_23
    const-string/jumbo v9, "config"

    const/4 v10, 0x1

    invoke-virtual {p0, p1, v10, v9}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 4342
    :goto_3
    const/4 v9, 0x0

    return v9

    .line 4316
    :cond_24
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_27

    .line 4320
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_25

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_26

    :cond_25
    const-string/jumbo v9, "ActivityManager"

    .line 4321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Config is skipping already pausing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4320
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    :cond_26
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 4323
    const/4 v9, 0x1

    return v9

    .line 4324
    :cond_27
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_2a

    .line 4329
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_28

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_29

    :cond_28
    const-string/jumbo v9, "ActivityManager"

    .line 4330
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Config is relaunching resumed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4329
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4331
    :cond_29
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 4332
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_3

    .line 4334
    :cond_2a
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v9, :cond_2b

    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_2c

    :cond_2b
    const-string/jumbo v9, "ActivityManager"

    .line 4335
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Config is relaunching non-resumed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4334
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4336
    :cond_2c
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 4337
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto/16 :goto_3

    .line 4349
    :cond_2d
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_2f

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_2f

    .line 4351
    :try_start_0
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_2e

    const-string/jumbo v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sending new config to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    :cond_2e
    if-eqz v7, :cond_30

    .line 4353
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 4354
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    new-instance v11, Landroid/content/res/Configuration;

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v11, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4353
    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4368
    :cond_2f
    :goto_4
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 4370
    const/4 v9, 0x1

    return v9

    .line 4358
    :cond_30
    :try_start_1
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v9, :cond_31

    .line 4359
    const-string/jumbo v9, "ActivityManager"

    const-string/jumbo v10, "mOverrideConfig can not be used"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    :cond_31
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 4362
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v11, 0x0

    .line 4361
    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 4364
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v10, 0x0

    .line 660
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 661
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 662
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 666
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_5

    .line 667
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 669
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x0

    .line 670
    .local v3, "notCurrentUserTask":Z
    :goto_1
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 672
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 673
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 674
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_3

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_3

    .line 672
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 669
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "notCurrentUserTask":Z
    goto :goto_1

    .line 677
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_1

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v7, :cond_1

    .line 678
    return-object v4

    .line 666
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 683
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return-object v10
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v13, 0x0

    .line 1276
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1277
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    if-nez v9, :cond_0

    .line 1278
    return-object v13

    .line 1281
    :cond_0
    iget-object v7, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1282
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v7, :cond_1

    .line 1283
    return-object v13

    .line 1286
    :cond_1
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 1288
    .local v8, "stackNdx":I
    iget-object v11, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1289
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 1291
    .local v10, "taskNdx":I
    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1292
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    add-int/lit8 v2, v12, 0x1

    .line 1294
    .local v2, "activityNdx":I
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1295
    .local v5, "numStacks":I
    :goto_0
    if-ge v8, v5, :cond_6

    .line 1296
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1297
    .local v3, "historyStack":Lcom/android/server/am/ActivityStack;
    iget-object v11, v3, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1298
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1299
    .local v6, "numTasks":I
    :goto_1
    if-ge v10, v6, :cond_5

    .line 1300
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/TaskRecord;

    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1301
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1302
    .local v4, "numActivities":I
    :goto_2
    if-ge v2, v4, :cond_4

    .line 1303
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1304
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_3

    .line 1305
    iget-boolean v12, v3, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v12, :cond_2

    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v12, :cond_2

    move-object v1, v13

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v1

    .line 1307
    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1309
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    .line 1310
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1312
    .end local v4    # "numActivities":I
    :cond_5
    const/4 v10, 0x0

    .line 1313
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1316
    .end local v3    # "historyStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "numTasks":I
    :cond_6
    return-object v13
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 20
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 559
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 560
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 561
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 562
    .local v3, "cls":Landroid/content/ComponentName;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 563
    new-instance v3, Landroid/content/ComponentName;

    .end local v3    # "cls":Landroid/content/ComponentName;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .restart local v3    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    .line 566
    .local v16, "userId":I
    if-eqz v7, :cond_3

    const/16 v17, 0x1

    :goto_0
    invoke-virtual {v7}, Landroid/content/Intent;->isDocument()Z

    move-result v18

    and-int v8, v17, v18

    .line 568
    .local v8, "isDocument":Z
    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 570
    :goto_1
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_1

    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Looking for task of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v15, v17, -0x1

    .local v15, "taskNdx":I
    :goto_2
    if-ltz v15, :cond_16

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 573
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 575
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_2

    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Skipping "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ": voice session"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    .line 566
    .end local v8    # "isDocument":Z
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v15    # "taskNdx":I
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 568
    .restart local v8    # "isDocument":Z
    :cond_4
    const/4 v4, 0x0

    .local v4, "documentData":Landroid/net/Uri;
    goto/16 :goto_1

    .line 578
    .end local v4    # "documentData":Landroid/net/Uri;
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v15    # "taskNdx":I
    :cond_5
    iget v0, v11, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 580
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_2

    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Skipping "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ": different user"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 583
    :cond_6
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 584
    .local v10, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_7

    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    iget v0, v10, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 586
    :cond_7
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_2

    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Skipping "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ": mismatch root "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 585
    :cond_8
    iget v0, v10, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 590
    iget-object v13, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 591
    .local v13, "taskIntent":Landroid/content/Intent;
    iget-object v2, v11, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 594
    .local v2, "affinityIntent":Landroid/content/Intent;
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Landroid/content/Intent;->isDocument()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 595
    const/4 v14, 0x1

    .line 596
    .local v14, "taskIsDocument":Z
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 607
    :goto_4
    iget-boolean v0, v11, Lcom/android/server/am/TaskRecord;->isShadow:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isShadow:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 609
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 610
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/content/pm/IPackageManager;->isAppDouble(Ljava/lang/String;)Z

    move-result v9

    .line 611
    .local v9, "isDouble":Z
    if-nez v9, :cond_2

    .line 614
    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "xulei call. close double app , but there is shadow task;"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", target.appInfo.packageName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v9    # "isDouble":Z
    :cond_9
    :goto_5
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_a

    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Comparing existing cls="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 624
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    .line 623
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 625
    const-string/jumbo v19, "/aff="

    .line 623
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 625
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 623
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 625
    const-string/jumbo v19, " to new cls="

    .line 623
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 626
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    .line 623
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 626
    const-string/jumbo v19, "/aff="

    .line 623
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 626
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 623
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_a
    if-nez v8, :cond_b

    if-eqz v14, :cond_10

    .line 632
    :cond_b
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_12

    .line 633
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v17

    if-nez v17, :cond_12

    .line 634
    invoke-static {v4, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    .line 632
    if-eqz v17, :cond_12

    .line 635
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_c

    const-string/jumbo v17, "ActivityManager"

    const-string/jumbo v18, "Found matching class!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_c
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_d

    const-string/jumbo v17, "ActivityManager"

    .line 638
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "For Intent "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " bringing to top: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 637
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_d
    return-object v10

    .line 597
    .end local v14    # "taskIsDocument":Z
    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 598
    const/4 v14, 0x1

    .line 599
    .restart local v14    # "taskIsDocument":Z
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .local v12, "taskDocumentData":Landroid/net/Uri;
    goto/16 :goto_4

    .line 601
    .end local v12    # "taskDocumentData":Landroid/net/Uri;
    .end local v14    # "taskIsDocument":Z
    :cond_f
    const/4 v14, 0x0

    .line 602
    .restart local v14    # "taskIsDocument":Z
    const/4 v12, 0x0

    .local v12, "taskDocumentData":Landroid/net/Uri;
    goto/16 :goto_4

    .line 627
    .end local v12    # "taskDocumentData":Landroid/net/Uri;
    :cond_10
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 628
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 629
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_11

    const-string/jumbo v17, "ActivityManager"

    const-string/jumbo v18, "Found matching affinity!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_11
    return-object v10

    .line 640
    :cond_12
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_15

    .line 641
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v17

    if-nez v17, :cond_15

    .line 642
    invoke-static {v4, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    .line 640
    if-eqz v17, :cond_15

    .line 643
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_13

    const-string/jumbo v17, "ActivityManager"

    const-string/jumbo v18, "Found matching class!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_13
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_14

    const-string/jumbo v17, "ActivityManager"

    .line 646
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "For Intent "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " bringing to top: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 645
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_14
    return-object v10

    .line 648
    :cond_15
    sget-boolean v17, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_2

    const-string/jumbo v17, "ActivityManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Not a match: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 651
    .end local v2    # "affinityIntent":Landroid/content/Intent;
    .end local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "taskIntent":Landroid/content/Intent;
    .end local v14    # "taskIsDocument":Z
    :cond_16
    const/16 v17, 0x0

    return-object v17

    .line 617
    .restart local v2    # "affinityIntent":Landroid/content/Intent;
    .restart local v10    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v13    # "taskIntent":Landroid/content/Intent;
    .restart local v14    # "taskIsDocument":Z
    :catch_0
    move-exception v5

    .local v5, "ex":Landroid/os/RemoteException;
    goto/16 :goto_5
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3113
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3114
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_0

    .line 3115
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3116
    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3121
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return v5

    .line 3119
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const-string/jumbo v4, "request-affinity"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3114
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 3162
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 3163
    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Duplicate finish request for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3164
    const/4 v5, 0x0

    return v5

    .line 3167
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 3168
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3169
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 3170
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 3171
    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/4 v6, 0x4

    aput-object p4, v5, v6

    .line 3169
    const/16 v6, 0x7531

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3173
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v5, :cond_1

    .line 3174
    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACT-AM_FINISH_ACTIVITY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " task:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    :cond_1
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3177
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3178
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    .line 3179
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 3180
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 3184
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3185
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3189
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 3191
    const-string/jumbo v5, "finishActivity"

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3193
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3195
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v5, p1, :cond_b

    .line 3196
    if-gtz v2, :cond_9

    const/4 v1, 0x1

    .line 3197
    .local v1, "endTask":Z
    :goto_0
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v5, :cond_4

    :cond_3
    const-string/jumbo v5, "ActivityManager"

    .line 3198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Prepare close transition: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3197
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_a

    .line 3200
    const/16 v5, 0x9

    .line 3201
    :goto_1
    const/4 v7, 0x0

    .line 3199
    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3204
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3206
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_7

    .line 3207
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finish needs to pause: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    :cond_5
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "ActivityManager"

    .line 3209
    const-string/jumbo v6, "finish() => pause with userLeaving=false"

    .line 3208
    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 3213
    :cond_7
    if-eqz v1, :cond_8

    .line 3214
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 3232
    .end local v1    # "endTask":Z
    :cond_8
    :goto_2
    const/4 v5, 0x0

    return v5

    .line 3196
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "endTask":Z
    goto :goto_0

    .line 3201
    :cond_a
    const/4 v5, 0x7

    goto :goto_1

    .line 3216
    .end local v1    # "endTask":Z
    :cond_b
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_10

    .line 3219
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_c

    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finish not pausing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    :cond_c
    const-string/jumbo v5, "clear"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 3223
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    :goto_3
    return v5

    :cond_d
    const/4 v5, 0x0

    goto :goto_3

    .line 3226
    :cond_e
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :goto_4
    return v5

    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    .line 3229
    :cond_10
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Finish waiting for pause of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 3126
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3127
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_4

    .line 3128
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3129
    const-string/jumbo v2, " who="

    .line 3128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3129
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 3128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3129
    const-string/jumbo v2, " req="

    .line 3128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3129
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    .line 3128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3130
    const-string/jumbo v2, " res="

    .line 3128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3130
    const-string/jumbo v2, " data="

    .line 3128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    :cond_0
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_1

    .line 3132
    if-eqz p3, :cond_1

    .line 3133
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 3136
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_2

    .line 3137
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3138
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3139
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v3, p3

    .line 3137
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3141
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3143
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3150
    :cond_3
    :goto_0
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3151
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3152
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3153
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 3124
    return-void

    .line 3145
    :cond_4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No result destination from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9
    .param p1, "immediately"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3324
    const/4 v2, 0x1

    .line 3325
    .local v2, "noActivitiesInStack":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 3326
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3327
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 3328
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3329
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 3330
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    if-eqz p1, :cond_1

    .line 3333
    :cond_0
    const-string/jumbo v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    invoke-virtual {p0, v3, v8, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 3327
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3325
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3337
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    if-eqz v2, :cond_4

    .line 3338
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 3323
    :cond_4
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 3244
    const/4 v4, 0x2

    if-ne p2, v4, :cond_5

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v4, :cond_5

    .line 3245
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3246
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3247
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v8, :cond_0

    .line 3248
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v7, :cond_4

    .line 3253
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 3255
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v3, :cond_1

    .line 3256
    const-string/jumbo v3, "ActivityManager"

    const-string/jumbo v4, "ACT-IDLE_NOW_MSG from finishCurrentActivityLocked for mStoppingActivities.size() > 3"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ActivityManager"

    .line 3263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Moving to STOPPING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (finish requested)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3262
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    :cond_2
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3265
    if-eqz p3, :cond_3

    .line 3266
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3268
    :cond_3
    return-object p1

    .line 3259
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto :goto_0

    .line 3272
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3273
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3274
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3276
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_6

    .line 3277
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3279
    :cond_6
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3280
    .local v2, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Moving to FINISHING: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    :cond_7
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3284
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v4, :cond_8

    .line 3285
    const-string/jumbo v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prevState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_8
    const/4 v1, 0x1

    .line 3292
    .local v1, "canDestroyHere":Z
    if-ne p2, v8, :cond_9

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_9

    .line 3293
    const/4 v1, 0x0

    .line 3297
    :cond_9
    if-eqz v1, :cond_f

    if-eqz p2, :cond_a

    .line 3298
    if-ne p2, v7, :cond_e

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_e

    .line 3303
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    .line 3304
    const-string/jumbo v4, "finish-imm"

    invoke-virtual {p0, p1, v7, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 3305
    .local v0, "activityRemoved":Z
    if-eqz v0, :cond_b

    .line 3306
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3308
    :cond_b
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "ActivityManager"

    .line 3309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroyActivityLocked: finishCurrentActivityLocked r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3310
    const-string/jumbo v6, " destroy returned removed="

    .line 3309
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3308
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_c
    if-eqz v0, :cond_d

    move-object p1, v3

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_d
    return-object p1

    .line 3299
    .end local v0    # "activityRemoved":Z
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v4, :cond_a

    .line 3300
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v4, :cond_a

    .line 3316
    :cond_f
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v4, :cond_10

    const-string/jumbo v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Enqueueing pending finish: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    :cond_10
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3318
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3319
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3320
    return-object p1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .prologue
    .line 4517
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 4518
    .local v9, "didSomething":Z
    const/4 v11, 0x0

    .line 4519
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    .line 4520
    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .end local v10    # "homeActivity":Landroid/content/ComponentName;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_d

    .line 4521
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4522
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4523
    .local v12, "numActivities":I
    const/4 v8, 0x0

    .local v8, "activityNdx":I
    :goto_1
    if-ge v8, v12, :cond_c

    .line 4524
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4526
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_4

    .line 4527
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 4526
    if-nez v1, :cond_4

    .line 4528
    :cond_0
    if-nez p1, :cond_5

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_5

    const/4 v13, 0x1

    .line 4529
    .local v13, "sameComponent":Z
    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p5

    if-eq v0, v1, :cond_1

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_3

    .line 4530
    :cond_1
    if-nez v13, :cond_2

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v11, :cond_3

    .line 4531
    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_6

    if-nez p4, :cond_6

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v1, :cond_6

    .line 4523
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4526
    .end local v13    # "sameComponent":Z
    :cond_4
    const/4 v13, 0x1

    .restart local v13    # "sameComponent":Z
    goto :goto_2

    .line 4528
    .end local v13    # "sameComponent":Z
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "sameComponent":Z
    goto :goto_2

    .line 4532
    :cond_6
    if-nez p3, :cond_7

    .line 4533
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_3

    .line 4538
    const/4 v1, 0x1

    return v1

    .line 4540
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4541
    if-eqz v10, :cond_8

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4542
    const-string/jumbo v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4545
    :cond_8
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 4548
    :cond_9
    const/4 v9, 0x1

    .line 4549
    const-string/jumbo v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Force finishing activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    if-eqz v13, :cond_b

    .line 4551
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_a

    .line 4552
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 4554
    :cond_a
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4556
    :cond_b
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4557
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v5, "force-stop"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4558
    const/4 v6, 0x1

    move-object v1, p0

    .line 4557
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4560
    add-int/lit8 v12, v12, -0x1

    .line 4561
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 4520
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v13    # "sameComponent":Z
    :cond_c
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 4566
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_d
    return v9
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 9
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3037
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_3

    .line 3038
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3039
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_2

    .line 3040
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3041
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_0

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_0

    .line 3042
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 3044
    :goto_2
    const-string/jumbo v4, "request-sub"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3039
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3043
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3042
    if-eqz v0, :cond_0

    goto :goto_2

    .line 3037
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3050
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3036
    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3054
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3055
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_3

    .line 3058
    const-string/jumbo v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3059
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 3058
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3061
    .local v7, "taskNdx":I
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, "activityNdx":I
    move-object v0, p0

    move-object v4, p2

    move v5, v2

    .line 3062
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3066
    add-int/lit8 v6, v6, -0x1

    .line 3067
    if-gez v6, :cond_0

    .line 3069
    :goto_0
    add-int/lit8 v7, v7, -0x1

    .line 3070
    if-gez v7, :cond_4

    .line 3076
    :cond_0
    if-ltz v6, :cond_3

    .line 3077
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3078
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_1

    .line 3079
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_5

    .line 3081
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v4, :cond_3

    .line 3082
    :cond_2
    const-string/jumbo v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3083
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 3082
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v4, p2

    move v5, v2

    .line 3084
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3053
    .end local v6    # "activityNdx":I
    .end local v7    # "taskNdx":I
    :cond_3
    return-void

    .line 3073
    .restart local v6    # "activityNdx":I
    .restart local v7    # "taskNdx":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 3074
    if-gez v6, :cond_0

    goto :goto_0

    .line 3080
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_3

    goto :goto_1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 11
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3092
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 3093
    .local v8, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    .line 3094
    .local v7, "didOne":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "taskNdx":I
    :goto_0
    if-ltz v9, :cond_2

    .line 3095
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 3096
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v8, :cond_1

    .line 3097
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "activityNdx":I
    :goto_1
    if-ltz v6, :cond_1

    .line 3098
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3099
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 3100
    const-string/jumbo v4, "finish-voice"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3102
    const/4 v7, 0x1

    .line 3097
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3094
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 3107
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    if-eqz v7, :cond_3

    .line 3108
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3091
    :cond_3
    return-void
.end method

.method forceStopShadowPackageLocked(Ljava/lang/String;ZZI)Z
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 4460
    const/4 v9, 0x0

    .line 4461
    .local v9, "didSomething":Z
    const/4 v11, 0x0

    .line 4462
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    .line 4463
    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .end local v10    # "homeActivity":Landroid/content/ComponentName;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_c

    .line 4464
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4465
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4466
    .local v12, "numActivities":I
    const/4 v8, 0x0

    .local v8, "activityNdx":I
    :goto_1
    if-ge v8, v12, :cond_b

    .line 4467
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4468
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4469
    if-nez p1, :cond_4

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_4

    const/4 v13, 0x1

    .line 4470
    .local v13, "samePackage":Z
    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_0

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_2

    .line 4471
    :cond_0
    if-nez v13, :cond_1

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v11, :cond_2

    .line 4472
    :cond_1
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5

    if-nez p3, :cond_5

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v1, :cond_5

    .line 4466
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4468
    .end local v13    # "samePackage":Z
    :cond_3
    const/4 v13, 0x1

    .restart local v13    # "samePackage":Z
    goto :goto_2

    .line 4469
    .end local v13    # "samePackage":Z
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "samePackage":Z
    goto :goto_2

    .line 4474
    :cond_5
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->isShadow:Z

    if-eqz v1, :cond_2

    .line 4477
    if-nez p2, :cond_6

    .line 4478
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_2

    .line 4483
    const/4 v1, 0x1

    return v1

    .line 4486
    :cond_6
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4487
    if-eqz v10, :cond_7

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4488
    const-string/jumbo v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4491
    :cond_7
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 4494
    :cond_8
    const/4 v9, 0x1

    .line 4495
    const-string/jumbo v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Force finishing activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    if-eqz v13, :cond_a

    .line 4497
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_9

    .line 4498
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 4500
    :cond_9
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4502
    :cond_a
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4503
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v5, "force-stop"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4505
    add-int/lit8 v12, v12, -0x1

    .line 4506
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 4463
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v13    # "samePackage":Z
    :cond_b
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 4511
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_c
    return v9
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4829
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4698
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string/jumbo v8, "all"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4699
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_1

    .line 4700
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4699
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 4702
    .end local v6    # "taskNdx":I
    :cond_0
    const-string/jumbo v8, "top"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4703
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 4704
    .local v7, "top":I
    if-ltz v7, :cond_1

    .line 4705
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4706
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 4707
    .local v2, "listTop":I
    if-ltz v2, :cond_1

    .line 4708
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4724
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "listTop":I
    .end local v7    # "top":I
    :cond_1
    return-object v0

    .line 4712
    :cond_2
    new-instance v3, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v3}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 4713
    .local v3, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 4715
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .restart local v6    # "taskNdx":I
    :goto_1
    if-ltz v6, :cond_1

    .line 4716
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "r1$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4717
    .local v4, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4718
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4715
    .end local v4    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method public getStackId()I
    .locals 1

    .prologue
    .line 4849
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTaskHistory()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTasksLocked(Ljava/util/List;IZ)V
    .locals 17
    .param p2, "callingUid"    # I
    .param p3, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 4570
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    move-object/from16 v0, p0

    if-ne v14, v0, :cond_0

    const/4 v5, 0x1

    .line 4571
    .local v5, "focusedStack":Z
    :goto_0
    const/4 v13, 0x1

    .line 4572
    .local v13, "topTask":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v10, v14, -0x1

    .local v10, "taskNdx":I
    :goto_1
    if-ltz v10, :cond_c

    .line 4573
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 4574
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    if-nez v14, :cond_1

    .line 4572
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 4570
    .end local v5    # "focusedStack":Z
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskNdx":I
    .end local v13    # "topTask":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "focusedStack":Z
    goto :goto_0

    .line 4577
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskNdx":I
    .restart local v13    # "topTask":Z
    :cond_1
    const/4 v8, 0x0

    .line 4578
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v12, 0x0

    .line 4580
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .line 4581
    .local v6, "numActivities":I
    const/4 v7, 0x0

    .line 4582
    .local v7, "numRunning":I
    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4583
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_2

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 4586
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v3, v14, -0x1

    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .local v3, "activityNdx":I
    :goto_3
    if-ltz v3, :cond_9

    .line 4587
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .line 4588
    .local v11, "tmp":Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_5

    .line 4586
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 4583
    .end local v3    # "activityNdx":I
    .end local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget v14, v9, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v0, p2

    if-eq v14, v0, :cond_2

    goto :goto_2

    .line 4591
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "activityNdx":I
    .restart local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_5
    move-object v8, v11

    .line 4594
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_6

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v14, v15, :cond_7

    .line 4595
    :cond_6
    move-object v12, v8

    .line 4596
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4600
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 4601
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_8

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_8

    .line 4602
    add-int/lit8 v7, v7, 0x1

    .line 4605
    :cond_8
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v14, :cond_3

    .line 4606
    const-string/jumbo v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4607
    const-string/jumbo v16, ": task="

    .line 4606
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 4607
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    .line 4606
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 4605
    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4610
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_9
    new-instance v4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 4611
    .local v4, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v14, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 4612
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4613
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 4614
    iget-wide v14, v9, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 4615
    if-eqz v5, :cond_a

    if-eqz v13, :cond_a

    .line 4618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 4619
    const/4 v13, 0x0

    .line 4622
    :cond_a
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v14, :cond_b

    .line 4623
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    .line 4625
    :cond_b
    iput v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 4626
    iput v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    .line 4627
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 4569
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v4    # "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "numActivities":I
    .end local v7    # "numRunning":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_c
    return-void
.end method

.method getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 3856
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method goToSleep()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 834
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 838
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    .line 839
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 840
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 841
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 842
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    .line 843
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 840
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 838
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 833
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v7, 0x0

    .line 4664
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    .line 4665
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4666
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 4667
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4668
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_0

    .line 4669
    const-string/jumbo v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Force finishing activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4670
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 4669
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4673
    invoke-virtual {p0, v2, v7, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 4666
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4664
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4663
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    .line 4650
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_2

    .line 4651
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ActivityManager"

    .line 4652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "App died while pausing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4651
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    :cond_1
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 4655
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_3

    .line 4656
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4657
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 4660
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method hasVisibleBehindActivity()Z
    .locals 1

    .prologue
    .line 3846
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->hasVisibleBehindActivity()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isAttached()Z
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isHomeStack()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 517
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 492
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 493
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 497
    if-nez p1, :cond_0

    .line 498
    return-object v2

    .line 500
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 501
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 501
    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 501
    if-eqz v1, :cond_2

    .line 503
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v1, p0, :cond_1

    const-string/jumbo v1, "ActivityManager"

    .line 504
    const-string/jumbo v2, "Illegal state! task does not point to stack it is in."

    .line 503
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_1
    return-object p1

    .line 507
    :cond_2
    return-object v2
.end method

.method final isOnHomeDisplay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 521
    :cond_0
    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 725
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 726
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ActivityManager"

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving to RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (starting new instance)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 729
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 730
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 731
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 733
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 734
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 735
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ActivityManager"

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Launch completed; removing icicle of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 735
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1
    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 6
    .param p1, "homeStackTaskType"    # I

    .prologue
    .line 3985
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 3986
    .local v2, "top":I
    move v1, v2

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 3987
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 3988
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v3, p1, :cond_2

    .line 3989
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "ActivityManager"

    .line 3990
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveHomeStackTaskToTop: moving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3989
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3991
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3992
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3993
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3994
    return-void

    .line 3986
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3984
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 18
    .param p1, "taskId"    # I

    .prologue
    .line 4076
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v13

    .line 4077
    .local v13, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v13, :cond_0

    .line 4078
    const-string/jumbo v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "moveTaskToBack: bad taskId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    const/4 v15, 0x0

    return v15

    .line 4082
    :cond_0
    const-string/jumbo v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "moveTaskToBack: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15, v13}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 4088
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v15, :cond_2

    .line 4089
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4090
    .local v5, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_1

    .line 4091
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4093
    :cond_1
    if-eqz v5, :cond_2

    .line 4095
    const/4 v4, 0x1

    .line 4097
    .local v4, "moveOK":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4102
    .end local v4    # "moveOK":Z
    :goto_0
    if-nez v4, :cond_2

    .line 4103
    const/4 v15, 0x0

    return v15

    .line 4098
    .restart local v4    # "moveOK":Z
    :catch_0
    move-exception v3

    .line 4099
    .local v3, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4100
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_0

    .line 4108
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "moveOK":Z
    .end local v5    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    sget-boolean v15, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v15, :cond_3

    const-string/jumbo v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Prepare to back transition: task="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    :cond_3
    const/4 v9, 0x0

    .line 4115
    .local v9, "prevIsHome":Z
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v15

    if-nez v15, :cond_d

    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v2

    .line 4116
    :goto_1
    if-eqz v2, :cond_4

    .line 4117
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 4118
    .local v6, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_e

    .line 4119
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v15

    invoke-virtual {v6, v15}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4124
    .end local v6    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v15, :cond_5

    .line 4128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Lcom/android/server/am/ActivityStack;)V

    .line 4131
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4135
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4136
    .local v7, "numTasks":I
    const/4 v8, 0x0

    .line 4137
    .local v8, "numValidTasks":I
    const/4 v14, 0x0

    .line 4139
    .local v14, "validTask":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v11, v7, -0x1

    .end local v14    # "validTask":Lcom/android/server/am/TaskRecord;
    .local v11, "taskNdx":I
    :goto_3
    if-ltz v11, :cond_7

    .line 4140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 4141
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    iget-object v15, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    if-eqz v15, :cond_6

    iget-object v15, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 4142
    move-object v14, v10

    .line 4143
    .local v14, "validTask":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v8, v8, 0x1

    .line 4145
    .end local v14    # "validTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 4147
    iget-object v15, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    if-eqz v15, :cond_f

    iget-object v15, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_f

    .line 4148
    sget-boolean v15, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v15, :cond_7

    const-string/jumbo v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Find task "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " over home"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, 0x1

    if-ne v8, v15, :cond_9

    .line 4163
    sget-boolean v15, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v15, :cond_8

    const-string/jumbo v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Single valid task "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4164
    const-string/jumbo v17, ", set over home."

    .line 4163
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4165
    :cond_8
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4169
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0xb

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 4176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4178
    :goto_4
    if-nez v9, :cond_b

    if-ne v10, v13, :cond_a

    if-nez v2, :cond_b

    :cond_a
    const/4 v15, 0x1

    if-gt v7, v15, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 4179
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v15, v15, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v15, v15, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v15, :cond_13

    .line 4183
    :cond_c
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v12

    .line 4184
    .local v12, "taskToReturnTo":I
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v16, "moveTaskToBack"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v12, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v15

    return v15

    .line 4115
    .end local v7    # "numTasks":I
    .end local v8    # "numValidTasks":I
    .end local v11    # "taskNdx":I
    .end local v12    # "taskToReturnTo":I
    :cond_d
    const/4 v2, 0x0

    .local v2, "canGoHome":Z
    goto/16 :goto_1

    .line 4121
    .end local v2    # "canGoHome":Z
    .restart local v6    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 4151
    .end local v6    # "nextTask":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "numTasks":I
    .restart local v8    # "numValidTasks":I
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "taskNdx":I
    :cond_f
    sget-boolean v15, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v15, :cond_10

    const-string/jumbo v15, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Ignore empty task "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4152
    const-string/jumbo v17, " when finding home"

    .line 4151
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    :cond_10
    const/4 v15, 0x1

    if-ne v11, v15, :cond_11

    .line 4158
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4139
    :cond_11
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    .line 4176
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_12
    const/4 v10, 0x0

    .local v10, "task":Lcom/android/server/am/TaskRecord;
    goto :goto_4

    .line 4181
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_13
    const/4 v15, 0x0

    return v15

    .line 4188
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4189
    const/4 v15, 0x1

    return v15
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 10
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4001
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "moveTaskToFront: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    :cond_0
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v4, :cond_1

    .line 4005
    const-string/jumbo v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACT-moveTaskToFront: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4009
    .local v2, "numTasks":I
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4010
    .local v1, "index":I
    if-eqz v2, :cond_2

    if-gez v1, :cond_4

    .line 4012
    :cond_2
    if-eqz p2, :cond_3

    .line 4013
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4017
    :goto_0
    return-void

    .line 4015
    :cond_3
    invoke-virtual {p0, v9, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4020
    :cond_4
    if-eqz p4, :cond_5

    .line 4022
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 4023
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iput-object p4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4022
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4029
    .end local v0    # "i":I
    :cond_5
    invoke-direct {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4032
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4033
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3, p5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 4036
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v4, :cond_6

    .line 4037
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    invoke-virtual {v4, p0}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Lcom/android/server/am/ActivityStack;)V

    .line 4041
    :cond_6
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Prepare to front transition: task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4042
    :cond_7
    if-eqz p2, :cond_a

    .line 4043
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v7, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4044
    if-eqz v3, :cond_8

    .line 4045
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4047
    :cond_8
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4052
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4053
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/16 v5, 0x7532

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4055
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v4, :cond_9

    .line 4056
    const-string/jumbo v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACT-AM_TASK_TO_FRONT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    :cond_9
    return-void

    .line 4049
    :cond_a
    invoke-virtual {p0, v9, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_2
.end method

.method final moveToFront(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_3

    .line 528
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4

    .line 529
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    .line 530
    :goto_0
    const/4 v1, 0x0

    .line 531
    .local v1, "lastFocusStack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_0

    .line 534
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 535
    .local v1, "lastFocusStack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 536
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    .end local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)V

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 544
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_2

    .line 545
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 525
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void

    .line 527
    :cond_3
    const/4 v0, 0x1

    .local v0, "homeStack":Z
    goto :goto_0

    .line 528
    .end local v0    # "homeStack":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "homeStack":Z
    goto :goto_0
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 42
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 3381
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v41, v0

    .line 3382
    .local v41, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 3383
    .local v24, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    .line 3384
    .local v40, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez v40, :cond_1

    .line 3385
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 3387
    :cond_1
    add-int/lit8 v29, v40, -0x1

    .line 3388
    .local v29, "finishTo":I
    if-gez v29, :cond_3

    const/16 v33, 0x0

    .line 3389
    :goto_0
    const/16 v30, 0x0

    .line 3390
    .local v30, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    .line 3391
    .local v26, "dest":Landroid/content/ComponentName;
    if-lez v40, :cond_2

    if-eqz v26, :cond_2

    .line 3392
    move/from16 v31, v29

    .local v31, "i":I
    :goto_1
    if-ltz v31, :cond_2

    .line 3393
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/ActivityRecord;

    .line 3394
    .local v37, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3395
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3394
    if-eqz v2, :cond_4

    .line 3396
    move/from16 v29, v31

    .line 3397
    move-object/from16 v33, v37

    .line 3398
    .local v33, "parent":Lcom/android/server/am/ActivityRecord;
    const/16 v30, 0x1

    .line 3404
    .end local v31    # "i":I
    .end local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v25, v0

    .line 3405
    .local v25, "controller":Landroid/app/IActivityController;
    if-eqz v25, :cond_5

    .line 3406
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .line 3407
    .local v32, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v32, :cond_5

    .line 3409
    const/16 v39, 0x1

    .line 3411
    .local v39, "resumeOK":Z
    :try_start_0
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v39

    .line 3417
    .end local v39    # "resumeOK":Z
    :goto_2
    if-nez v39, :cond_5

    .line 3418
    const/4 v2, 0x0

    return v2

    .line 3388
    .end local v25    # "controller":Landroid/app/IActivityController;
    .end local v26    # "dest":Landroid/content/ComponentName;
    .end local v30    # "foundParentInTask":Z
    .end local v32    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/am/ActivityRecord;

    .restart local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    .line 3392
    .end local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "dest":Landroid/content/ComponentName;
    .restart local v30    # "foundParentInTask":Z
    .restart local v31    # "i":I
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v31, v31, -0x1

    goto :goto_1

    .line 3412
    .end local v31    # "i":I
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "controller":Landroid/app/IActivityController;
    .restart local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "resumeOK":Z
    :catch_0
    move-exception v28

    .line 3413
    .local v28, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 3414
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_2

    .line 3422
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "resumeOK":Z
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 3423
    .local v34, "origId":J
    move/from16 v31, v40

    .end local p4    # "resultData":Landroid/content/Intent;
    .restart local v31    # "i":I
    :goto_3
    move/from16 v0, v31

    move/from16 v1, v29

    if-le v0, v1, :cond_6

    .line 3424
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/am/ActivityRecord;

    .line 3425
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v6, "navigate-up"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3427
    const/16 p3, 0x0

    .line 3428
    const/16 p4, 0x0

    .line 3423
    .local p4, "resultData":Landroid/content/Intent;
    add-int/lit8 v31, v31, -0x1

    goto :goto_3

    .line 3431
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .end local p4    # "resultData":Landroid/content/Intent;
    :cond_6
    if-eqz v33, :cond_8

    if-eqz v30, :cond_8

    .line 3432
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v36, v0

    .line 3433
    .local v36, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v27

    .line 3434
    .local v27, "destIntentFlags":I
    const/4 v2, 0x3

    move/from16 v0, v36

    if-eq v0, v2, :cond_7

    .line 3435
    const/4 v2, 0x2

    move/from16 v0, v36

    if-ne v0, v2, :cond_9

    .line 3438
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3439
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3438
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 3456
    .end local v27    # "destIntentFlags":I
    .end local v36    # "parentLaunchMode":I
    :cond_8
    :goto_4
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3457
    return v30

    .line 3436
    .restart local v27    # "destIntentFlags":I
    .restart local v36    # "parentLaunchMode":I
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_7

    .line 3437
    const/high16 v2, 0x4000000

    and-int v2, v2, v27

    if-nez v2, :cond_7

    .line 3442
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 3443
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    const/4 v5, 0x0

    .line 3442
    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 3444
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 3445
    move-object/from16 v0, v33

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3446
    move-object/from16 v0, v33

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, v33

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 3447
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v16, v0

    .line 3445
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 3446
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 3447
    const/4 v15, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v4, p2

    .line 3444
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v38

    .line 3448
    .local v38, "res":I
    if-nez v38, :cond_a

    const/16 v30, 0x1

    .line 3452
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "res":I
    :goto_5
    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3453
    const-string/jumbo v11, "navigate-top"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 3452
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_4

    .line 3448
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "res":I
    :cond_a
    const/16 v30, 0x0

    goto :goto_5

    .line 3449
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "res":I
    :catch_1
    move-exception v28

    .line 3450
    .restart local v28    # "e":Landroid/os/RemoteException;
    const/16 v30, 0x0

    goto :goto_5
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1638
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    .line 1639
    if-eqz p1, :cond_0

    .line 1640
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1641
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    .line 1639
    if-eqz v3, :cond_2

    .line 1644
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1645
    .local v1, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1646
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1647
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1649
    if-eqz v1, :cond_2

    .line 1650
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 1651
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2

    .line 1653
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 1654
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 1653
    :cond_1
    invoke-interface {v3, v4, v2}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    .end local v1    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-void

    .line 1655
    .restart local v1    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method numActivities()I
    .locals 3

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 381
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 384
    :cond_0
    return v0
.end method

.method numTasks()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 405
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 406
    goto :goto_0
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .locals 2

    .prologue
    .line 4869
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4870
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 4869
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4868
    :cond_0
    return-void
.end method

.method public perfBoostPause()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4911
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-nez v0, :cond_0

    .line 4912
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceWrapper;

    invoke-direct {v0, v1}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 4915
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_2

    .line 4916
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERFSRV:Z

    if-eqz v0, :cond_1

    .line 4917
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "boostDisable(1) cross app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPerfService:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->boostDisable(I)V

    .line 4921
    const-string/jumbo v0, "amPerfBoost"

    const-wide/16 v2, 0x40

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 4910
    :goto_0
    return-void

    .line 4923
    :cond_2
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "perfBoostPause, PerfService is not ready!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/16 v4, 0x6b

    const/4 v2, 0x0

    .line 3811
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3812
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3810
    :cond_0
    :goto_0
    return-void

    .line 3813
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 3816
    return-void

    .line 3818
    :cond_2
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseBackgroundResources activtyDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3819
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3819
    const-string/jumbo v3, " visibleBehind="

    .line 3818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3819
    const-string/jumbo v3, " app="

    .line 3818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3819
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3820
    const-string/jumbo v3, " thread="

    .line 3818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3820
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 3818
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_4

    .line 3823
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3826
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3828
    :cond_4
    const-string/jumbo v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseBackgroundResources: activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " no longer running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->backgroundResourcesReleased()V

    goto/16 :goto_0

    .line 3824
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v11, 0x1

    .line 3629
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Trying to release some activities in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v8

    div-int/lit8 v4, v8, 0x4

    .line 3631
    .local v4, "maxTasks":I
    if-ge v4, v11, :cond_1

    .line 3632
    const/4 v4, 0x1

    .line 3634
    :cond_1
    const/4 v5, 0x0

    .line 3635
    .local v5, "numReleased":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    if-lez v4, :cond_9

    .line 3636
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 3637
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3635
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3640
    :cond_3
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Looking for activities to release in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    :cond_4
    const/4 v3, 0x0

    .line 3642
    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3643
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .local v0, "actNdx":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_8

    .line 3644
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3645
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_7

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3646
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Destroying "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3647
    const-string/jumbo v10, " in state "

    .line 3646
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3647
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3646
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3647
    const-string/jumbo v10, " resumed="

    .line 3646
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3647
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3646
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3648
    const-string/jumbo v10, " pausing="

    .line 3646
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3648
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3646
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 3648
    const-string/jumbo v10, " for reason "

    .line 3646
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    :cond_5
    invoke-virtual {p0, v2, v11, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 3650
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_6

    .line 3652
    add-int/lit8 v0, v0, -0x1

    .line 3654
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 3643
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3657
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_8
    if-lez v3, :cond_2

    .line 3658
    add-int/2addr v5, v3

    .line 3659
    add-int/lit8 v4, v4, -0x1

    .line 3660
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_2

    .line 3662
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 3666
    .end local v0    # "actNdx":I
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "curNum":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_9
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v8, :cond_a

    const-string/jumbo v8, "ActivityManager"

    .line 3667
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Done releasing: did "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " activities"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3666
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3668
    :cond_a
    return v5
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3877
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string/jumbo v8, "mLRUActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3878
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 3879
    const-string/jumbo v8, "mStoppingActivities"

    .line 3878
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3880
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 3881
    const-string/jumbo v8, "mGoingToSleepActivities"

    .line 3880
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3882
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 3883
    const-string/jumbo v8, "mWaitingVisibleActivities"

    .line 3882
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3884
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 3885
    const-string/jumbo v8, "mFinishingActivities"

    .line 3884
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3887
    const/4 v2, 0x0

    .line 3890
    .local v2, "hasVisibleActivities":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    .line 3891
    .local v3, "i":I
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "ActivityManager"

    .line 3892
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from history with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " entries"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3891
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_10

    .line 3894
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    iget-object v0, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3895
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_f

    .line 3896
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3897
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    .line 3898
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "ActivityManager"

    .line 3899
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Record #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": app="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3898
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    :cond_1
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, p1, :cond_8

    .line 3901
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_2

    .line 3902
    const/4 v2, 0x1

    .line 3905
    :cond_2
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_3

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v7, :cond_4

    :cond_3
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_9

    .line 3908
    :cond_4
    const/4 v5, 0x1

    .line 3918
    .local v5, "remove":Z
    :goto_2
    if-eqz v5, :cond_b

    .line 3919
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v7, :cond_5

    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v7, :cond_6

    :cond_5
    const-string/jumbo v7, "ActivityManager"

    .line 3920
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from stack at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3921
    const-string/jumbo v9, ": haveState="

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3921
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3922
    const-string/jumbo v9, " stateNotNeeded="

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3922
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3923
    const-string/jumbo v9, " finishing="

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3923
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3924
    const-string/jumbo v9, " state="

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3924
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3924
    const-string/jumbo v9, " callers="

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3924
    const/4 v9, 0x5

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    .line 3920
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3919
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    :cond_6
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_7

    .line 3926
    const-string/jumbo v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Force removing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": app died, no saved state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 3928
    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 3929
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 3930
    const-string/jumbo v8, "proc died without state saved"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    .line 3927
    const/16 v8, 0x7531

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3931
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_7

    .line 3932
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3949
    :cond_7
    :goto_3
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3950
    if-eqz v5, :cond_8

    .line 3951
    const-string/jumbo v7, "appDied"

    invoke-direct {p0, v4, v7}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3895
    .end local v5    # "remove":Z
    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 3909
    :cond_9
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_a

    .line 3910
    iget-wide v8, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-lez v7, :cond_a

    .line 3913
    const/4 v5, 0x1

    .line 3910
    .restart local v5    # "remove":Z
    goto/16 :goto_2

    .line 3916
    .end local v5    # "remove":Z
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "remove":Z
    goto/16 :goto_2

    .line 3938
    :cond_b
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v7, :cond_c

    const-string/jumbo v7, "ActivityManager"

    const-string/jumbo v8, "Keeping entry, setting app to null"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    :cond_c
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v7, :cond_d

    const-string/jumbo v7, "ActivityManager"

    .line 3940
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Clearing app during removeHistory for activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3939
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    :cond_d
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3942
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 3943
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_7

    .line 3944
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v7, :cond_e

    const-string/jumbo v7, "ActivityManager"

    .line 3945
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "App died, clearing saved state of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3944
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    :cond_e
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_3

    .line 3893
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "remove":Z
    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 3957
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_10
    return v2
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4750
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V

    .line 4749
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notMoving"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 4761
    if-eqz p3, :cond_0

    .line 4762
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 4763
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->removeTask(I)V

    .line 4766
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4767
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_1

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v8, p1, :cond_1

    .line 4768
    iput-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4771
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4772
    .local v6, "taskNdx":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 4773
    .local v7, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-eqz v8, :cond_2

    if-ge v6, v7, :cond_2

    .line 4774
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4775
    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-nez v8, :cond_2

    .line 4776
    invoke-virtual {v3, v10}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4779
    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4780
    invoke-virtual {p0, p1, v10}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4782
    if-eqz p3, :cond_5

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4783
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_a

    const/4 v1, 0x1

    .line 4784
    .local v1, "isVoiceSession":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 4786
    :try_start_0
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9, v10}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4790
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v1, :cond_5

    .line 4793
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v8, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    .line 4794
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 4798
    .end local v1    # "isVoiceSession":Z
    :cond_5
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4799
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeTask: removing stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v4, 0x0

    .line 4801
    .local v4, "notHomeStack":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4802
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " leftTaskHistoryEmpty"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4803
    .local v2, "myReason":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v8, :cond_c

    invoke-direct {p0, v11, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 4807
    .end local v2    # "myReason":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    .line 4808
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4809
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4811
    :cond_8
    if-eqz v4, :cond_9

    .line 4812
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 4816
    .end local v4    # "notHomeStack":Z
    :cond_9
    iput-object v11, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4760
    return-void

    .line 4783
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "isVoiceSession":Z
    goto/16 :goto_0

    .line 4800
    .end local v1    # "isVoiceSession":Z
    :cond_b
    const/4 v4, 0x1

    .restart local v4    # "notHomeStack":Z
    goto :goto_2

    .line 4804
    .restart local v2    # "myReason":Ljava/lang/String;
    :cond_c
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    goto :goto_3

    .line 4787
    .end local v2    # "myReason":Ljava/lang/String;
    .end local v4    # "notHomeStack":Z
    .restart local v1    # "isVoiceSession":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2998
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2999
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ActivityManager"

    .line 3000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Finishing activity token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3001
    const-string/jumbo v3, ", result="

    .line 3000
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3001
    const-string/jumbo v3, ", data="

    .line 3000
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3002
    const-string/jumbo v3, ", reason="

    .line 3000
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2999
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    :cond_1
    if-nez v1, :cond_2

    .line 3004
    return v4

    .line 3008
    :cond_2
    const-string/jumbo v0, "app-request"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3009
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3008
    if-eqz v0, :cond_3

    .line 3010
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.android.internal.app.ChooserActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3008
    if-eqz v0, :cond_3

    .line 3011
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3012
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3013
    .local v7, "index":I
    if-lez v7, :cond_3

    .line 3014
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 3015
    .local v8, "prevAct":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v2, :cond_3

    .line 3018
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 3020
    .local v9, "topAct":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_3

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v2, :cond_3

    .line 3021
    iget-wide v2, v8, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 3022
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v2, :cond_3

    .line 3023
    const-string/jumbo v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set previous process="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 3025
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v8, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v2, v0, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "index":I
    .end local v8    # "prevAct":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "topAct":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 3032
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3033
    const/4 v0, 0x1

    return v0
.end method

.method final resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 29
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .prologue
    .line 2507
    const/16 v28, 0x0

    .line 2509
    .local v28, "topOptions":Landroid/app/ActivityOptions;
    const/16 v21, -0x1

    .line 2510
    .local v21, "replyChainEnd":I
    const/4 v12, 0x1

    .line 2514
    .local v12, "canMoveOptions":Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2515
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2516
    .local v20, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v22

    .line 2517
    .local v22, "rootActivityNdx":I
    add-int/lit8 v17, v20, -0x1

    .end local v28    # "topOptions":Landroid/app/ActivityOptions;
    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 2518
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .line 2519
    .local v25, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .line 2671
    .end local v25    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-object v28

    .line 2522
    .restart local v25    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v16, v0

    .line 2524
    .local v16, "flags":I
    and-int/lit8 v2, v16, 0x2

    if-eqz v2, :cond_7

    const/4 v15, 0x1

    .line 2526
    .local v15, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v16, 0x40

    if-eqz v2, :cond_8

    const/4 v10, 0x1

    .line 2528
    .local v10, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_9

    const/4 v13, 0x1

    .line 2530
    .local v13, "clearWhenTaskReset":Z
    :goto_3
    if-nez v15, :cond_2

    .line 2531
    if-eqz v13, :cond_a

    .line 2542
    :cond_2
    if-nez v15, :cond_3

    .line 2543
    if-eqz v13, :cond_c

    .line 2616
    :cond_3
    if-nez p2, :cond_4

    if-nez v15, :cond_4

    if-eqz v13, :cond_1e

    .line 2622
    :cond_4
    if-eqz v13, :cond_18

    .line 2626
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    .line 2634
    .local v14, "end":I
    :goto_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2635
    .local v19, "nowActivities":I
    move/from16 v0, v19

    if-lt v14, v0, :cond_5

    .line 2636
    const-string/jumbo v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetTargetTaskIfNeededLocked: activity may have been removed, original activities num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2637
    const-string/jumbo v5, " now activities num = "

    .line 2636
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    add-int/lit8 v14, v19, -0x1

    .line 2641
    :cond_5
    move/from16 v18, v12

    .line 2642
    .local v18, "noOptions":Z
    move/from16 v23, v17

    .end local v18    # "noOptions":Z
    .local v23, "srcPos":I
    :goto_5
    move/from16 v0, v23

    if-gt v0, v14, :cond_1d

    .line 2643
    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2644
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1a

    .line 2642
    :cond_6
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 2524
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "allowTaskReparenting":Z
    .end local v13    # "clearWhenTaskReset":Z
    .end local v14    # "end":I
    .end local v15    # "finishOnTaskLaunch":Z
    .end local v19    # "nowActivities":I
    .end local v23    # "srcPos":I
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "finishOnTaskLaunch":Z
    goto :goto_1

    .line 2526
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "allowTaskReparenting":Z
    goto :goto_2

    .line 2528
    :cond_9
    const/4 v13, 0x0

    .restart local v13    # "clearWhenTaskReset":Z
    goto :goto_3

    .line 2532
    :cond_a
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_2

    .line 2539
    if-gez v21, :cond_b

    .line 2540
    move/from16 v21, v17

    .line 2517
    :cond_b
    :goto_7
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_0

    .line 2542
    :cond_c
    if-eqz v10, :cond_3

    .line 2545
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2546
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2556
    :cond_d
    const/4 v11, 0x0

    .line 2557
    :goto_8
    if-eqz v11, :cond_10

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 2558
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2557
    if-eqz v2, :cond_10

    .line 2562
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v26, v0

    .line 2563
    .local v26, "targetTask":Lcom/android/server/am/TaskRecord;
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start pushing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2564
    const-string/jumbo v5, " out to bottom task "

    .line 2563
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2564
    iget-object v5, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2563
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_e
    :goto_9
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v27, v0

    .line 2574
    .local v27, "targetTaskId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v27

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    .line 2576
    move/from16 v18, v12

    .line 2577
    .restart local v18    # "noOptions":Z
    if-gez v21, :cond_11

    move/from16 v24, v17

    .line 2578
    .local v24, "start":I
    :goto_a
    move/from16 v23, v24

    .end local v18    # "noOptions":Z
    .restart local v23    # "srcPos":I
    :goto_b
    move/from16 v0, v23

    move/from16 v1, v17

    if-lt v0, v1, :cond_17

    .line 2582
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v23

    if-lt v0, v2, :cond_12

    .line 2583
    move-object/from16 v3, v25

    .line 2588
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :goto_c
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_13

    .line 2578
    :goto_d
    add-int/lit8 v23, v23, -0x1

    goto :goto_b

    .line 2556
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "srcPos":I
    .end local v24    # "start":I
    .end local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v27    # "targetTaskId":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .local v11, "bottom":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_8

    .line 2566
    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 2567
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    .line 2566
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v26

    .line 2568
    .restart local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 2569
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start pushing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2570
    const-string/jumbo v5, " out to new task "

    .line 2569
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2570
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2569
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 2577
    .restart local v18    # "noOptions":Z
    .restart local v27    # "targetTaskId":I
    :cond_11
    move/from16 v24, v21

    .restart local v24    # "start":I
    goto :goto_a

    .line 2585
    .end local v18    # "noOptions":Z
    .restart local v23    # "srcPos":I
    :cond_12
    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    goto :goto_c

    .line 2592
    :cond_13
    const/4 v12, 0x0

    .line 2593
    if-eqz v18, :cond_14

    if-nez v28, :cond_14

    .line 2594
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v28

    .line 2595
    .local v28, "topOptions":Landroid/app/ActivityOptions;
    if-eqz v28, :cond_14

    .line 2596
    const/16 v18, 0x0

    .line 2599
    .end local v28    # "topOptions":Landroid/app/ActivityOptions;
    :cond_14
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_15

    const-string/jumbo v2, "ActivityManager"

    .line 2600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " adding to task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2601
    const-string/jumbo v5, " Callers="

    .line 2600
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2601
    const/4 v5, 0x4

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    .line 2600
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2599
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :cond_15
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "ActivityManager"

    .line 2603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pushing next activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " out to target\'s task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2602
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2605
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    .line 2607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v27

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    goto/16 :goto_d

    .line 2610
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 2615
    const/16 v21, -0x1

    .line 2546
    goto/16 :goto_7

    .line 2627
    .end local v23    # "srcPos":I
    .end local v24    # "start":I
    .end local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v27    # "targetTaskId":I
    :cond_18
    if-gez v21, :cond_19

    .line 2628
    move/from16 v14, v17

    .restart local v14    # "end":I
    goto/16 :goto_4

    .line 2630
    .end local v14    # "end":I
    :cond_19
    move/from16 v14, v21

    .restart local v14    # "end":I
    goto/16 :goto_4

    .line 2647
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v19    # "nowActivities":I
    .restart local v23    # "srcPos":I
    :cond_1a
    const/4 v12, 0x0

    .line 2648
    if-eqz v18, :cond_1b

    if-nez v28, :cond_1b

    .line 2649
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v28

    .line 2650
    .restart local v28    # "topOptions":Landroid/app/ActivityOptions;
    if-eqz v28, :cond_1b

    .line 2651
    const/16 v18, 0x0

    .line 2654
    .end local v28    # "topOptions":Landroid/app/ActivityOptions;
    :cond_1b
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "ActivityManager"

    .line 2655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetTaskIntendedTask: calling finishActivity on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2654
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_1c
    const-string/jumbo v6, "reset-task"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 2656
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2658
    add-int/lit8 v14, v14, -0x1

    .line 2659
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_6

    .line 2662
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_1d
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 2667
    .end local v14    # "end":I
    .end local v19    # "nowActivities":I
    .end local v23    # "srcPos":I
    :cond_1e
    const/16 v21, -0x1

    goto/16 :goto_7
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2808
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    .line 2816
    .local v4, "forceReset":Z
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2817
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_0

    .line 2818
    const-string/jumbo v0, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resetTaskIfNeedLocked taskTop="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " newA="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_0
    const/4 v3, 0x0

    .line 2825
    .local v3, "taskFound":Z
    const/4 v9, 0x0

    .line 2828
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    .line 2830
    .local v5, "reparentInsertionPoint":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_3

    .line 2831
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 2833
    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v1, v2, :cond_2

    .line 2834
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 2835
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v3, 0x1

    .line 2830
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2808
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskFound":Z
    .end local v4    # "forceReset":Z
    .end local v5    # "reparentInsertionPoint":I
    .end local v6    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "forceReset":Z
    goto :goto_0

    .restart local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskFound":Z
    .restart local v5    # "reparentInsertionPoint":I
    .restart local v6    # "i":I
    :cond_2
    move-object v0, p0

    .line 2837
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v5

    goto :goto_2

    .line 2842
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2843
    .local v7, "taskNdx":I
    if-ltz v7, :cond_5

    .line 2845
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 2846
    if-nez p1, :cond_4

    if-ltz v8, :cond_4

    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_3

    .end local v7    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :cond_4
    move v7, v8

    .line 2849
    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    :cond_5
    if-eqz v9, :cond_6

    .line 2852
    if-eqz p1, :cond_7

    .line 2853
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2859
    :cond_6
    :goto_4
    return-object p1

    .line 2855
    :cond_7
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    goto :goto_4
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 4728
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4732
    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 4733
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4734
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 4735
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 4736
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4737
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4738
    if-eqz v3, :cond_0

    if-ne v0, v3, :cond_0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_0

    .line 4739
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4740
    const/16 v6, 0x100

    .line 4739
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4734
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4732
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4746
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_2
    return-object v3
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1703
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v1, :cond_0

    .line 1705
    return v3

    .line 1708
    :cond_0
    const/4 v0, 0x0

    .line 1711
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 1712
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    if-ne v1, v4, :cond_1

    .line 1713
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    .line 1714
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 1716
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1718
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 1720
    return v0

    .line 1717
    .local v0, "result":Z
    :catchall_0
    move-exception v1

    .line 1718
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 1717
    throw v1
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3617
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3618
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ActivityManager"

    .line 3619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3620
    const-string/jumbo v2, " pausing="

    .line 3619
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3620
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3619
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3620
    const-string/jumbo v2, " for reason "

    .line 3619
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3618
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 3623
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3577
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3578
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3579
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3576
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 850
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screenshotActivities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v2, :cond_2

    .line 852
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ActivityManager"

    const-string/jumbo v3, "\tNo display"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1
    return-object v5

    .line 857
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "com.android.systemui"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 860
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ActivityManager"

    const-string/jumbo v3, "\tHome stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_3
    return-object v5

    .line 864
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v2, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    .line 865
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v2, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    .line 866
    .local v0, "h":I
    if-lez v1, :cond_6

    .line 867
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ActivityManager"

    const-string/jumbo v3, "\tTaking screenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v6, v1, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 871
    :cond_6
    const-string/jumbo v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid thumbnail dimensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-object v5
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 2865
    if-lez p1, :cond_0

    .line 2866
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2867
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p6

    .line 2866
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 2870
    :cond_0
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send activity result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2871
    const-string/jumbo v2, " : who="

    .line 2870
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2871
    const-string/jumbo v2, " req="

    .line 2870
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2872
    const-string/jumbo v2, " res="

    .line 2870
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2872
    const-string/jumbo v2, " data="

    .line 2870
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 2875
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2876
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2878
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2879
    return-void

    .line 2880
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_0
    move-exception v6

    .line 2881
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v0, p2

    move-object v1, v8

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 2885
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2863
    return-void
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const-wide/16 v2, 0x0

    .line 755
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 757
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 758
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    .line 759
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 762
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    .line 763
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    goto :goto_0
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3850
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3851
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3849
    :cond_0
    return-void
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3345
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 3347
    :cond_0
    return v4

    .line 3346
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3353
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3354
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v2

    .line 3353
    if-eqz v2, :cond_5

    .line 3356
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3358
    return v4

    .line 3361
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3362
    .local v1, "taskIdx":I
    if-gtz v1, :cond_3

    .line 3363
    const-string/jumbo v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    return v5

    .line 3366
    :cond_3
    if-nez v1, :cond_4

    .line 3368
    return v4

    .line 3370
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 3371
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3373
    return v4

    .line 3376
    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskIdx":I
    :cond_5
    return v5
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 24
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2293
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    .line 2294
    .local v18, "rTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    .line 2296
    .local v22, "taskId":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    .line 2300
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2303
    :cond_1
    const/16 v21, 0x0

    .line 2304
    .local v21, "task":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_9

    .line 2306
    const/16 v20, 0x1

    .line 2307
    .local v20, "startIt":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    .end local v21    # "task":Lcom/android/server/am/TaskRecord;
    .local v23, "taskNdx":I
    :goto_0
    if-ltz v23, :cond_9

    .line 2308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/TaskRecord;

    .line 2309
    .local v21, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3

    .line 2307
    :cond_2
    :goto_1
    add-int/lit8 v23, v23, -0x1

    goto :goto_0

    .line 2313
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_8

    .line 2317
    if-nez v20, :cond_9

    .line 2318
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2319
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    .line 2318
    invoke-static {v3, v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2320
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2321
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_5

    .line 2324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Lcom/android/server/am/ActivityStack;)V

    .line 2327
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2328
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 2329
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    .line 2330
    :goto_2
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    .line 2331
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2327
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2335
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2336
    return-void

    .line 2329
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 2330
    :cond_7
    const/4 v13, 0x0

    goto :goto_3

    .line 2339
    :cond_8
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v3, :cond_2

    .line 2340
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 2351
    .end local v20    # "startIt":Z
    .end local v21    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :cond_9
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_a

    .line 2352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2353
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_a

    const-string/jumbo v3, "ActivityManager"

    .line 2354
    const-string/jumbo v4, "startActivity() behind front, mUserLeaving=false"

    .line 2353
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    .line 2360
    .restart local v21    # "task":Lcom/android/server/am/TaskRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_b

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to stack to task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2361
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "here"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    .line 2360
    invoke-static {v3, v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2362
    :cond_b
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2363
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 2365
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_c

    .line 2368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Lcom/android/server/am/ActivityStack;)V

    .line 2371
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    if-lez v3, :cond_21

    .line 2375
    :cond_d
    move/from16 v19, p2

    .line 2376
    .local v19, "showStartingIcon":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    .line 2377
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v17, :cond_e

    .line 2380
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isShadow:Z

    if-eqz v3, :cond_15

    .line 2381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const v6, 0xc350

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 2382
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xulei call startActivityLocked get clone procRecordL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", r.processName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :cond_e
    :goto_4
    if-eqz v17, :cond_f

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_10

    .line 2389
    :cond_f
    const/16 v19, 0x1

    .line 2391
    .end local v19    # "showStartingIcon":Z
    :cond_10
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_11

    const-string/jumbo v3, "ActivityManager"

    .line 2392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prepare open transition: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2391
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    :cond_11
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_16

    .line 2394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2404
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 2405
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 2406
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2407
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_1a

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2404
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2408
    const/4 v15, 0x1

    .line 2409
    .local v15, "doShow":Z
    if-eqz p2, :cond_1c

    .line 2415
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    .line 2416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2417
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_1b

    const/4 v15, 0x1

    .line 2423
    :cond_12
    :goto_8
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_1d

    .line 2426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2427
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2467
    .end local v15    # "doShow":Z
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local p5    # "options":Landroid/os/Bundle;
    :cond_13
    :goto_9
    if-eqz p3, :cond_14

    .line 2468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2292
    :cond_14
    return-void

    .line 2385
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "showStartingIcon":Z
    .restart local p5    # "options":Landroid/os/Bundle;
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_4

    .line 2397
    .end local v19    # "showStartingIcon":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_18

    .line 2398
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_17

    .line 2399
    const/16 v3, 0x10

    .line 2397
    :goto_a
    move/from16 v0, p4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2400
    :cond_17
    const/16 v3, 0x8

    goto :goto_a

    .line 2401
    :cond_18
    const/4 v3, 0x6

    goto :goto_a

    .line 2406
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 2407
    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 2417
    .restart local v15    # "doShow":Z
    :cond_1b
    const/4 v15, 0x0

    goto :goto_8

    .line 2419
    :cond_1c
    if-eqz p5, :cond_12

    new-instance v3, Landroid/app/ActivityOptions;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    .line 2420
    const/4 v4, 0x5

    .line 2419
    if-ne v3, v4, :cond_12

    .line 2421
    const/4 v15, 0x0

    goto :goto_8

    .line 2428
    :cond_1d
    if-eqz v15, :cond_13

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 2434
    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_1e

    .line 2437
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_1f

    .line 2438
    const/16 v16, 0x0

    .line 2445
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2446
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    .line 2447
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2448
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2447
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    .line 2448
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2449
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    .line 2450
    if-eqz v16, :cond_20

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_c
    move/from16 v14, v19

    .line 2445
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 2451
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    goto/16 :goto_9

    .line 2441
    .restart local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_1e

    .line 2442
    const/16 v16, 0x0

    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    goto :goto_b

    .line 2450
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_20
    const/4 v13, 0x0

    goto :goto_c

    .line 2456
    .end local v15    # "doShow":Z
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2457
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    .line 2458
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_22

    const/4 v10, 0x1

    :goto_d
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    .line 2459
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_23

    const/4 v13, 0x1

    :goto_e
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2456
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2460
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2461
    const/16 p5, 0x0

    .local p5, "options":Landroid/os/Bundle;
    goto/16 :goto_9

    .line 2458
    .local p5, "options":Landroid/os/Bundle;
    :cond_22
    const/4 v10, 0x0

    goto :goto_d

    .line 2459
    :cond_23
    const/4 v13, 0x0

    goto :goto_e
.end method

.method final startPausingLocked(ZZZZ)Z
    .locals 11
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Z
    .param p4, "dontWait"    # Z

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 893
    const-string/jumbo v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 894
    const-string/jumbo v3, " state="

    .line 893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 894
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 895
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    .line 893
    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 905
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_2

    .line 906
    if-nez p3, :cond_1

    .line 908
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v2, "Trying to pause when nothing is resumed"

    .line 909
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    .line 908
    invoke-static {v0, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 913
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_3

    .line 918
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V

    .line 921
    :cond_3
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Moving to PAUSING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_4
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 924
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 925
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 926
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 927
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    :cond_5
    move-object v0, v1

    .line 926
    :goto_1
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 928
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 929
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 930
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 931
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 932
    .local v10, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    if-eqz v0, :cond_7

    if-eqz v10, :cond_6

    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_6

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v2, :cond_e

    .line 934
    :cond_6
    :goto_2
    const-string/jumbo v0, "amScreenCapture"

    const-wide/16 v2, 0x1040

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 935
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 936
    const-wide/16 v2, 0x1040

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 940
    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->stopFullyDrawnTraceIfNeeded()V

    .line 942
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 944
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_f

    .line 945
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enqueueing pending pause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_8
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 948
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 949
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 947
    const/16 v2, 0x753d

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 951
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-nez v0, :cond_9

    .line 952
    const-string/jumbo v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACT-AM_PAUSE_ACTIVITY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 955
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 956
    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move v5, p1

    move v7, p4

    .line 955
    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_3
    if-nez p2, :cond_a

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 976
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_14

    .line 981
    if-nez p2, :cond_11

    .line 982
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 987
    :cond_b
    :goto_5
    if-eqz p4, :cond_12

    .line 990
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 991
    const/4 v0, 0x0

    return v0

    .line 922
    .end local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_c
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Start pausing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 927
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 932
    .restart local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_e
    if-eqz p2, :cond_7

    goto/16 :goto_2

    .line 957
    :catch_0
    move-exception v8

    .line 959
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v2, "Exception thrown during pause"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .line 965
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 967
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_3

    .line 973
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    goto :goto_4

    .line 983
    :cond_11
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_b

    .line 984
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v2, "Key dispatch not paused for screen off"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 997
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 998
    .local v9, "msg":Landroid/os/Message;
    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 999
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1001
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v2, "Waiting for pause to complete..."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_13
    const/4 v0, 0x1

    return v0

    .line 1008
    .end local v9    # "msg":Landroid/os/Message;
    :cond_14
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v0, :cond_15

    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v2, "Activity not running, resuming next."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    :cond_15
    if-nez p3, :cond_16

    .line 1010
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1012
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2934
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stopping: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2936
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    .line 2937
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_4

    .line 2938
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2939
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no-history finish of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2941
    const-string/jumbo v4, "stop-no-history"

    move-object v0, p0

    move v5, v2

    .line 2940
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2943
    const-string/jumbo v0, "stopActivityFinished"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2944
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2945
    return-void

    .line 2948
    :cond_3
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not finishing noHistory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2949
    const-string/jumbo v2, " on stop because we\'re just sleeping"

    .line 2948
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_9

    .line 2955
    const-string/jumbo v0, "stopActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2956
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2958
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2959
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ActivityManager"

    .line 2960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Moving to STOPPING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (stop requested)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2959
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    :cond_5
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2962
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ActivityManager"

    .line 2963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stopping visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2962
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    :cond_6
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_7

    .line 2965
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2967
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->reasonIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2970
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 2971
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2972
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 2974
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2975
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2933
    .end local v7    # "msg":Landroid/os/Message;
    :cond_9
    :goto_0
    return-void

    .line 2976
    :catch_0
    move-exception v6

    .line 2980
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ActivityManager"

    const-string/jumbo v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2982
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2983
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stop failed; moving to STOPPED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    :cond_a
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2985
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_9

    .line 2986
    const-string/jumbo v0, "stop-except"

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_0
.end method

.method final switchUserLocked(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 690
    iget v3, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v3, p1, :cond_0

    .line 691
    return-void

    .line 693
    :cond_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 696
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 697
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 698
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 702
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 703
    invoke-virtual {v2, v6}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 704
    :cond_1
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchUserLocked: stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 705
    const-string/jumbo v5, " moving "

    .line 704
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 705
    const-string/jumbo v5, " to top"

    .line 704
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 707
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    if-eqz v3, :cond_3

    .line 710
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackListener:Lcom/android/server/am/ActivityStackListener;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackListener;->dumpStack(Lcom/android/server/am/ActivityStack;)V

    .line 713
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 703
    goto :goto_0

    .line 716
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 482
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 483
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 484
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 485
    return-object v0

    .line 482
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 488
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4855
    const-string/jumbo v1, " stackId="

    .line 4854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4855
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 4854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4855
    const-string/jumbo v1, ", "

    .line 4854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4855
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4855
    const-string/jumbo v1, " tasks}"

    .line 4854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .prologue
    .line 461
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    .line 462
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 463
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 464
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 465
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    .line 466
    return-object v2

    .line 463
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 461
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 470
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .line 443
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 444
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 445
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_1

    .line 443
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 449
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 450
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 452
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 453
    return-object v2

    .line 449
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 457
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 410
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 411
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 412
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 413
    return-object v0

    .line 410
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 416
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v3
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 420
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 421
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 422
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 423
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 424
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 425
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-eqz v5, :cond_1

    .line 423
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 425
    :cond_1
    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 426
    return-object v2

    .line 420
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 430
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 475
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    .line 478
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public unhandledBackLocked()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 4632
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 4633
    .local v8, "top":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Performing unhandledBack(): top activity at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    :cond_0
    if-ltz v8, :cond_1

    .line 4635
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4636
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 4637
    .local v7, "activityTop":I
    if-lez v7, :cond_1

    .line 4638
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4639
    const-string/jumbo v4, "unhandled-back"

    .line 4638
    const/4 v3, 0x0

    .line 4639
    const/4 v5, 0x1

    move-object v0, p0

    .line 4638
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4631
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_1
    return-void
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 512
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    return v0
.end method

.method updateOverrideConfiguration(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4859
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 4860
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    if-nez p1, :cond_0

    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    .end local p1    # "newConfig":Landroid/content/res/Configuration;
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 4864
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    .line 4865
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .prologue
    .line 3973
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    .line 3974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 3978
    if-nez p2, :cond_0

    .line 3979
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 3972
    :cond_0
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 3961
    if-eqz p2, :cond_0

    .line 3962
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3963
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 3964
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 3969
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3960
    return-void

    .line 3966
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 11

    .prologue
    .line 2473
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2474
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2475
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2476
    .local v4, "numTasks":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 2477
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 2478
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2479
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2476
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2482
    :cond_1
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    .line 2483
    .local v2, "group":Lcom/android/server/wm/TaskGroup;
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    .line 2484
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2485
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2486
    .local v3, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2487
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2488
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2491
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "group":Lcom/android/server/wm/TaskGroup;
    .end local v3    # "numActivities":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(ILjava/util/List;)V

    .line 2472
    return-void
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4424
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 4425
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4426
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 4427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4428
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v4, p1, :cond_0

    .line 4429
    return v6

    .line 4431
    :cond_0
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_2

    .line 4426
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4432
    :cond_2
    return v5

    .line 4424
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4436
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4437
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_5

    .line 4438
    return v5

    .line 4440
    :cond_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    :cond_6
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_7

    move v4, v5

    :goto_2
    return v4

    :cond_7
    move v4, v6

    goto :goto_2
.end method
